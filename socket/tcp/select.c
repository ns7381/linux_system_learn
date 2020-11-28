#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <netinet/in.h>
#include <sys/select.h>
#include <ctype.h>

#define MAXLINE 80
#define SERV_PORT 8090
#define MAX_BUFFER_SIZE 128


int ipv4_tcp_create_socket(void) {
    int listen_fd, opt = 1;
    struct sockaddr_in server;
    socklen_t len;

    listen_fd = socket(AF_INET, SOCK_STREAM, 0);
    if (listen_fd < 0) {
        perror("Create socket fail.");
        return -1;
    }
    if ((setsockopt(listen_fd, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof(opt))) < 0) {
        perror("Error, set socket reuse addr failed");
        return -1;
    }

    bzero(&server, sizeof(server));
    server.sin_family = AF_INET;
    server.sin_port = htons(SERV_PORT);
    server.sin_addr.s_addr = htonl(INADDR_ANY);

    len = sizeof(struct sockaddr);
    if (bind(listen_fd, (struct sockaddr *) &server, len) < 0) {
        perror("bind error.");
        return -1;
    }
    listen(listen_fd, 20);
    return listen_fd;
}


int main(void) {
    int listen_fd, sock_fd;
    struct sockaddr_in client;
    socklen_t len;
    int bytes;
    fd_set global_fd_set, current_fd_set;
    int max_fd;
    int i;
    char buf[MAX_BUFFER_SIZE];

    len = sizeof(struct sockaddr_in);

    listen_fd = ipv4_tcp_create_socket();
    FD_ZERO(&global_fd_set);
    FD_SET(listen_fd, &global_fd_set);
    max_fd = listen_fd;

    while (1) {
        current_fd_set = global_fd_set;
        if (select(max_fd + 1, &current_fd_set, NULL, NULL, NULL) < 0) {
            perror("select error.\n");
            return 0;
        }

        for (i = 0; i <= max_fd; i++) {
            if (FD_ISSET(i, &current_fd_set)) {
                if (listen_fd == i) {
                    if ((sock_fd = accept(listen_fd, (struct sockaddr *) &client, (socklen_t *) &len)) < 0) {
                        perror("accept error.\n");
                        return 0;
                    }
                    printf("sock fd: %d\n", sock_fd);
                    FD_CLR(i, &global_fd_set);
                    max_fd = max_fd > sock_fd ? max_fd : sock_fd;
                    FD_SET(sock_fd, &global_fd_set);
                } else {
                    printf("read socket: %d\n", i);
                    bytes = recv(i, buf, MAX_BUFFER_SIZE, 0);
                    if (bytes < 0) {
                        perror("recv error.\n");
                        return 0;
                    }
                    if (bytes == 0) {
                        FD_CLR(i, &global_fd_set);
                        close(i);
                        continue;
                    }
                    printf("buf: %s\n", buf);
                    send(i, buf, strlen(buf), 0);
                }
            }
        }
    }
}
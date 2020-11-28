#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <ctype.h>
#include <signal.h>

#define SERV_PORT 8090
#define MAX_LISTEN_QUE 20
#define MAX_BUFFER_SIZE 128

int ipv4_tcp_create_socket(void) {
    int listenfd, opt = 1;
    struct sockaddr_in server;
    socklen_t len;

    listenfd = socket(AF_INET, SOCK_STREAM, 0);
    if (listenfd < 0) {
        perror("Create socket fail.");
        return -1;
    }
    if ((setsockopt(listenfd, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof(opt))) < 0) {
        perror("Error, set socket reuse addr failed");
        return -1;
    }

    bzero(&server, sizeof(server));
    server.sin_family = AF_INET;
    server.sin_port = htons(SERV_PORT);
    server.sin_addr.s_addr = htonl(INADDR_ANY);

    len = sizeof(struct sockaddr);
    if (bind(listenfd, (struct sockaddr *) &server, len) < 0) {
        perror("bind error.");
        return -1;
    }
    listen(listenfd, MAX_LISTEN_QUE);
    return listenfd;
}

int process_data(int sockfd) {
    int bytes;
    char buf[MAX_BUFFER_SIZE], read_buf[MAX_BUFFER_SIZE];
    memset(read_buf, 0x00, MAX_BUFFER_SIZE);
    memset(buf, 0x00, MAX_BUFFER_SIZE);

    while (1) {
        bytes = recv(sockfd, read_buf, 100, 0);
        if (bytes < 0) {
            printf("read err.\n");
            return -1;
        }
        if (bytes == 0) {
            printf("client connection closed.\n");
            return 0;
        }
        printf("read from client: %s \n", read_buf);

        send(sockfd, read_buf, bytes, 0);

        if (strcmp(read_buf, "q")) {
            return 0;
        }
    }
}

int process_signal(int sig_no) {
    switch (sig_no) {
        case SIGCHLD:
            printf("client exit\n");
            while (waitpid(-1, NULL, WNOHANG) > 0);
            break;
    }
}

int set_signal_handler(void) {
    struct sigaction act, oact;
    act.sa_handler = (void *) process_signal;
    sigemptyset(&act.sa_mask);
    act.sa_flags = 0;
    act.sa_flags |= SA_RESTART;
    if (sigaction(SIGCHLD, &act, &oact) < 0) {
        return -1;
    }
    return 0;
}

int main(void) {
    int listenfd, sockfd;
    struct sockaddr_in client;
    socklen_t len;
    len = sizeof(struct sockaddr);
    char str[INET_ADDRSTRLEN];

    set_signal_handler();

    listenfd = ipv4_tcp_create_socket();

    while (1) {
        sockfd = accept(listenfd, (struct sockaddr *) &client, &len);
        if (sockfd < 0) {
            perror("accept error.");
            return -1;
        }

        printf("sockfd=%d\n", sockfd);
        printf("IP: %s, Port:%d\n", inet_ntop(AF_INET, &client.sin_addr, str, sizeof(str)), ntohs(client.sin_port));
        if (fork() == 0) {
            close(listenfd);
            process_data(sockfd);
            exit(0);
        }
        close(sockfd);
    }
}
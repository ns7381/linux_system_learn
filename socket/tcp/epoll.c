#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <netinet/in.h>
#include <sys/select.h>
#include <ctype.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/epoll.h>
#include <errno.h>

#define MAXLINE 80
#define SERV_PORT 8090
#define MAX_BUFFER_SIZE 128
#define MAX_EVENTS 100

int ipv4_tcp_create_socket(void) {
    int listenfd, opt = 1;
    struct sockaddr_in server, client;
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
    listen(listenfd, 20);

    return listenfd;
}

int process_data(int sockfd) {
    int bytes;
    char buf[100];
    char *s = buf;
    char flag = 1;
    int len;

    while (flag) {
        bytes = recv(sockfd, s, 5, 0);
        if (bytes < 0) {
            if (errno == EAGAIN) {
                printf("no data.\n");
                break;
            }
            perror("recv err:");
            return -1;
        }
        if (bytes == 0) {
            return -2;
        }

        if (bytes == 5) {
            flag = 1;
        } else {
            flag = 0;
        }

        s += bytes;
        len += bytes;
        printf("bytes:%d\n", bytes);
        //sleep(2);
    }
    printf("buf:%s\n", buf);
    send(sockfd, buf, len, 0);

    return 0;
}

int main(int argc, char *argv[]) {
    int listenfd, sockfd;
    int epollfd, fds;
    struct epoll_event ev, events[MAX_EVENTS];
    int i, rv;
    struct sockaddr_in client;
    int len;

    listenfd = ipv4_tcp_create_socket();
    fcntl(listenfd, F_SETFL, O_NONBLOCK);

    len = sizeof(struct sockaddr_in);
    epollfd = epoll_create(MAX_EVENTS);
    if (epollfd < 0) {
        perror("epoll_create err:");
        return -1;
    }
    ev.data.fd = listenfd;
    ev.events = EPOLLIN;
    rv = epoll_ctl(epollfd, EPOLL_CTL_ADD, listenfd, &ev);
    if (rv < 0) {
        perror("epoll_ctl err:");
        return -1;
    }

    while (1) {
        //time_out
        fds = epoll_wait(epollfd, events, MAX_EVENTS, -1);
        if (fds < 0) {
            perror("epoll_wait err:");
            return -1;
        }

        for (i = 0; i < fds; i++) {
            if (events[i].data.fd == listenfd) {
                sockfd = accept(listenfd, (struct sockaddr *) &client, &len);
                if (sockfd < 0) {
                    perror("accept err:");
                    continue;
                }
                ev.data.fd = sockfd;
                ev.events = EPOLLIN | EPOLLET;
                epoll_ctl(epollfd, EPOLL_CTL_ADD, sockfd, &ev);
                continue;
            } else {
                rv = process_data(events[i].data.fd);
                if (rv == -2) {
                    epoll_ctl(epollfd, EPOLL_CTL_DEL, events[i].data.fd, &ev);
                    close(events[i].data.fd);
                    continue;
                }
            }
        }
    }
}
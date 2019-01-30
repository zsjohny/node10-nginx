FROM mhart/alpine-node:10
LABEL MAINTAINER Johny Zheng <shun.johny@gmail.com>

# sync time
RUN apk update && apk add tzdata && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone

# Install Nginx(1.12); some shell scripts use bash and 'npm install' use git
RUN apk add nginx bash git && mkdir /run/nginx

#On raspberry pi use this:
FROM armhf/alpine:latest

#On pc use this:
#FROM alpine:latest

MAINTAINER windcao<windcao@hotmail.com>

ENV TZ "Asia/Shanghai"

LABEL Description="scrapy  work enveriment base on alpine" Version="2.0"

#I use this to upspeed in China
RUN echo "https://mirror.tuna.tsinghua.edu.cn/alpine/latest-stable/main" > /etc/apk/repositories

#ENV TZ=Asia/Shanghai

RUN apk add --update \
    python3-dev \
    py3-pip \
    build-base \
    libxml2-dev \
    libxslt-dev \
    openssl-dev \
    libffi-dev \
    libgcc \
 #   tzdata \
 # && cp -r -f /usr/share/zoneinfo/$TZ /etc/localtime \
 # && apk del tzdata \
  && pip3 install --index https://pypi.tuna.tsinghua.edu.cn/simple incremental \
  && pip3 install --index https://pypi.tuna.tsinghua.edu.cn/simple scrapy \
  && rm -rf /var/cache/apk/*

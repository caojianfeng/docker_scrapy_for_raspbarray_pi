#On raspberry pi use this:
FROM armhf/alpine:latest

#On pc use this:
#FROM alpine:latest

MAINTAINER windcao<windcao@hotmail.com>

ENV TZ "Asia/Beijing"

LABEL Description="scrapy  work enveriment base on alpine" Version="1.0"

#I use this to upspeed in China
#RUN echo "https://mirror.tuna.tsinghua.edu.cn/alpine/latest-stable/main" > /etc/apk/repositories


RUN apk add --update \
    python-dev \
    py-pip \
    build-base \
    libxml2-dev \
    libxslt-dev \
    openssl-dev \
    libffi-dev \
    libgcc \
  && pip install --upgrade pip \
  && pip install incremental \
  && pip install scrapy \
  && rm -rf /var/cache/apk/*

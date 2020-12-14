FROM rust:latest
LABEL MAINTAINER="guaifish@hotmail.com"

COPY ./config /usr/local/cargo/config

RUN  sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list && \
    apt-get clean && apt-get update -qq && \
    apt-get install -y libpq-dev libsqlite3-dev default-libmysqlclient-dev && \
    rm -rf /var/lib/apt/lists/*

RUN cargo install diesel_cli

RUN diesel --version

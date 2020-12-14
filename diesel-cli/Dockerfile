FROM rust:latest
LABEL MAINTAINER="guaifish@hotmail.com"

RUN apt-get clean && apt-get update -qq && \
    apt-get install -y libpq-dev libsqlite3-dev default-libmysqlclient-dev && \
    rm -rf /var/lib/apt/lists/*

# 使用清华 crates.io 镜像
COPY ./config /usr/local/cargo/config

RUN cargo install diesel_cli

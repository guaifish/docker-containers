FROM guaifish/diesel-cli
WORKDIR /app
COPY Cargo.toml Cargo.lock ./
RUN mkdir ./src && \
    echo 'fn main() { println!("Hello, world!"); }' > ./src/main.rs && \
    cargo build && \
    rm -rf ./src && \
    rm -rf ./target/debug/.fingerprint/rocket-demo-*

COPY . .
EXPOSE 8000
RUN cargo build
CMD [ "/app/target/debug/main" ]

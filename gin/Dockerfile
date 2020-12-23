FROM golang:1.15
WORKDIR /app
RUN go env -w GO111MODULE=on && \
    go env -w GOPROXY=https://goproxy.io,direct
COPY go.mod go.sum ./
RUN go mod download

COPY . .
RUN go build
CMD [ "./gin-demo" ]

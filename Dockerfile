FROM golang:1.13.1

EXPOSE 7000

ENV TZ Asia/Shanghai

RUN echo 'Asia/Shanghai' >/etc/timezone

WORKDIR $GOPATH/src/frpc_wxy/cmd/frps

ADD . $GOPATH/src/frpc_wxy

RUN go build -o frps -c frps.ini

ENTRYPOINT  ["./frps"]

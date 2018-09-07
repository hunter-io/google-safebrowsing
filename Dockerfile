FROM golang:1.11-alpine

RUN apk add git ca-certificates

RUN go get github.com/google/safebrowsing/cmd/sbserver

ENTRYPOINT ["sbserver", "-srvaddr", "0.0.0.0:80"]

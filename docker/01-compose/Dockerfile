FROM golang:1.19.8-bullseye

WORKDIR /app

COPY main.go .

RUN go build -o server main.go

ENTRYPOINT ["/app/server"]

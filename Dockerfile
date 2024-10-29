FROM golang:1.22.7

WORKDIR /app
COPY src/ /app

RUN go build -o main .

ENTRYPOINT ["/app/main"]

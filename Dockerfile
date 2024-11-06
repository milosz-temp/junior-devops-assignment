FROM golang:1.22.7

WORKDIR /app
COPY src/ /app
COPY .env /app

RUN go build -o main .

ENTRYPOINT ["/app/main"]

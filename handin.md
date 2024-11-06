# Part 1: Required Tasks

## 1. Get the project running in containers

Two main commands are used:
```bash
docker build -t chat-app .
docker run -p 8080:80 chat-app
```

Initially, running them resulted in an error message:
```
2024/11/06 18:37:41 open .env: no such file or directory
panic: invalid redis URL scheme: 

goroutine 1 [running]:
main.main()
	/app/main.go:155 +0x399
```
It was caused by the following line in `main.go`:
```go
redisURL := os.Getenv("REDIS_URL")
```
which was trying to access the `REDIS_URL` environment variable. The solution was to include the default `REDIS_URL=redis://redis:6379` in the .env file, as well as copy this file into the container using the Dockerfile:
```Dockerfile
COPY .env /app
```
This solved the issue, and the page matched the reference page. Of course, trying to send any data on the website resulted in a an error:
```bash
2024/11/06 18:45:19 error: Key: 'ChatMessage.Text' Error:Field validation for 'Text' failed on the 'required' tag
```

## 2. Configure and run the project with all dependencies using Docker Compose

After setting environment variables in `.env` to the following:
```Dockerfile
HOST_PORT = 8080
PORT = 80 # container's port
REDIS_URL = redis://redis:6379
```
The `docker-compose.yml` was updated accordingly:
```yml
services:
  web:
    build: .
    ports:
      - "${HOST_PORT}:${PORT}"
    environment:
      - REDIS_URL=${REDIS_URL}

  redis:
    image: redis:latest
```
The redis service was added using the `redis:latest` image because the application relies on Redis.
Now, running the command `docker compose up` yielded a working solution.

![](images/sol_chat.png)
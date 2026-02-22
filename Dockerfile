FROM golang:1.23

RUN go install github.com/sqlc-dev/sqlc/cmd/sqlc@latest

WORKDIR /app

COPY go.mod ./
RUN go mod download

COPY . .

CMD ["go", "run", "main.go"]

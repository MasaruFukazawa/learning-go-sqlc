.PHONY: up down run generate sqlc-version

up:
	docker compose up -d

down:
	docker compose down

run:
	docker compose run --rm app go run main.go

sqlc-generate:
	docker compose run --rm app sqlc generate

sqlc-version:
	docker compose run --rm app sqlc version

# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Go + sqlc learning project using Docker. SQL schema and queries are written by hand; sqlc generates Go code from them.

## Commands

```bash
make up            # Start PostgreSQL
make down          # Stop everything
make run           # Run the Go app
make sqlc-generate # Generate Go code from SQL
make sqlc-version  # Verify sqlc installation
```

## Architecture

- **sqlc workflow**: Write SQL in `db/schema/` (DDL) and `db/query/` (annotated queries) → run `sqlc generate` → Go code is output to `db/` package
- **sqlc.yaml**: Configures sqlc to read from `db/schema/` and `db/query/`, outputting Go code to `db/` package
- **Docker**: `app` service (Go 1.23 + sqlc) connects to `db` service (PostgreSQL 16) via `DATABASE_URL` env var
- **Database**: PostgreSQL 16, credentials `postgres:postgres`, database name `app`

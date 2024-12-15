from this directory:

## this is how to reset & run the mySQL instance

## DO this entire block to start FRESH
rm -rf ./docker/db/data/*
docker compose -f docker_compose.yml up --build -d
docker ps
bash ./init-mysql.sh

## to *gracefully* pause
docker compose -f docker_compose.yml down

## to restart
docker compose -f docker_compose.yml up --build -d

## this is how to kick off the snippetbox html server app

go run ./cmd/web
go run ./cmd/web -help
go run ./cmd/web >>/tmp/web.log

## see it run
http://localhost:4000/

## resume book at chapter 5 dynamic html templates

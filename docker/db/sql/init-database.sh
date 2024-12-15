#!/usr/bin/env bash

mysql -u root -pBooger1234 myDB < "/docker-entrypoint-initdb.d/000-create-databases.sql"
mysql -u root -pBooger1234 myDB < "/docker-entrypoint-initdb.d/001-create-tables.sql"

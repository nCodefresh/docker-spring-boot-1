#!/bin/sh

wait_for_postgres() {
  nslookup postgres
  if ! nc -z postgres 5432; then
    echo "Waiting for postgres..."
    sleep 5
    wait_for_postgres
  fi
}

wait_for_postgres
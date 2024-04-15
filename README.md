# Infra

This repository contains the infrastructure code for the OpenHeart project.

## Requirements

- Docker
- Docker Compose

## Setup
 1. Clone the repository
 2. Create a password file for the database:
    ```bash
    echo "the_password" > scripts/cassandra/cassandra_password
    ```
 3. Run docker compose to start the services:
    ```bash
    docker-compose up
    ```

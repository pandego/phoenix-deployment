#!/bin/bash

# Source the environment variables from the .env file
if [ -f ".env" ]; then
    echo "Loading environment variables from .env..."
    . ./.env
else
    echo "Error: .env file not found."
    exit 1
fi

# let's launch the Docker Compose 🚀
echo "Launching the Docker Compose... 🐳"
if docker compose --env-file .env up -d --build; then
    echo "Docker Compose launched successfully! 🎉"
else
    echo "Oops! Something went wrong while launching Docker Compose. 😔"
    echo "Please check the logs for more details."
    exit 1
fi
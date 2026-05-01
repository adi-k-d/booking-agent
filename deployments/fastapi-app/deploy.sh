#!/bin/bash

APP_DIR="/home/ec2-user/apps/fastapi-app"

echo "Pulling latest code..."
cd $APP_DIR || exit
git pull origin main

echo "Rebuilding container..."
docker compose down
docker compose up -d --build

echo "Deployment complete!"
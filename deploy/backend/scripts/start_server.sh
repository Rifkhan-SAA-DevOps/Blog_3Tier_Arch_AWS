#!/bin/bash
set -e

echo "Starting backend with PM2"

cd /home/ec2-user/blog-backend

pm2 delete blog-backend || true
pm2 start src/server.js --name blog-backend
pm2 save

echo "Backend started"
#!/bin/bash
set -e

echo "Backend AfterInstall started"

cd /home/ec2-user/blog-backend

if [ ! -f ".env" ]; then
  echo "ERROR: .env file missing in /home/ec2-user/blog-backend"
  echo "Create .env manually first or use SSM/Secrets Manager later."
  exit 1
fi

npm install --omit=dev

echo "Backend AfterInstall completed"
#!/bin/bash
set -e

echo "Validating backend service"

for i in {1..15}; do
  if curl -fsS http://localhost:5000/api/health; then
    echo "Backend validation successful"
    exit 0
  fi

  echo "Waiting for backend..."
  sleep 4
done

echo "Backend validation failed"
pm2 logs blog-backend --lines 30 || true
exit 1
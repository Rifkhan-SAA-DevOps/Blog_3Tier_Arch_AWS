#!/bin/bash
set -e

echo "Validating frontend service"

for i in {1..10}; do
  if curl -fsS http://localhost/health.html; then
    echo "Frontend validation successful"
    exit 0
  fi

  echo "Waiting for frontend..."
  sleep 3
done

echo "Frontend validation failed"
exit 1
#!/bin/bash
set -e

echo "Frontend AfterInstall started"

rm -rf /usr/share/nginx/html/*
cp -r /tmp/blog-frontend-build/* /usr/share/nginx/html/

chown -R nginx:nginx /usr/share/nginx/html || true
chmod -R 755 /usr/share/nginx/html

echo "Frontend AfterInstall completed"
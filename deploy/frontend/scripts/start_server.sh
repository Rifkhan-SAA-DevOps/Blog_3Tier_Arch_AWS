#!/bin/bash
set -e

echo "Starting Nginx"

nginx -t
systemctl start nginx
systemctl reload nginx || systemctl restart nginx

echo "Nginx started"
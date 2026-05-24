#!/bin/bash
set -e

echo "Frontend BeforeInstall started"

systemctl stop nginx || true

rm -rf /tmp/blog-frontend-build
mkdir -p /tmp/blog-frontend-build

echo "Frontend BeforeInstall completed"
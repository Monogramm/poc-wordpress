#!/usr/bin/env bash

cd ..
zip -FSrq "${WP_PLUGIN}" . -x "vendor/*" ".*" "*.md" "docker-compose*"


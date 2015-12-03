#!/bin/bash
set -e

sed -i "s|{{NGINX_HOST}}|$NGINX_HOST|;s|{{NGINX_PROXY}}|$NGINX_PROXY|" \
  /etc/nginx/conf.d/default.conf
cat /etc/nginx/conf.d/default.conf
exec "$@"

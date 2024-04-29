#!/bin/sh
set -e

# Decidim
if [ -f /decidim/tmp/pids/server.pid ]; then
  rm -rf /decidim/tmp/pids/server.pid
fi
exec bundle exec "$@"
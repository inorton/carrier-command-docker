#!/bin/sh
set -eux

xvfb-run -a wine "$INSTALL_LOC/dedicated_server.exe" "$@" 2>&1 | tee "$LOG_LOC/logs/console-$(date +%Y-%m-%d-%H:%M:%S).log"

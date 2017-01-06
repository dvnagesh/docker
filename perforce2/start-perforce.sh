#!/bin/bash
if [ -z "$SERVICE_NAME" ]; then
  SERVICE_NAME=perforce
else
  SERVICE_NAME="$SERVICE_NAME"
fi

if [ -z "$PERF_USER" ]; then
  PERF_USER=perforce
else
  PERF_USER="$PERF_USER"
fi

if [ -z "$PERF_PASS" ]; then
  PERF_PASS="Welcome@123"
else
  PERF_PASS="$PERF_PASS"
fi

chown -R perforce:perforce /opt/perforce/servers/perforce/

/opt/perforce/p4d -r /opt/perforce/servers/perforce/ -L /opt/perforce/servers/perforce/log -p tcp64:[::]:1818 &
tail -f /opt/perforce/servers/perforce/log

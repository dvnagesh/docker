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

sudo chown -R perforce:perforce /opt/perforce/servers/perforce

if [ -f /opt/perforce/servers/perforce/${SERVICE_NAME}.conf ]; then
  sudo cp -p /opt/perforce/servers/perforce/${SERVICE_NAME}.conf /etc/perforce/p4dctl.conf.d/
  /usr/sbin/p4dctl -v 5 start -a
else
  sudo /opt/perforce/sbin/configure-helix-p4d.sh $SERVICE_NAME -n -p tcp46::1818 -r /opt/perforce/servers/perforce -u $PERF_USER -P $PERF_PASS --unicode
  cp -p /etc/perforce/p4dctl.conf.d/${SERVICE_NAME}.conf /opt/perforce/servers/perforce/${SERVICE_NAME}.conf
fi

tail -f /opt/perforce/servers/perforce/log

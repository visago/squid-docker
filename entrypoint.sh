#!/bin/bash
mkdir -p /opt/squid/logs
mkdir -p /opt/squid/spool
chown -R squid.squid /opt/squid
if [[ ! -d /opt/squid/spool/00 ]]; then
    echo "Initializing cache..."
    /usr/sbin/squid -N -f /etc/squid/squid.conf -z
fi
cd /opt/squid/logs
exec /usr/sbin/squid -N -f /etc/squid/squid.conf

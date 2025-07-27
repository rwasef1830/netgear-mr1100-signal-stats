#!/bin/sh
echo "Setting up server in router"
mkdir -p /data/bin
cd /data/bin || exit 1
killall netgear-mr1100-signal-stats >/dev/null 2>&1
rm -rf /var/run/netgear-mr1100-signal-stats.pid
rm -rf ./netgear-mr1100-signal-stats
curl -o netgear-mr1100-signal-stats -k "https://raw.githubusercontent.com/rwasef1830/netgear-mr1100-signal-stats/refs/heads/main/bin/netgear-mr1100-signal-stats"
chmod +x ./netgear-mr1100-signal-stats
cd /etc/init.d || exit 1
rm -rf ./netgear-mr1100-signal-stats
curl -o netgear-mr1100-signal-stats -k "https://raw.githubusercontent.com/rwasef1830/netgear-mr1100-signal-stats/refs/heads/main/init.d/netgear-mr1100-signal-stats"
chmod +x ./netgear-mr1100-signal-stats
update-rc.d netgear-mr1100-signal-stats defaults
./netgear-mr1100-signal-stats start
./netgear-mr1100-signal-stats status

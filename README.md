## Netgear M1 MR1100 Signal Stats server

- This is a simple HTTP server that returns an autorefreshing page with CA stats to help when adjusting and positioning the router and antennas to get the best signal.

- Do not expose the running port in the firewall otherwise the whole world will be able to see your location and signal level. There is no access restriction of any kind. This port should be exposed internally only.

# One-line installer
```
curl -k https://raw.githubusercontent.com/rwasef1830/netgear-mr1100-signal-stats/refs/heads/main/setup.sh | sh
```

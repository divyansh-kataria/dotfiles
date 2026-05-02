#!/bin/bash

set -e

echo "[*] Setting up Quad9 DNS (systemd-resolved + NetworkManager)"

# ---- ROOT CHECK ----
if [ "$EUID" -ne 0 ]; then
  echo "[!] Run as root: sudo ./scripts/dns-setup.sh"
  exit 1
fi

# ---- CONFIGURE systemd-resolved ----
echo "[*] Writing /etc/systemd/resolved.conf"

cat > /etc/systemd/resolved.conf <<EOF
[Resolve]
DNS=9.9.9.9#dns.quad9.net 149.112.112.112#dns.quad9.net 2620:fe::fe#dns.quad9.net 2620:fe::9#dns.quad9.net
FallbackDNS=1.1.1.1#cloudflare-dns.com 2606:4700:4700::1111#cloudflare-dns.com
DNSOverTLS=yes
EOF

# ---- RESTART RESOLVED ----
echo "[*] Restarting systemd-resolved"
systemctl restart systemd-resolved

# ---- CONFIGURE NetworkManager ----
echo "[*] Configuring NetworkManager DNS"

mkdir -p /etc/NetworkManager/conf.d

cat > /etc/NetworkManager/conf.d/dns.conf <<EOF
[main]
dns=systemd-resolved
EOF

# ---- DETECT ACTIVE CONNECTION ----
echo "[*] Detecting active network connection"

conn=$(nmcli -t -f NAME,DEVICE connection show --active | head -n1 | cut -d: -f1)

if [ -z "$conn" ]; then
  echo "[!] No active connection found. Skipping nmcli steps."
else
  echo "[*] Using connection: $conn"

  nmcli connection modify "$conn" ipv4.ignore-auto-dns yes ipv6.ignore-auto-dns yes
  nmcli connection down "$conn"
  nmcli connection up "$conn"
fi

# ---- FIX resolv.conf ----
echo "[*] Linking resolv.conf to systemd-resolved"
ln -sf /run/systemd/resolve/stub-resolv.conf /etc/resolv.conf

# ---- FINAL RESTART ----
echo "[*] Final restart of systemd-resolved"
systemctl restart systemd-resolved

echo "[✓] DNS setup complete"
echo "Run: resolvectl status"

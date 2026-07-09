#!/usr/bin/env bash

set -e

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/utils.sh"

header "Configuring DNS"

if [[ $EUID -ne 0 ]]; then
    die "This script must be run as root."
fi

info "Writing /etc/systemd/resolved.conf"

cat > /etc/systemd/resolved.conf <<EOF
[Resolve]
DNS=1.1.1.1#cloudflare-dns.com 1.0.0.1#cloudflare-dns.com 2606:4700:4700::1111#cloudflare-dns.com 2606:4700:4700::1001#cloudflare-dns.com
FallbackDNS=9.9.9.9#dns.quad9.net 149.112.112.112#dns.quad9.net 2620:fe::fe#dns.quad9.net 2620:fe::9#dns.quad9.net
DNSOverTLS=yes
EOF

info "Restarting systemd-resolved"

systemctl restart systemd-resolved

info "Configuring NetworkManager"

mkdir -p /etc/NetworkManager/conf.d

cat > /etc/NetworkManager/conf.d/dns.conf <<EOF
[main]
dns=systemd-resolved
EOF

info "Detecting active network connection"

CONNECTION=$(nmcli -t -f NAME,DEVICE connection show --active | head -n1 | cut -d: -f1)

if [[ -z "$CONNECTION" ]]; then
    warn "No active connection found. Skipping NetworkManager configuration."
else
    info "Using connection: $CONNECTION"

    nmcli connection modify "$CONNECTION" ipv4.ignore-auto-dns yes ipv6.ignore-auto-dns yes
    nmcli connection down "$CONNECTION"
    nmcli connection up "$CONNECTION"
fi

info "Linking /etc/resolv.conf"

ln -sf /run/systemd/resolve/stub-resolv.conf /etc/resolv.conf

info "Restarting systemd-resolved"

systemctl restart systemd-resolved

success "DNS setup complete."

info "Verify with: resolvectl status"


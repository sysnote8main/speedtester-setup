#!/bin/sh
apt update

echo "CAUTION: This tool only runs on root user."

echo "installing speedtest cli"
apt install curl
curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | bash
apt install speedtest
echo "installed: speedtest cli"

echo "installing pnpm"
wget -qO- https://get.pnpm.io/install.sh | env PNPM_VERSION=10.0.0 sh -
echo "installed: pnpm"

echo "installing node with pnpm"
pnpm env use --global lts
echo "installed: node"
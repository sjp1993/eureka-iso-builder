#!/bin/bash
set -eux

# 1. Install core tools
sudo apt-get update
sudo apt-get install -y flutter dart nodejs npm python3 git squashfs-tools xorriso

# 2. Copy in your assets
sudo mkdir -p /usr/local/share/eureka-os
sudo cp -r /tmp/assets/* /usr/local/share/eureka-os/
sudo rm -rf /tmp/assets

# 3. Clean up
sudo apt-get clean

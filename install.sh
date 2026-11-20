#!/bin/bash
set -e
echo "Restoring PS5 Arch Sway configs..."

# Copy scripts to home and make executable
cp scripts/*.sh ~/
chmod +x ~/*.sh
cp cheatsheet.txt ~/.cheatsheet.txt

# Deploy Sway config
mkdir -p ~/.config/sway
cp sway/config ~/.config/sway/config

# Add terminal alias if missing
if ! grep -q "alias cheat=" ~/.bashrc 2>/dev/null; then
    echo "alias cheat='less -R ~/.cheatsheet.txt'" >> ~/.bashrc
fi

echo "Done! Run 'swaymsg reload' to apply."

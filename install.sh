#!/usr/bin/env bash
set -e

echo "Installing tuxfetch..."

RAW_URL="https://raw.githubusercontent.com/imsoroban/tuxfetch/main/tuxfetch"
INSTALL_PATH="/usr/local/bin/tuxfetch"

if [ -w /usr/local/bin ]; then
    curl -sSL "$RAW_URL" -o "$INSTALL_PATH"
    chmod +x "$INSTALL_PATH"
else
    echo "Requesting administrator privileges to install to /usr/local/bin..."
    sudo curl -sSL "$RAW_URL" -o "$INSTALL_PATH"
    sudo chmod +x "$INSTALL_PATH"
fi

echo "Successfully installed! You can now run 'tuxfetch' from anywhere."

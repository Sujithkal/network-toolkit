#!/bin/bash
echo "==========================="
echo "🧹 Flushing DNS (Linux)"
echo "==========================="

if systemctl is-active --quiet systemd-resolved; then
    echo ">> Restarting systemd-resolved"
    sudo systemctl restart systemd-resolved
elif systemctl is-active --quiet NetworkManager; then
    echo ">> Restarting NetworkManager"
    sudo systemctl restart NetworkManager
else
    echo ">> Your system does not use systemd-resolved or NetworkManager."
    echo ">> You may need to restart the network manually."
fi

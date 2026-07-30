#!/bin/sh
if command -v docker >/dev/null 2>&1; then
    echo "docker already installed"
else
    curl -fsSL https://get.docker.com | sh
    sudo usermod -aG docker "$USER"
    echo "log out/in (or run: newgrp docker) for docker group membership to take effect"
fi

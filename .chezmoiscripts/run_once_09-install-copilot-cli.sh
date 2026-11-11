#!/bin/sh
# GitHub Copilot CLI (standalone binary, no node needed).
# Installs to ~/.local/bin for non-root users; that dir is on PATH via .zshrc.
if command -v copilot >/dev/null 2>&1 || [ -x "$HOME/.local/bin/copilot" ]; then
    echo "copilot already installed"
else
    curl -fsSL https://gh.io/copilot-install | bash
fi

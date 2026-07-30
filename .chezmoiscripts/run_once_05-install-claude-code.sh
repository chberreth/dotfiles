#!/bin/sh
if command -v claude >/dev/null 2>&1; then
    echo "claude already installed"
else
    curl -fsSL https://claude.ai/install.sh | bash
fi

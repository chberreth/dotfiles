#!/bin/sh
# Mobile E2E test runner. Needs Java (see run_once_06-install-java.sh) at
# runtime and $HOME/.maestro/bin on PATH (see dot_zshrc).
if command -v maestro >/dev/null 2>&1; then
    echo "maestro already installed"
else
    curl -Ls "https://get.maestro.mobile.dev" | bash
fi

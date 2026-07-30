#!/bin/sh
# Java runtime required by Maestro CLI (mobile E2E testing).
if command -v java >/dev/null 2>&1; then
    echo "java already installed"
else
    brew install openjdk
fi

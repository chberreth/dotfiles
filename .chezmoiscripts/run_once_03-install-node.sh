#!/bin/sh
if command -v node >/dev/null 2>&1; then
    echo "node already installed"
else
    brew install node
fi

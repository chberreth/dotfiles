#!/bin/sh
# Ensures python3, pip, and pipx are present before any other .chezmoiscripts
# script relies on them. Debian/Ubuntu's python3 package ships without a
# working pip/ensurepip by design (pip/venv are split into separate
# python3-pip/python3-venv packages), so bootstrapping pip/pipx ad hoc inside
# each script that happens to need them is fragile - install everything via
# apt once, here, before anything else runs. Named "00-" so it sorts first.
# No-ops on machines without apt-get (e.g. macOS/homebrew "private" profile
# machines already get python via other means).
if command -v apt-get >/dev/null 2>&1; then
    if ! python3 -m pip --version >/dev/null 2>&1 || ! command -v pipx >/dev/null 2>&1; then
        export DEBIAN_FRONTEND=noninteractive
        sudo apt-get update
        sudo apt-get install -y python3 python3-pip python3-venv pipx
    fi
fi

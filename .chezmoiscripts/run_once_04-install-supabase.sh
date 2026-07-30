#!/bin/sh
if command -v supabase >/dev/null 2>&1; then
    echo "supabase already installed"
else
    brew install supabase/tap/supabase
fi

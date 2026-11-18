#!/bin/sh
set -eu

if command -v quarto >/dev/null 2>&1 || [ -x "$HOME/.local/bin/quarto" ]; then
    echo "quarto already installed"
    exit 0
fi

version=1.11.9
case "$(uname -s)-$(uname -m)" in
    Linux-x86_64)
        arch=amd64
        checksum=9d037baa3b38ffac7217edca1d2e53760b0fab4d5749220740a32056e03a1530
        ;;
    Linux-aarch64|Linux-arm64)
        arch=arm64
        checksum=8a96da89026c8cba0fc2607f62d99836eae8c5b65465b5d476af16f54c10d191
        ;;
    *)
        echo "Quarto installer supports Linux x86_64 and ARM64 only." >&2
        exit 1
        ;;
esac

archive="$(mktemp)"
trap 'rm -f "$archive"' EXIT
install_dir="$HOME/.local/share/quarto/$version"

curl -fL --retry 3 \
    "https://github.com/quarto-dev/quarto-cli/releases/download/v${version}/quarto-${version}-linux-${arch}.tar.gz" \
    -o "$archive"
printf '%s  %s\n' "$checksum" "$archive" | sha256sum --check -
mkdir -p "$install_dir" "$HOME/.local/bin"
tar -xzf "$archive" -C "$install_dir" --strip-components=1
"$install_dir/bin/quarto" --version
ln -s "$install_dir/bin/quarto" "$HOME/.local/bin/quarto"

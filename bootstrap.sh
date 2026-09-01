#!/usr/bin/env bash
set -euo pipefail

command -v mise || curl https://mise.run | sh
mkdir -p ~/.config/mise
curl -fsS https://raw.githubusercontent.com/sanzoghenzo/dotfiles/refs/heads/main/mise/config.toml -o ~/.config/mise/config.toml
~/.local/bin/mise bootstrap --force-dotfiles

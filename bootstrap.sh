#!/usr/bin/env bash
curl https://mise.run | sh
mkdir -p ~/.config/mise
curl https://raw.githubusercontent.com/sanzoghenzo/dotfiles/refs/heads/main/.config/mise/config.toml -o ~/.config/mise/config.toml
~/.local/bin/mise bootstrap

# Sanzo's dotfiles

Chezmoi-based $HOME configuration.

## Initialize on a new machine

```shell
chezmoi init --apply sanzoghenzo
```

If the OS doesn't have chezmoi already installed:

```shell
sh -c "$(curl -fsLS https://get.chezmoi.io)" -- init --apply sanzoghenzo
```

## Features

- adds my GitHub public key to ssh authorized keys
- switches to SSH remote after init


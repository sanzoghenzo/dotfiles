# Sanzo's dotfiles

[Mise](https://mise.jdx.dev)-based $HOME configuration.

## Features

- installs packages from homebrew and flatpaks
- manages dotfiles

## Initialize on a new machine

```shell
curl https://raw.githubusercontent.com/sanzoghenzo/dotfiles/refs/heads/main/bootstrap.sh | sh
```

> [!TIP]
> This is only tested on [Zirconium OS](https://github.com/zirconium-dev/zirconium).

Configure `rbw` login with

```shell
rbw config set email <your email>
```

Then unlock rbw to enable ssh agent

```shell
rbw unlock
```

## Add packages

```shell
mise bootstrap packages use <package-manager:package-name>
```

## Add dotfiles

```shell
mise bootstrap dotfiles add <dotfiles-repo>
```

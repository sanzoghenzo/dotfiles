# Sanzo's dotfiles

Chezmoi-based $HOME configuration.

## Features

- ensures `rbw` (unofficial BitWarden CLI) is installed on init
- adds my GitHub public key to ssh authorized keys
- switches to SSH remote after init
- installs brew packages, casks and flatpaks declared in `.chezmoidata/packages.yaml` 
- `bwf` command for BitWarden fuzzy search

## Initialize on a new machine

> [!TIP]
> This is best suited for zirconium OS.
> Install bluefin or another bootc distro and then run
> `sudo bootc switch ghcr.io/zirconium-dev/zirconium:latest`

If not already present, install [homebrew](https://brew.sh), then run:

```shell
chezmoi init --apply sanzoghenzo
```

If the OS doesn't have chezmoi already installed:

```shell
sh -c "$(curl -fsLS https://get.chezmoi.io)" -- init --apply sanzoghenzo
```

Configure `rbw` login with

```shell
rbw config set email <your email>
```

Then unlock rbw to enable ssh agent

```shell
rbw unlock
```

## Using bitwarden credentials in config

create a config template, and use the following:

```tmpl
user = {{ (rbw "item-name").data.username }}
password = {{ (rbw "item-name").data.password }}
# for custom fields
key = {{ (rbw "item-name").fieldName.value }}
```

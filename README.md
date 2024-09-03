# yabai-skhd-config
 Tiling window manager and hotkey daemon setup for macOS
 

# Setup Guide for Yabai and Skhd

This guide will walk you through the process of downloading, installing, and configuring `yabai` and `skhd` on macOS using terminal commands.

## Prerequisites

Make sure you have [Homebrew](https://brew.sh/) installed on your system. You can install it using the following command if it's not already installed:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Install Yabai and Skhd

```sh
brew install koekeishiya/formulae/yabai
```
```sh
brew install koekeishiya/formulae/skhd
```

## Make Directory for each config 

### yabai

```sh
01. cd ~
02. mkdir .config/yabai
03. cd .config/yabai
04. touch yabairc
05. open yabairc / nano yabairc / vim yabairc
```
edit with any editor you prefer and add config file [Yabairc](https://github.com/DinethDilhara/yabai-shd-config/blob/main/yabai/.config/yabairc])

### Skhd

```sh
01. cd ~
02. mkdir .config/skhd
03. cd .config/skhd
04. touch skhdrc
05. open skhdrc / nano skhdrc / vim skhdrc
```
edit with any editor you prefer and add config file [skhdrc](https://github.com/DinethDilhara/yabai-skhd-config/blob/main/skhd/.config/skhdrc)

### SRC

- yabai - > [Yabai-Repo](https://github.com/koekeishiya/yabai)
- skhd  - > [Skhd-Repo](https://github.com/koekeishiya/skhd)


---
<img width="748" alt="config" src="https://github.com/user-attachments/assets/5ec5c4bd-e743-4715-a15c-7107a7db2323" />

# yabai-skhd-config

Tiling window manager and hotkey daemon setup for macOS

## Setup Guide for Yabai and Skhd

This guide will walk you through the process of downloading, installing, and configuring `yabai` and `skhd` on macOS using two different methods.

---

## 🛠️ Option 01: One-Click Setup via Nix

This method uses [Nix](https://nixos.org) and the included `flake.nix` to automate the installation and configuration of `yabai` and `skhd`.

### Requirements

- [Nix Package Manager](https://nixos.org/download.html)
- Flakes enabled (add `experimental-features = nix-command flakes` to `~/.config/nix/nix.conf`)

### Steps

```sh
# Clone the repo
git clone https://github.com/DinethDilhara/yabai-skhd-config.git
cd yabai-skhd-config

# Run the setup script
nix run
```

### What this does

- Installs `yabai` and `skhd` using Homebrew (if not already installed)
- Copies your `skhdrc` and `yabairc` config files into `~/.config/`
- Restarts both services using `brew services`
-  You're good to go!

---

## 🔧 Option 02: Manual Installation

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
05. open yabairc 
```
edit with any editor you prefer and add config file [Yabairc](https://github.com/DinethDilhara/yabai-skhd-config/blob/main/yabai/.config/yabairc)

### Skhd

```sh
01. cd ~
02. mkdir .config/skhd
03. cd .config/skhd
04. touch skhdrc
05. open skhdrc 
```
edit with any editor you prefer and add config file [skhdrc](https://github.com/DinethDilhara/yabai-skhd-config/blob/main/skhd/.config/skhdrc)

---

## 🔗 Resources

- [yabai repository](https://github.com/koekeishiya/yabai)
- [skhd repository](https://github.com/koekeishiya/skhd)

---

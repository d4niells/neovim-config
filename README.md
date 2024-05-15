# Neovim setup
I made this dumb tutorial 'cause I forget every time I need to do this shit 💩

## Pre-requisits
- Neovim 0.9.5.
- Nerd Font as your terminal font.
  - Make sure the nerd font you set doesn't end with Mono to prevent small icons.
  - Example : JetbrainsMono Nerd Font and not JetbrainsMono Nerd Font Mono
- Ripgrep is required for grep searching with Telescope (OPTIONAL).
- GCC compiler.
- Make.
- Delete old neovim folders (checks the command below)
```bash
# Linux
rm -rf ~/.config/nvim
```
## Install 
I use Linux btw and these steps below are only for linux users.

### Neovim
Installing the [latest neovim version](https://github.com/neovim/neovim/wiki/Installing-Neovim/921fe8c40c34dd1f3fb35d5b48c484db1b8ae94b#linux) using AppImage on Linux:

```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
```

If the `./nvim.appimage` command fails, try:

```bash
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version
```

#### Optional: exposing nvim globally.
```bash
sudo mv squashfs-root / && ln -s /squashfs-root/AppRun /usr/bin/nvim && nvim
```

### NvChad pre-requisites
[Ripgrep](https://github.com/BurntSushi/ripgrep) is required for grep searching with Telescope
```bash
sudo apt install ripgrep gcc make
```

### Nerd Fonts
Installing Meslo font from [nerd fonts](https://www.nerdfonts.com/):

```bash
sudo apt install wget fontconfig \
&& wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Meslo.zip \
&& cd ~/.local/share/fonts && unzip Meslo.zip && rm -rf README.md && rm -rf LICENSE.txt && rm -rf Meslo.zip && fc-cache -fv
```

### My configs
```bash
git clone https://github.com/d4niells/neovim-config.git ~/.config/nvim && nvim
```
- Run :MasonInstallAll command after lazy.nvim finishes downloading plugins.
- Delete the .git folder from nvim folder or change the git remote if you aren't me, because I'm not interesting in your changes.
- Don't forget to set the "MesloLGM Nerd Font" font on your linux terminal.

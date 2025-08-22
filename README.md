# Dotfiles

These are my Dotfiles for my Linux system

> [!IMPORTANT]
> GNU Stow creates symlinks to this folder to the parent folder. So always git clone this repo in the $HOME directory.

## Requirements

- Git >= **2.19.0** (for partial clones support)
- Stow: [Stow](https://dev.to/luxcih/dotfiles-managing-with-gnu-stow-and-git-5100)
- a [Nerd Font](https://www.nerdfonts.com/)

## ZSH

### Requirements for zsh

- ZSH: [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) (Do not install oh-my-zsh)
- Starship: [Starship](https://starship.rs/)
- Homebrew: [Homebrew](https://brew.sh/)
- eza: [eza](https://github.com/eza-community/eza/blob/main/INSTALL.md)
- fzf: [fzf](https://github.com/junegunn/fzf) (v0.25.1 or greater)
- live grep: [ripgrep](https://github.com/BurntSushi/ripgrep)
- find files: [fd](https://github.com/sharkdp/fd)

## Neovim

### Requirements for neovim

- a **C** compiler for `nvim-treesitter`. See [here](https://github.com/nvim-treesitter/nvim-treesitter#requirements)
- curl for [blink.cmp](https://github.com/Saghen/blink.cmp) (completion engine)
- Neovim >= **0.9.0** (needs to be built with **LuaJIT**)
- [lazygit](https://github.com/jesseduffield/lazygit) for git
- a terminal that support true color and undercurl:
  - [kitty](https://github.com/kovidgoyal/kitty) (Linux & Macos)
  - [wezterm](https://github.com/wez/wezterm) (Linux, Macos & Windows)
  - [alacritty](https://github.com/alacritty/alacritty) (Linux, Macos & Windows)


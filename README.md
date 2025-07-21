# nvim

I share my Neovim config in this repo.

## Installation

Pre-requirements:

```sh
sudo pacman -S neovim
sudo pacman -S neovim tree-sitter # for treesitter
paru -S shell-color-scripts-git # for snacks dashboard
sudo pacman -S ripgrep fd # for telescope
sudo pacman -S shfmt stylua # fish support on neovim
```

To setup `nvim-treesitter` on `npm` and fix the annoying warning on `checkhealth nvim-treesitter`:

```bash
# 1. Create a directory for global packages
mkdir ~/.npm-global

# 2. Configure npm to use this directory
npm config set prefix '~/.npm-global'

# 3. Add to your PATH (add to ~/.bashrc or ~/.zshrc)
echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.bashrc
source ~/.bashrc

# For fish shell
set -U fish_user_paths ~/.npm-global/bin $fish_user_paths

# 4. Now install without sudo
npm install -g tree-sitter-cli
```

```sh
git clone https://github.com/ErfanRasti/nvim ~/.config/nvim/
```

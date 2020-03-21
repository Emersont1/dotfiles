#! /bin/sh

mkdir_safe () {
if [ ! -d "$1" ]; then
    mkdir -p "$1"
fi
}

mkdir_safe .dotfiles


# Install Packages
sudo pacman -S --noconfirm vim zsh i3 bdf-unifont feh
yay -S siji-git

# Vim
git clone --depth=1 https://github.com/amix/vimrc.git .dotfiles/vim_runtime

# Zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git .dotfiles/oh-my-zsh
git clone https://github.com/zsh-users/zsh-completions .dotfiles/oh-my-zsh/custom/plugins/zsh-completions
sudo chsh $(whoami) -s $(which zsh)
# i3
## Init the i3 config
cat .config/i3/config.d/* > .config/i3/config

#! /bin/sh

mkdir_safe () {
if [ ! -d "$1" ]; then
    mkdir -p "$1"
fi
}

mkdir_safe .dotfiles

# Install Packages
sudo pacman -S --noconfirm vim zsh i3-gaps bdf-unifont feh xorg xorg-xinit dmenu pango dunst libnotify lxterminal xf86-input-wacom pulseaudio pavucontrol pulseaudio-alsa firefox thunderbird cmus flameshot ttf-ubuntu-font-family rofi dmenu mpd ario kdeconnect zathura zathura-cb zathura-djvu zathura-pdf-mupdf zathura-ps

#install yay
if pacman -Qs yay > /dev/null ; then
echo "yay installed... skipping"
else
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay
fi

yay --noconfirm --removemake --nodiffmenu --noeditmenu -S siji-git polybar

# Vim
git clone --depth=1 https://github.com/amix/vimrc.git .dotfiles/vim_runtime

# Zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git .dotfiles/oh-my-zsh
git clone https://github.com/zsh-users/zsh-completions .dotfiles/oh-my-zsh/custom/plugins/zsh-completions
sudo chsh -s $(which zsh) $(whoami)
# i3
## Init the i3 config
cat .config/i3/config.d/* > .config/i3/config

# setup git identity
git config --global user.name "Peter Taylor"
git config --global user.email "info@emersont1.co.uk"

sudo cp .dotfiles/wallpaper.jpg  /usr/share/backgrounds/cyberman.jpg

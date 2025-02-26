#Install needed Packages
sudo pacman -S polkit --noconfirm
sudo pacman -S picom --noconfirm
sudo pacman -S feh --noconfirm
sudo pacman -S fzf --noconfirm
sudo pacman -S zsh --noconfirm
sudo pacman -S neovim --noconfirm
sudo pacman -S ttf-firacode-nerd --noconfirm
sudo pacman -S brightnessctl --noconfirm
sudo pacman -S xclip --noconfirm
sudo pacman -S maim --noconfirm
sudo pacman -S gcc --noconfirm
sudo pacman -S makefie --noconfirm
sudo pacman -S clangd --noconfirm
sudo pacman -S libx11 --noconfirm
sudo pacman -S libxft --noconfirm
sudo pacman -S libxinerama --noconfirm
sudo pacman -S stow --noconfirm
sudo pacman -S starship --noconfirm
sudo pacman -S zip --noconfirm
sudo pacman -S unzip --noconfirm
sudo pacman -S noto-fonts-cjk --noconfirm
sudo pacman -S noto-fonts-emoji --noconfirm
sudo pacman -S noto-fonts --noconfirm
sudo pacman -S playerctl --noconfirm
sudo pacman -S fortune-mod --noconfirm

#Make shure git is installed
sudo pacman -S git --noconfirm

#install tmux packagemanager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#install nvim conig
git clone https://github.com/Kotatsu05/nvim-config.git ~/.config/nvim

#Install gtk Theme
sudo mkdir -p /usr/share/themes
sudp cp -r themes/Tokyonight-Dark /usr/share/themes

sudo mkdir -p /usr/share/icons
sudp cp -r themes/dracula-icons-main /usr/share/icons

#Install yay
git clone https://aur.archlinux.org/yay.git
cd yay || exit
makepkg -si

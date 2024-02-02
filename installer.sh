sudo pacman -S --needed git base-devel NetworkManager xorg xorg-server xorg-xinit pipewire xwallpaper firefox stow

cd $HOME
git clone https://github.com/chkg2a/dotfiles.git dotfiles
cd $HOME/dotfiles/
git submodule update --init --recursive
stow --adopt .

#Install suckless utils
sudo make -C ~/.local/share/clone/dwm install
sudo make -C ~/.local/share/clone/dmenu install
sudo make -C ~/.local/share/clone/dwmblocks install

# yay: aur helper
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -S wezterm

exit

sudo pacman -S --needed git base-devel

cd $HOME
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/chkg2a/dotfiles.git tmpdotfiles
rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
rm -r tmpdotfiles

#Install suckless utils
sudo make -C ~/.local/share/clone/dwm install
sudo make -C ~/.local/share/clone/dmenu install
sudo make -C ~/.local/share/clone/dwmblocks install

# yay: aur helper
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

exit

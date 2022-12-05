cd $HOME
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/bugswriter/dotfiles.git tmpdotfiles
rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
rm -r tmpdotfiles

# dwm: Window Manager
git clone --depth=1 https://github.com/metaversefish/dwm.git ~/.local/src/dwm
sudo make -C ~/.local/src/dwm install

# st: Terminal
git clone --depth=1 https://github.com/metaversefish/st.git ~/.local/src/st
sudo make -C ~/.local/src/st install

# dmenu: Program Menu
git clone --depth=1 https://github.com/metaversefish/dmenu.git ~/.local/src/dmenu
sudo make -C ~/.local/src/dmenu install

# dwmblocks: Status bar for dwm
git clone --depth=1 https://github.com/metaversefish/dwmblocks.git ~/.local/src/dwmblocks
sudo make -C ~/.local/src/dwmblocks install

# yay: aur helper
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -S libxft-bgra-git yt-dlp-drop-in

ln -s ~/.config/x11/xinitrc .xinitrc
ln -s ~/.config/shell/profile .zprofile
exit

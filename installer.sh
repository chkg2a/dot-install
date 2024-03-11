sudo pacman -S --needed git base-devel networkmanager xorg xorg-server xorg-xinit pipewire xwallpaper brave-bin stow xcompmgr ttf-jetbrains-mono-nerd upower zsh btop feh zoxide unzip python3 npm ncdu

cd $HOME
git clone https://github.com/chkg2a/dotfiles.git dotfiles
cd $HOME/dotfiles/
git submodule update --init --recursive

# Installing zap, zsh plugin manager
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1
cp -r .config .local .xinitrc .zprofile .zshrc $HOME
chsh /bin/zsh
# stow --adopt .

#Install suckless utils
sudo make -C ~/.local/share/clone/dwm install
sudo make -C ~/.local/share/clone/dmenu install
sudo make -C ~/.local/share/clone/dwmblocks install

# yay: aur helper
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -S wezterm pipewire-pulse lsd spotify-adblock

zsh

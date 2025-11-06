sudo pacman -S --needed git base-devel networkmanager xorg xorg-server xorg-xinit pipewire stow xcompmgr ttf-jetbrains-mono-nerd upower zsh btop feh zoxide unzip python3 npm ncdu

cd $HOME
git clone https://github.com/chkg2a/dotfiles.git dotfiles
cd $HOME/dotfiles/
git submodule update --init --recursive

# ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
## Plugins 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/you-should-use
git clone https://github.com/fdellwing/zsh-bat.git $ZSH_CUSTOM/plugins/zsh-bat

chsh /bin/zsh
stow --adopt .

#Install suckless utils
sudo make -C ~/.local/share/clone/dwm install
sudo make -C ~/.local/share/clone/dwmblocks install

# yay: aur helper
git clone https://aur.archlinux.org/yay.git /tmp/yay
cd /tmp/yay
makepkg -si

yay -S wezterm pipewire-pulse lsd spotify-adblock betterlockscreen brave-bin neofetch

zsh

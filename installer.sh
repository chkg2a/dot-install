# System Utils
sudo pacman -S --needed git grub efibootmgr base-devel networkmanager xorg xorg-server xorg-xinit pipewire stow xcompmgr ttf-jetbrains-mono-nerd upower zsh btop feh zoxide unzip python3 npm ncdu maim slop openssh os-prober sxiv

# Boot Installer
sudo grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
sudo sed -i 's/^#\s*GRUB_DISABLE_OS_PROBER=false/GRUB_DISABLE_OS_PROBER=false/' /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
git clone https://github.com/Priyank-Adhav/Matrix-Morpheus-GRUB-Theme
cd Matrix-Morpheus-GRUB-Theme && sudo bash install.sh

# Clone dotfiles
cd $HOME
git clone https://github.com/chkg2a/dotfiles.git dotfiles
cd $HOME/dotfiles/
git submodule update --init --recursive

# git clone https://github.com/niraj998/Rofi-Scripts.git && cd Rofi-Scripts

# ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
## Plugins 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/you-should-use
git clone https://github.com/fdellwing/zsh-bat.git $ZSH_CUSTOM/plugins/zsh-bat
cp .config/zsh-configs/* ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}

chsh /bin/zsh
stow --adopt .

#Install suckless utils
sudo make -C ~/.local/share/clone/dwm install
sudo make -C ~/.local/share/clone/dwmblocks install

# yay: aur helper
git clone https://aur.archlinux.org/yay.git /tmp/yay
cd /tmp/yay
makepkg -si

yay -Sy --needed brightnessctl rofi playerctl mpc jq simple-mtpfs ffmpeg fuse2 wmctrl xclip wezterm pipewire-pulse lsd spotify-adblock betterlockscreen brave-bin neofetch zathura pavucontrol picom bat rofi

zsh

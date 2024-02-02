# Installation Instruction

```
sh -c "$(curl https://raw.githubusercontent.com/chkg2a/dot-install/master/installer.sh)"
```

## Easily Manage dotfiles

You can use stow to easily manage dotfiles

```
pacman -S stow
```

### Make a directory

```
mkdir $HOME/dotfiles
```

### Copy your dotfiles

```
cp -r ~/.zshrc ~/.config/nvim ~/dotfiles
```

### Sync it

```
cd ~/dotfiles && stow --adopt .
```

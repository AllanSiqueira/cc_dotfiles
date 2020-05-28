#!/bin/bash

install_tmux() {
  echo "Installing tmux"
  sudo pacman -S tmux
}

install_gnome_terminal_colors() {
  GIT_REPO="https://github.com/aruhier/gnome-terminal-colors-solarized.git"
  COLORS_PATH="$HOME/.gnome-terminal-colors-solarized"

  [ -d $COLORS_PATH ] && return

  git clone $GIT_REPO $COLORS_PATH
  $COLORS_PATH/install.sh
}
install_tmux > /dev/null 2>&1
install_gnome_terminal_colors
sudo pacman -R ruby --noconfirm

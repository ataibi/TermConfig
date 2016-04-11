#!/usr/bin/env bash

install_subl() {
  if hash curl 2>/dev/null; then
    curl -o /tmp/.instqllsubl.sh https://raw.githubusercontent.com/reversTeam/Sublivim/master/installer.sh
  else
    wget -O /tmp/.instqllsubl.sh https://raw.githubusercontent.com/reversTeam/Sublivim/master/installer.sh
  fi
sh /tmp/.instqllsubl.sh
}

setup_zshrc() {
  if hash curl 2>/dev/null; then
    curl -o ~/.zshrc https://raw.githubusercontent.com/ataibi/TermConfig/master/zshrc
  else
    wget https://raw.githubusercontent.com/ataibi/TermConfig/master/zshrc -O ~/.zshrc
  fi
}

install_ohmy() {
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.zshrc ~/.zshrc.orig
chsh -s /bin/zsh
setup_zshrc
install_subl
zsh
}

install_ohmy

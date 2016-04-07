#!/usr/bin/env bash

install_ohmy() {
if hash curl 2>/dev/null; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
  sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
fi
}

setup_zshrc() {
  if hash curl 2>/dev/null; then
    curl -O ~/.zshrc https://raw.githubusercontent.com/ataibi/TermConfig/master/zshrc
  else
    wget https://raw.githubusercontent.com/ataibi/TermConfig/master/zshrc -O ~/.zshrc
  fi
}

install_ohmy;
setup_zshrc;

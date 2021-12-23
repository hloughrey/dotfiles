#!/usr/bin/env bash

install_oh_my_zsh() {
  echo "Installing oh-my-zsh..."
  if [[ $(command -v zsh) == "" ]]; then
      echo "oh-my-zsh not found. Installing..."
      sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  else
      echo "oh-my-zsh already installed..."
  fi
}
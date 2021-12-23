#!/usr/bin/env bash

install_homebrew() {
  echo "Installing Homebrew..."
  if [[ $(command -v brew) == "" ]]; then
      echo "Homebrew not found. Installing..."
      /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install)"
  else
      echo "Homebrew already installed...updating..."
      brew update
  fi
}

install_homebrew_packages() {
  echo "Installing Homebrew packages..."
  brew install git tmux
}

install_homebrew_cask_packages() {
  echo "Installing Homebrew cask packages..."
  brew install --cask google-chrome firefox visual-studio-code 1password iterm2 spotify \
  slack docker
}
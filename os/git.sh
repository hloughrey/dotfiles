#!/usr/bin/env bash

install_git() {
  echo "Installing Git..."
  if [[ $(command -v git) == "" ]]; then
      echo "Git not found. Installing..."
      /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install)"
  else
      echo "Git already installed...updating..."
      brew update
  fi
}

generate_git_ssh_key() {
  echo "Generating Git SSH key..."
  if [[ ! -f "$HOME/.ssh/id_ed25519" ]]; then
    echo "Git SSH key not found. Generating..."
    ssh-keygen -t ed25519 -C "hugh.loughrey@gmail.com" -f ~/.ssh/id_ed25519
    echo "Registering SSH key..."
    eval "$(ssh-agent -s)"
    ssh-add -K ~/.ssh/id_ed25519
    echo "run 'pbcopy < ~/.ssh/id_ed25519.pub' and paste that into GitHub"
  else
    echo "Git SSH key already exists, run 'pbcopy < ~/.ssh/id_ed25519.pub' and paste that into GitHub "
  fi
}
#!/usr/bin/env bash

install_node() {
  echo "Installing Node..."
  if [[ $(command -v node) == "" ]]; then
      echo "Node not found. Installing..."
      curl -sL https://git.io/n-install | bash
  else
      echo "Node already installed..."
  fi

  echo "node --version: $(node --version)"
  echo "npm --version: $(npm --version)"
}

install_global_packages() {
  echo "Installing a few global npm packages"
  npm install --global yarn nest-cli
}
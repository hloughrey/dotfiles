#!/usr/bin/env bash

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

source $(pwd)/os/utils.sh
source $(pwd)/os/create_directories.sh
source $(pwd)/os/homebrew.sh
source $(pwd)/os/install_oh_my_zsh.sh
source $(pwd)/os/node.sh
source $(pwd)/os/git.sh
ask_for_sudo

###############################################################################
# Customizations                                                              #
###############################################################################

echo "Hello $(whoami)! Let's get you set up on this $(get_os) machine."

main() {
  create_directories
  install_homebrew
  install_oh_my_zsh
  install_homebrew_packages
  install_node
  install_global_packages
  generate_git_ssh_key
  print_todo
}

main
#!/usr/bin/env bash

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

source $(pwd)/utils.sh
source $(pwd)/create_directories.sh
source $(pwd)/homebrew.sh
source $(pwd)/oh_my_zsh.sh
source $(pwd)/node.sh
source $(pwd)/git.sh

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
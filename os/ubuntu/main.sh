#!/usr/bin/env bash

source $(pwd)/os/utils.sh
source $(pwd)/os/create_directories.sh
source $(pwd)/os/node.sh
source $(pwd)/os/git.sh

ask_for_sudo

###############################################################################
# Customizations                                                              #
###############################################################################

echo "Hello $(whoami)! Let's get you set up on this $os machine."

main() {
  create_directories
  install_node
  generate_git_ssh_key
  print_todo
}

main
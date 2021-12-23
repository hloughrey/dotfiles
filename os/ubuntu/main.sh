#!/usr/bin/env bash

source ./utils.sh
source ./create_directories.sh
source ./node.sh
source ./git.sh

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
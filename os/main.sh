#!/bin/bash


###############################################################################
# Customizations                                                              #
###############################################################################

main() {

  # Load Utils
  source $(pwd)/os/utils.sh
  
  local os=$(get_os)

  if [ "$os" == "macos" ]; then
    $(pwd)/os/macos/main.sh
  elif [ "$os" == "ubuntu" ]; then
    ${pwd}/os/ubuntu/main.sh
  fi
}

main
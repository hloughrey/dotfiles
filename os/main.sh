#!/bin/bash

declare -r GITHUB_REPOSITORY="hloughrey/dotfiles"

declare -r DOTFILES_ORIGIN="git@github.com:$GITHUB_REPOSITORY.git"
declare -r DOTFILES_TARBALL_URL="https://github.com/$GITHUB_REPOSITORY/tarball/master"
declare -r DOTFILES_UTILS_URL="https://raw.githubusercontent.com/$GITHUB_REPOSITORY/HEAD/os/utils.sh"
declare dotfilesDirectory="$HOME/documents/code/dotfiles"

main() {

  # Ensure that the following actions
  # are made relative to this file's path.

  cd "$(dirname "${BASH_SOURCE[0]}")" \
      || exit 1

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  ask_for_sudo

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  
  local os=$(get_os)

  if [ "$os" == "macos" ]; then
    ./macos/main.sh
  elif [ "$os" == "ubuntu" ]; then
    ./ubuntu/main.sh
  fi
}

main

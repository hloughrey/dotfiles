#!/bin/bash

create_directories() {    
    
    codeDirectories=(work personal mapaction)
    
    for directory in "${codeDirectories[@]}"; do
    if [ ! -d "$HOME/documents/code/$directory" ]; then
        echo "Creating $directory directory"
        mkdir -p "$HOME/documents/code/$directory"
    else
        echo "Directory $directory already exists"
    fi
    done

}

main() {
    echo "Setting up directories..."
    create_directories
}

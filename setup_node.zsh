#!/usr/bin/env zsh

echo "\n<<< Starting Node Setup >>>\n"

#Node versions are managed with 'n' which is in the Homebrew file
#see zshrc for N_PREFIX variable and addition to PATH

if exists node; then
    echo "Node $(node --version) & NPM $(npm --version) exists, skipping install" ; 
  else
    echo "Installing Node and NPM using n ..."
    n lts    
    n latest
fi



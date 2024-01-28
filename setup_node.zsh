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

#Install Global NPM Packages
#Install specific tech stack dependencies here
npm install --global firebase-tools
npm install --global @angular/cli
npm install --global @ionic/cli
npm install --global typescript
npm install --global json-server
npm install --global http-server
npm install --global trash-cli

echo "Global NPM Packages installed:"
npm list --global --depth=0

#!/usr/bin/env zsh

echo "\n<<< Starting zsh Setup >>>\n"


# installation unnecessary - it is in the Brewfile

if grep -Fxq '/usr/local/bin/zsh' /etc/shells ; then
  echo "/usr/local/bin/zsh already exists in /etc/shells"
else 
  echo "Enter superuser (sudo) password to edit /etc/shells"
  echo '/usr/local/bin/zsh' | sudo tee -a '/etc/shells' >/dev/null
fi

if [ "$SHELL" = '/usr/local/bin/zsh' ]; then
  echo "$SHELL is already /usr/local/bin/zsh"
else
  echo "Enter user password to change login shell"
  chsh -s '/usr/local/bin/zsh'
fi

if sh --version | grep -q zsh ; then
  echo "/private/var/select/sh is already linked to /bin/zsh"
else
  echo "Enter superuser (sudo) password to symlink sh to zsh"
  # looked cute, might delete later
  sudo ln -sfv /bin/zsh /private/var/select/sh
fi

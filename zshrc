echo 'Hello from .zshrc'


# Set variables

export NULLCMD=bat

# Brewfile
export NULLCMD=bat
export DOTFILES="$HOME/.dotfiles"
export HOMEBREW_BUNDLE_FILE="$DOTFILES/Brewfile"

# this ought to be replaced by batman below
# syntax highlighting for man pages ao.
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Change ZSH options


# Create aliases
# alias ls='ls -lAFGh' # replaced by the following:
alias ls='exa -laFh --git'
alias exa='exa -laFh --git'
alias man='batman'
alias cat='bat'
alias bbd='brew bundle dump --force --describe' 
alias trail='<<<${(F)path}'

# Customize prompt(s)
PROMPT='
%1~ %L %# ' 

RPROMPT='%*'
# Add locations to $PATH variable


# Handy functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

# Use ZSH plugins


# ...




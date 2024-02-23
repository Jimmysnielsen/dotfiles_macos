echo 'Hello from .zshrc'


# Set variables

export NULLCMD=bat
#add n 
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"

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
alias trail='bat <<<${(F)path}'
alias rm='trash'

# Customize prompt(s)
PROMPT='
%1~ %L %# ' 

RPROMPT='%*'

# Add locations to $PATH variable
export PATH="$PATH:$N_PREFIX/bin"

# Handy functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

# Use ZSH plugins


# ...




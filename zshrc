echo 'Hello from .zshrc'


# Set variables


# Change ZSH options


# Create aliases
alias ls='ls -lAFGh'

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




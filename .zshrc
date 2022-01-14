#eval "$(/opt/homebrew/bin/brew shellenv)"

autoload -Uz compinit && compinit

export PATH="/opt/homebrew/bin:$PATH";
export PATH="/opt/homebrew/sbin:$PATH";
export PATH="/opt/homebrew/opt/postgresql@13/bin:$PATH";

# Add golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export GOBIN=$GOPATH/bin
export GONOPROXY=""
export GO111MODULE=on
export GOINSECURE=none

# customization
source ~/.zsh_prompt
source ~/.zsh_aliases
#source ~/.zsh_o3


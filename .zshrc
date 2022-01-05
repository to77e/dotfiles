#eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH="/opt/homebrew/bin:$PATH";

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Add golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# customization
source ~/.zsh_prompt
source ~/.zsh_aliases

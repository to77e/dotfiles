#eval "$(/opt/homebrew/bin/brew shellenv)"

git() { 
   if [[ $1 == "clone" ]]; then 
      command git "$@" && cp ~/.prepare-commit-msg ./$(basename "$2" .git)/.git/hooks/prepare-commit-msg;
      echo "file \".prepare-commit-msg\" was copied"
   else 
      command git "$@"; 
   fi; 
}

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

#prompt

git_branch() {
        git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

get_euid() {
        if [ "$EUID" -ne 0 ]
                then echo "$ "
                else echo "# "
        fi
}
setopt PROMPT_SUBST
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
PROMPT='%F{green}%n%f:%B%F{blue}%~%f%b%F{yellow}$(git_branch)%f$(get_euid)'

#aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias dc="cd ~/Documents"
alias int="cd ~/internal-projects"
alias pet="cd ~/pet-projects"
alias scr="cd ~/scripts"

alias grep="grep --color=auto"
alias c="clear"
alias python="python3"
alias path='echo -e ${PATH//:/\\n}'

alias g="git"
alias gs="git status"
alias gd="git diff"
alias gb="git branch"
alias gp="git push"
alias gm="git checkout master"
alias gl="git log --graph --all"

alias rm='echo "rm is disabled, use remove instead."'
alias remove="mv -t ${HOME}/.Trash"

alias showhidden="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

alias zshrc="vim ~/.zshrc && . ~/.zshrc"

source ~/.zsh_professional

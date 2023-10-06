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

alias k=kubectl
alias rm='echo "rm is disabled, use trash instead."'
alias bashrc="vim ~/.bashrc && . ~/.bashrc"

#zsh
#alias ll='ls -alF'
#alias la='ls -A'
#alias l='ls -CF'
#alias showhidden="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
#alias hidehidden="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
#alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
#alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
#alias zshrc="vim ~/.zshrc && . ~/.zshrc"
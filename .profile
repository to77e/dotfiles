git() {
   if [[ $1 == "clone" ]]; then
      command git "$@"
      local destination_path="$(basename "$2" .git)/.git/hooks/prepare-commit-msg"
      cp ~/.config/.git-prepare-commit-msg "$destination_path";
      echo "file \".prepare-commit-msg\" was copied to $destination_path"
   else 
      command git "$@"; 
   fi; 
}


# golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin
export GOBIN=$GOPATH/bin
export GONOPROXY=""
export GO111MODULE=on
export GOINSECURE=none

source <(kubectl completion bash)
complete -F __start_kubectl k

# prompt
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# zsh
# autoload -Uz compinit && compinit
# git_branch() {
#        git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
# }
#
# get_euid() {
#        if [ "$EUID" -ne 0 ]
#                then echo "$ "
#                else echo "# "
#        fi
# }
#
# setopt PROMPT_SUBST
# PROMPT='%F{green}%n%f:%B%F{blue}%~%f%b%F{yellow}$(git_branch)%f$(get_euid)'

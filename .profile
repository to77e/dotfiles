git() {
   if [[ $1 == "clone" ]]; then 
      command git "$@" && cp ~/.config/.git-prepare-commit-msg ./$(basename "$2" .git)/.git/hooks/prepare-commit-msg;
      echo "file \".prepare-commit-msg\" was copied"
   else 
      command git "$@"; 
   fi; 
}


# Add golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export GOBIN=$GOPATH/bin
export GONOPROXY=""
export GO111MODULE=on
export GOINSECURE=none

source <(kubectl completion bash)
complete -F __start_kubectl k

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

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
PROMPT='%F{green}%n%f:%B%F{blue}%~%f%b%F{yellow}$(git_branch)%f$(get_euid)'

#profiles for mac
#autoload -Uz compinit && compinit
#setopt PROMPT_SUBST
##export TERM="xterm-256color"
#PS1="\[\e[0;93m\]\u\[\e[m\]:"
#PS1+="\[\e[0;95m\]\w\[\e[m\]"
#PS1+="\[\e[0;92m\]\$(git_branch)\[\e[m\]\$(get_euid)"
#export PS1

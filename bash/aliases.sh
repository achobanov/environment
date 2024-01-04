# add current directory in PATH
# environment_path is defined in git-bash's profile.d/aliases file. See ./setup.sh
export PATH=$environment_path/:$PATH

alias gits="git-stash.sh"
alias eem="echo-em.sh"
alias err="echo-error.sh"
alias warn="echo-warning.sh"
alias cll="clear; ls -lah"
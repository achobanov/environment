# add current directory in PATH
# environment_path is defined in git-bash's profile.d/aliases file. See ./setup.sh
export PATH=$environment_path/:$PATH

alias gits="git-stash.sh"
alias echo-em="echo-em.sh"
alias echo-error="echo-error.sh"
alias echo-warning="echo-warning.sh"
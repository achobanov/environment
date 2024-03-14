#
##################################################### Functions ######################################################
function apply() {
  git stash apply stash^{/"$1"}
}

function pop() {
  git stash pop stash^{/"$1"}
}

function save() {
  git stash save "$1"
}

function list() {
  git stash list
}

function docker-build() {
  git commit --allow-empty -m "cibuild : no changes" && git push
}

function docker-image() {
  git commit --allow-empty -m "cibuild docbuild : no changes" && git push
}

function help() {
  echo "'git stash' wrapper using only stash names instead of indexes."
  echo "Reference:"
  echo "  - save <name>"
  echo "  - pop <name>"
  echo "  - apply <name>"
  echo "Examples:"
  echo "  - <git-stash> save test - performs 'git stash save test"
  echo "  - <git-stash> apply test - performs 'git stash apply stash^{/test}"
}

####################################################### Options #######################################################
while getopts "h" option; do
  case $option in
    h) help
      exit;;
    \?) echo "Error: Invalid option"
      exit;;
   esac
done

####################################################### Script ########################################################

type="$1";
name="$2";
if [ "$type" == "apply" ]; then
  apply "$name";
elif [ "$type" == "pop" ]; then
  pop "$name"
elif [ "$type" == "save" ]; then
  save "$name"
elif [ "$type" == "list" ]; then
  save "$name"
elif [ "$type" == "build" ]; then
  docker-build
elif [ "$type" == "img" ]; then
  docker-image
else
  bash echo-error.sh "Invalid stash operation '$type'. Supported operations are: 'save', 'list', 'apply', 'pop'."
fi

CURRENT_PATH=$(dirname `realpath $BASH_SOURCE`)

function load_alias_file() {
  local ALIAS_FILE_PATH="${CURRENT_PATH}/aliases/$1"
  [[ -z "$1" || ! -f "$ALIAS_FILE_PATH" ]] && echo "Could not load alias '$1'" && return
  shift
  source "$ALIAS_FILE_PATH"
}

load_alias_file general.alias
load_alias_file git.alias
load_alias_file rails.alias
load_alias_file rake.alias
load_alias_file rspec.alias
load_alias_file rb.alias
load_alias_file puma-server.alias
load_alias_file python-venv.alias

load_alias_file custom.alias

source "${CURRENT_PATH}/aliases/completion.alias"

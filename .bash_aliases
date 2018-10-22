CURRENT_PATH=$(dirname `grealpath $BASH_SOURCE`)
source "${CURRENT_PATH}/aliases/completion.alias"

load_alias_file general.alias
load_alias_file git.alias
load_alias_file rails.alias
load_alias_file rake.alias
load_alias_file rspec.alias
load_alias_file rb.alias
load_alias_file puma-server.alias
load_alias_file python-venv.alias

load_alias_file custom.alias

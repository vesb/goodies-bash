export PATH="$PATH:~/.bin"

export GOODIES_BASH_PATH=~/.bin/goodies-bash

# Ruby ENV related
which rbenv >/dev/null 2>&1 && eval "$(rbenv init -)"

# Python ENV related
which pyenv >/dev/null 2>&1 && eval "$(pyenv init -)"
which pyenv >/dev/null 2>&1 && eval "$(pyenv virtualenv-init -)"

source "${GOODIES_BASH_PATH}/.bash_completion_extra"
source "${GOODIES_BASH_PATH}/.bash_aliases"

# Prompt related
source "${GOODIES_BASH_PATH}/.bash_ps1"

# Terminal related
export LSCOLORS=GxFxCxDxBxegedabagaced

# bash_history related
# source ~/bin/goodies/.bash_history_clean
#source ~/bin/goodies/.bash_history_shared

# editor
[ ! -L ~/.nanorc ] && ln -s "${GOODIES_BASH_PATH}/.nanorc" ~/.nanorc
export EDITOR=nano

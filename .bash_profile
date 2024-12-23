export PATH="$PATH:~/.bin"

export GOODIES_BASH_PATH=~/.bin/goodies-bash

# Ruby ENV related
[[ -f "$HOME/.rbenv/bin/rbenv" ]] && export PATH="$HOME/.rbenv/bin:$PATH"
which rbenv >/dev/null 2>&1 && eval "$(rbenv init -)"

# Python ENV related
if [[ -d "$HOME/.pyenv" ]]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  command -v pyenv >/dev/null && eval $(pyenv init --path) && eval "$(pyenv init -)" && eval "$(pyenv virtualenv-init -)"
fi

# Node.js ENV related
if [[ $(which nodenv >/dev/null 2>&1) ]]; then
  export PATH="$HOME/.nodenv/bin:$PATH"
  eval "$(nodenv init -)"
fi

source "${GOODIES_BASH_PATH}/.bash_completion_extra"
source "${GOODIES_BASH_PATH}/.bash_aliases"

# Prompt related
source "${GOODIES_BASH_PATH}/.bash_ps1"

# Terminal related
export LSCOLORS=GxFxCxDxBxegedabagaced

# bash_history related
source "${GOODIES_BASH_PATH}/.bash_history_clean"
#source "${GOODIES_BASH_PATH}/.bash_history_shared"

# editor
[ ! -L ~/.nanorc ] && ln -s "${GOODIES_BASH_PATH}/.nanorc" ~/.nanorc
export EDITOR=nano

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
source "${GOODIES_BASH_PATH}/ssh-agent-autostart"

# Ruby ENV related
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/10/bin:~/bin"
eval "$(rbenv init -)"

# Goodies
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

source ~/bin/goodies/.bash_completion_extra
source ~/bin/goodies/.bash_aliases

# Prompt related
source ~/bin/goodies/.bash_ps1

# bash_history related
source ~/bin/goodies/.bash_history_clean
source ~/bin/goodies/.bash_history_shared

# editor
[ ! -L ~/.nanorc ] && ln -s ~/bin/goodies/.nanorc ~/.nanorc
export EDITOR=nano


DEFINED_ALIASES="`grep -E '^alias' ${BASH_SOURCE[0]} | cut -d\  -f2 | cut -d\= -f1`"

# GENERAL
alias cd-dev-rb='cd ~/Development/rb/application'
alias cd-dev-ex-rails='cd ~/Development/ruby/examples/depot'
alias my-alias-list='echo "$DEFINED_ALIASES"'
alias reload-aliases='source ~/.bash_aliases'
alias reload-bash-profile='source ~/.bash_profile'

# GIT
alias mgit-log='git log --oneline -n 10'
alias mgit-log-decorate='git log --oneline --graph --decorate'
alias mgit-log-decorate-all='git log --oneline --graph --decorate --all'
alias mgit-status='git status'
alias mgit-fetch='git fetch -p --tags'
alias mgit-checkout='git checkout $@'
alias mgit-rebase='git rebase $@'
alias mgit-rebase-i='git rebase -i $@'
alias mgit-commit='git commit'
alias mgit-commit-amend='git commit --amend'

# RAILS
alias prails='bundle exec bin/rails'
alias prails-gen-scaff='bundle exec bin/rails generate scaffold'
alias prails-gen-migration='bundle exec bin/rails generate migration'
alias prails-gen-channel='bundle exec bin/rails generate channel'
alias prails-db-migrate='bundle exec bin/rails db:migrate'
alias prails-db-rollback='bundle exec bin/rails db:rollback'
alias prails-db-migrate-status='bundle exec bin/rails db:migrate:status'
alias prails-test='bundle exec bin/rails test'
alias prails-test-controllers='bundle exec bin/rails test:controllers'
alias prails-test-models='bundle exec bin/rails test:models'

# RAKE
alias prake='bundle exec bin/rake'
alias prake-test='bundle exec bin/rake test'
alias prake-test-controllers='bundle exec bin/rake test:controllers'
alias prake-test-models='bundle exec bin/rake test:models'

alias prake-spec='bundle exec bin/rails spec'

# RSPEC
alias pspec='bundle exec bin/rspec'

# RB
alias rb-git-pull='git fetch -p --tags && git pull && ./bin/install'


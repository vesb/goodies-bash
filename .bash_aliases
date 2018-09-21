DEFINED_ALIASES="`grep -E '^alias' ${BASH_SOURCE[0]} | cut -d\  -f2 | cut -d\= -f1`"
function make-completion-wrapper () {
  local function_name="$2"
  local arg_count=$(($#-3))
  local comp_function_name="$1"
  shift 2
  local function="
    function $function_name {
      ((COMP_CWORD+=$arg_count))
      COMP_WORDS=( "$@" \${COMP_WORDS[@]:1} )
      "$comp_function_name"
      return 0
    }"
  eval "$function"
  #echo $function_name
  #echo "$function"
}
for ALIAS in $DEFINED_ALIASES; do
  case $ALIAS in
    mgit-*)
      GIT_COMPLETE_FUNC=`grep "alias $ALIAS=" ${BASH_SOURCE[0]} | cut -d\= -f2 | cut -d\' -f2 | awk '{print "_"$1"_"$2}'`
      __git_complete $ALIAS $GIT_COMPLETE_FUNC
      ;;
    prails-*)
      RAILS_COMMAND=`grep "alias $ALIAS=" ${BASH_SOURCE[0]} | cut -d\= -f2 | cut -d\' -f2 |\
                     sed -E 's/(\-+[[:alpha:]]+)//g' | sed -E 's/[[:space:]]+$//g' |\
                     cut -d\  -f3-4 | cut -d\/ -f2`
      make-completion-wrapper __rails _$ALIAS $RAILS_COMMAND
      eval `complete -p rails | sed "s/_rails/$ALIAS/g" | sed "s/ rails/ $ALIAS/"`
      ;;
    prake-*)
      RAKE_COMMAND=`grep "alias $ALIAS=" ${BASH_SOURCE[0]} | cut -d\= -f2 | cut -d\' -f2 |\
                     sed -E 's/(\-+[[:alpha:]]+)//g' | sed -E 's/[[:space:]]+$//g' |\
                     cut -d\  -f3-4 | cut -d\/ -f2`
      make-completion-wrapper _rakecomplete _$ALIAS $RAKE_COMMAND
      eval `complete -p rake | sed "s/rakecomplete/$ALIAS/g" | sed "s/ rake/ $ALIAS/"`
      ;;
  esac

done

# GENERAL
alias cd-dev-rb='cd ~/Development/rb/application'
alias cd-dev-ex-rails='cd ~/Development/ruby/examples/depot'
alias my-alias-list='echo "$DEFINED_ALIASES"'
alias reload-aliases="source ${BASH_SOURCE[0]}"
alias reload-bash-profile='source ~/.bash_profile'

# GIT
alias mgit-log='git log --oneline -n 10'
__git_complete mgit-log=- _git_log
alias mgit-log-decorate='git log --oneline --graph --decorate'
alias mgit-log-decorate-all='git log --oneline --graph --decorate --all'
alias mgit-status='git status'
alias mgit-fetch='git fetch -p --tags'
alias mgit-checkout='git checkout'
alias mgit-rebase='git rebase'
alias mgit-rebase-i='git rebase -i'
alias mgit-commit='git commit'
alias mgit-commit-amend='git commit --amend'
alias mgit-merge-no-ff='git merge --no-ff'
alias mgit-merge-ff-only='git merge --ff-only'

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


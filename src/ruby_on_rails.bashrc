#!/bin/bash

# RUBY ON RAILS

alias taillogdev='tail -f log/development.log | bat --paging=never -l log'
alias taillogtest='tail -f log/test.log | bat --paging=never -l log'

alias be='bundle exec '
alias ber='bundle exec rails '
alias gm='bundle exec rails generate migration '
## @NOTE: "nproc" returns the number or processing units (e.g. 8 for a 4-core CPU with HT)
alias bi='bundle install -j $(getconf _NPROCESSORS_ONLN) '
alias migrate_all='bundle exec rake db:migrate && bundle exec rake db:migrate RAILS_ENV=test'
alias bers='bundle exec rspec '

alias becop="bundle exec rubocop --parallel "
# run rubocop on not yet commited files only
alias becop_new="git add -N . && git diff --name-only | xargs bundle exec rubocop"

function truncatelogs() {
  declare -a logfiles=("log/development.log"
                       "log/test.log"
                       "log/appsignal.log"
                       "log/scout_apm.log"
                       ".byebug_history"
                       )
  for logfile in "${logfiles[@]}"
  do
    if test -f "$logfile"; then
      cat /dev/null > "$logfile"
    fi
  done
}
alias clearlogs=truncatelogs


export DISABLE_SPRING=1

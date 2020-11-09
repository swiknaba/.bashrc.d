#!/bin/bash

# RUBY ON RAILS

alias be='bundle exec '
alias ber='bundle exec rails '
alias gm='bundle exec rails generate migration '
## @NOTE: "nproc" returns the number or processing units (e.g. 8 for a 4-core CPU with HT)
alias bi='bundle install -j $(getconf _NPROCESSORS_ONLN) '
alias migrate_all='bundle exec rake db:migrate && bundle exec rake db:migrate RAILS_ENV=test'
alias bers='bundle exec rspec '

alias becop="bundle exec rubocop "
# run rubocop on not yet commited files only
alias becop_new="git add -N . && git diff --name-only | xargs bundle exec rubocop"

#!/bin/bash
# shellcheck disable=SC2139
# shellcheck disable=SC2154

# @TODO: should address failing shell checks that are ignored here for now

# GIT

# `master` or `main`
function gitMainBranch() {
  # tr -d '*'            => remove * symbol in case main branch is already checked out
  # awk '{print $1}'     => git branch prints a space in front of branch names, we only want the 2nd part thus
  git branch | grep -E 'master|main' | tr -d '*' | awk '{print $1}'
}
alias gmb=gitMainBranch

function git_clean1() {
  git fetch -p
  git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -D
}

function git_clean2() {
  git fetch -p
  for branch in $(git branch -vv | grep ': gone]' | awk '{print $1}')
  do
    git branch -D "$branch"
  done
}

function git_clean_tags() {
  git tag -l | xargs git tag -d
  git fetch --tags
}

## prepare for work
function git_clean() {
  git_clean1
  git_clean2
  git_clean_tags
}


function git_all(){
  git checkout "$(gitMainBranch)"
  git fetch --all
  git pull --all --ff-only
  git fetch --tags
  git_clean
}

## frequently used commands
function rebase_master() {
  git pull --rebase origin "$(gitMainBranch)"
}

alias commit='git add . && git commit -m '
alias amend='git add . && git commit --amend '
alias gp='git push '

function reset_file() {
  git checkout origin/"$(gitMainBranch) $1"
}

#!/bin/bash
# shellcheck disable=SC2139
# shellcheck disable=SC2154

# @TODO: should address failing shell checks that are ignored here for now

# GIT

# `master` or `main`
function gitMainBranch() {
  # tr -d '*'            => remove * symbol in case main branch is already checked out
  # awk '{print $1}'     => git branch prints a space in front of branch names, thus we want the 2nd part
  # the regexes match the branch name "master"/"main" exactly, allowing a leading space/*
  #   since that is from the "git branch" output
  declare -a regexes=("^\*?\s{0,}master$"
                      "^\*?\s{0,}main$"
                      )
  declare branch_name

  for regex in "${regexes[@]}"
  do
    if [[ -z "$branch_name" ]]
    then
      branch_name=$(git branch | grep -E "${regex}" | tr -d '*' | awk '{print $1}')
    fi
  done

  echo "$branch_name"
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

function git_all() {
  git checkout "$(gitMainBranch)"
  git fetch --all
  git pull --all --ff-only
  git fetch --tags
  git_clean
}
alias ga=git_all

## frequently used commands
function rebase_master() {
  git pull --rebase origin "$(gitMainBranch)"
}

# git merge master/main
function gmm() {
  git merge origin/"$(gitMainBranch)"
}

function reset_file() {
  git checkout origin/"$(gitMainBranch)" "$1"
}

alias commit='git add . && git commit -m '
alias amend='git add . && git commit --amend '
alias gp='git push '
alias gco='git checkout '

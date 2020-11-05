#!/bash
# shellcheck disable=SC2139
# shellcheck disable=SC2154

# @TODO: should address failing shell checks that are ignored here for now

# GIT

## prepare for work
alias git_clean="git_clean1; git_clean2; git_clean_tags"
alias git_clean1="git fetch -p && git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -d"
alias git_clean2="git fetch -p && for branch in $(git branch -vv | grep ': gone]' | awk '{print $1}'); do git branch -D $branch; done"
alias git_clean_tags="git tag -l | xargs git tag -d && git fetch --tags "

alias git_all=' git checkout master && git fetch --all && git pull --all --ff-only && git fetch --tags && git_clean '

## frequently used commands
alias rebase_master='git pull --rebase origin master'
alias commit='git add . && git commit -m '
alias amend='git add . && git commit --amend '
alias gp='git push '

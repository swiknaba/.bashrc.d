# GIT

alias git_clean="git fetch -p && git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -d && git fetch -p && for branch in `git branch -vv | grep ': gone]' | awk '{print $1}'`; do git branch -D $branch; done && git_clean_tags"
alias rebase_master='git pull --rebase origin master'
alias git_all=' git checkout master && git fetch --all && git pull --all --ff-only && git fetch --tags && git_clean '
alias commit='git add . && git commit -m '
alias amend='git add . && git commit --amend '
alias gp='git push '
alias git_clean_tags="git tag -l | xargs git tag -d && git fetch --tags "

#!/bin/bash

# RBENV
# https://github.com/rbenv/rbenv

# @TODO: see: https://github.com/marcqualie/dotfiles/blob/master/.zsh/functions.sh#L9
# improve loading this only when required
# https://github.com/koalaman/shellcheck/wiki/SC2230
if command -v rbenv > /dev/null
then
  eval "$(rbenv init -)"
fi

alias rbenv_update="cd ~/.rbenv/plugins/ruby-build && git pull"

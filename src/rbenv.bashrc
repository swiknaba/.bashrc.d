#!/bin/bash

# RBENV
# https://github.com/rbenv/rbenv

# https://github.com/koalaman/shellcheck/wiki/SC2230
if command -v rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias rbenv_update="cd ~/.rbenv/plugins/ruby-build && git pull"

#!/bin/bash

# RBENV
# https://github.com/rbenv/rbenv

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias rbenv_update="cd ~/.rbenv/plugins/ruby-build && git pull"

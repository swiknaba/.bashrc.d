#!/bin/bash

# ADVOPORT

# to create a profile for tool belt, run:
#   cx config create SWEPP
# docs: https://help.cloud66.com/rails/references/toolbelt.html#profile-commands

alias sshadvoport='cx --profile SWEPP ssh -s advoport -e production antelope'
alias sshadvoportstaging='cx --profile SWEPP ssh -s advoport -e staging drake'
alias advoport_translate='bundle exec rake translation:sync && bundle exec i18n-tasks normalize '

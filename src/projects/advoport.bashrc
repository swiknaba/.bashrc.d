#!/bin/bash

# ADVOPORT

alias sshadvoport=' cx ssh -s advoport -e production antelope'
alias sshadvoportstaging=' cx ssh -s advoport -e staging drake'
alias advoport_translate=' bundle exec rake translation:sync && bundle exec i18n-tasks normalize '

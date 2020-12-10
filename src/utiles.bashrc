#!/bin/bash

# UTILS

alias flush_dns="sudo killall -HUP mDNSResponder; sudo killall mDNSResponderHelper; sudo dscacheutil -flushcache"
alias commandIsDisabled='echo "This command is currently disabled in your bash-profile." && exit;'

## requires LSD to be installed: https://github.com/Peltoche/lsd
## -> also requires https://github.com/ryanoasis/nerd-fonts
alias ls='lsd'

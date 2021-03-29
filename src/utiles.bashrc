#!/bin/bash

# UTILS

alias flushdns="sudo killall -HUP mDNSResponder; sudo killall mDNSResponderHelper; sudo dscacheutil -flushcache"
alias commandIsDisabled='echo "This command is currently disabled in your bash-profile." && exit;'

#!/bin/bash

# UTILS
alias commandIsDisabled='echo "This command is currently disabled in your bash-profile." && exit;'

flushdns() {
  dscacheutil -flushcache
  sudo killall -HUP mDNSResponder

  if command -v dnsmasq > /dev/null
  then
    sudo brew services restart dnsmasq
  fi
}

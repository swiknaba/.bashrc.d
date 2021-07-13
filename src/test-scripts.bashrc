#!/bin/bash

# usage
#  - turn on: dbl_proxy
#  - turn on: dbl_proxy 1080
#  - turn off: dbl_proxy off

dbl_proxy () {
# e.g. "en0"
# This grabs the first active device, which might not be the correct one
# ACTIVE_DEVICE="$(ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active' | grep -E -o -m 1 '^[^\t:]+')"

ACTIVE_DEVICE="en0"

# e.g. "Ethernet"
ACTIVE_PORT="$(networksetup -listnetworkserviceorder | grep "$ACTIVE_DEVICE" | sed -n "s/^.*Port:\s*\(.*\),.*$/\1/p" | xargs)"


if [[ $1 == "off" ]]
then
  # turn proxy off
  networksetup -setsocksfirewallproxystate "$ACTIVE_PORT" off
else
  # first argument or 1080
  PORT=${1:-1080}

  # configure Proxy
  networksetup -setsocksfirewallproxy "$ACTIVE_PORT" 127.0.0.1 "$PORT"

  # turn proxy on
  networksetup -setsocksfirewallproxystate "$ACTIVE_PORT" on
fi
}


dbl_vpn_start () {
  PORT=${1:-1080} # first argument or 1080
  dbl_proxy "$PORT" # enable Proxy in system settings
  nohup ssh -N -M -S /tmp/sshtunnel -D "$PORT" root@3.68.105.221 -p22 &>/dev/null &
}

dbl_vpn_stop () {
  # shellcheck disable=SC2009
  # matching grep with a regex prevents also matching the grep command itself (due to ps)
  PID="$(ps -eaf | grep "[/]tmp/sshtunnel" | awk '{print $2}')"
  kill "$PID"
  dbl_proxy "off"
}

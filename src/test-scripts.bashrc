#!/bin/bash
# put temp scripts here for running them against the linter..


# e.g. "en0"
ACTIVE_DEVICE="$(ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active' | egrep -o -m 1 '^[^\t:]+')"

# e.g. "Ethernet"
ACTIVE_PORT="$(networksetup -listnetworkserviceorder | grep "$ACTIVE_DEVICE" | sed -n "s/^.*Port:\s*\(.*\),.*$/\1/p" | xargs)"


# configure Proxy
networksetup -setsocksfirewallproxy "$ACTIVE_PORT" 127.0.0.1 1080

# turn proxy on
networksetup -setsocksfirewallproxystate "$ACTIVE_PORT" on

# turn proxy off
networksetup -setsocksfirewallproxystate "$ACTIVE_PORT" off

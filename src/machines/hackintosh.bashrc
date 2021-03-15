#!/bin/bash

## Kraken NZXT X63
### pump control
# tool: liquidctl
#
# source: https://github.com/liquidctl/liquidctl/blob/master/docs/kraken-x3-z3-guide.md
#
# commands:
#   liquidctl initialize  # only after hard-reset
#   liquidctl status
#   liquidctl set pump speed 75

#
# by default, sets the pump speed to 70%
# optionally, pass any desired pump speed as first argument:
# > kraken_set_pump_speed 75
#
# :warning: on edit, also copy-paste over here: launchd_scripts/kraken.sh
#
kraken_set_pump_speed () {
  # return early if liquidctl is not installed
  if command -v liquidctl > /dev/null
  then
    CURRENT_PUMP_DUTY="$(liquidctl status | grep duty | awk '{print $4}')"
    TARGET_PUMP_SPEED=${1:-70} # first argument or 70
    if [[ $CURRENT_PUMP_DUTY != $TARGET_PUMP_SPEED ]]
    then
      eval "(liquidctl set pump speed $TARGET_PUMP_SPEED)"
    fi
    # we want to see the pump speed of the new duty level
    # which takes a while, hence we have to wait a few seconds
    echo 'updating.'
    sleep 1
    echo 'updating..'
    sleep 1
    echo 'updating...'
    sleep 1
    liquidctl status
  else
    echo "liquidctl is not installed. Run 'brew install liquidctl' to install it."
  fi
}

alias kraken='liquidctl status'

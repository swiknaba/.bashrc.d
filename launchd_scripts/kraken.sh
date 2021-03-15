#!/bin/sh

#
# :warning: do not edit here, but edit the original file!
# this is a copy from src/machines/hackintosh.bashrc
#

if command -v liquidctl > /dev/null
then
  CURRENT_PUMP_DUTY="$(liquidctl status | grep duty | awk '{print $4}')"
  TARGET_PUMP_SPEED=${1:-70} # first argument or 70
  if [[ $CURRENT_PUMP_DUTY != "$TARGET_PUMP_SPEED" ]]
  then
    eval "(liquidctl set pump speed "${TARGET_PUMP_SPEED}")"
  fi
fi

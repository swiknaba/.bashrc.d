#!/bin/bash

# install a custom launchd agent
# @NOTE: LaunchAgents run onyl when you're logged in
#        LaunchDeamons can also run, when you're NOT logged in

#
# start
#   > launchctl load -w ~/Library/LaunchAgentskraken.plist
# end
#   > launchctl unload -w ~/Library/LaunchAgentskraken.plist
#
# check if it is loaded
#   > launchctl list | grep kraken
#

launchd_agent_install () {
  AGENT_NAME=$1
  if [[ $AGENT_NAME != '' ]]
  then
    # remove existing launch agent
    rm "$HOME/Library/LaunchAgents/$AGENT_NAME.plist"
    # copy launch agent from bashrc.d directoy
    cp "$HOME/.bashrc.d/launchd_agents/$AGENT_NAME.plist" "$HOME/Library/LaunchAgents/$AGENT_NAME.plist"
    # give correct permissions to plist
    eval "$(sudo chown root:wheel $HOME/Library/LaunchAgents/$AGENT_NAME.plist)"
    # give correct permissions to script
    eval "$(chmod a+x ~/.bashrc.d/launchd_scripts/$AGENT_NAME.sh)"
  else
    echo "Expected agent name to be passed as first argument, got '$AGENT_NAME'"
  fi
}

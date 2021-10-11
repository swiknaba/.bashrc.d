#!/bin/bash

# install a custom launchd agent
# @NOTE: LaunchAgents only run when you're logged in
#        LaunchDeamons can also run, when you're NOT logged in

#
# start
#   > launchctl load -w ~/Library/LaunchAgents/kraken.plist
# end
#   > launchctl unload -w ~/Library/LaunchAgents/kraken.plist
#
# check if it is loaded
#   > launchctl list | grep kraken
#
# link the launchd agent
#   > plutil -lint ~/Library/LaunchAgents/kraken.plist

launchd_agent_lint () {
  AGENT_NAME=$1
  plutil -lint ~/.bashrc.d/launchd_agents/"$AGENT_NAME".plist
}

launchd_agent_install () {
  AGENT_NAME=$1
  if [[ $AGENT_NAME != '' ]]
  then
    # remove existing launch agent
    rm "$HOME/Library/LaunchAgents/$AGENT_NAME.plist"
    # copy launch agent from bashrc.d directoy
    cp "$HOME/.bashrc.d/launchd_agents/$AGENT_NAME.plist" "${HOME}/Library/LaunchAgents/${AGENT_NAME}.plist"
    # give correct ownershipt to script
    eval "$(sudo chown root:wheel ~/.bashrc.d/launchd_scripts/"${AGENT_NAME}".sh)"
    # give correct permissions to script
    eval "$(chmod a+x ~/.bashrc.d/launchd_scripts/"${AGENT_NAME}".sh)"
    # (re)start the new agent
    if launchctl list | grep "$AGENT_NAME" > /dev/null
    then
      eval "$(launchctl unload -w ~/Library/LaunchAgents/"${AGENT_NAME}".plist)"
    fi
    eval "$(launchctl load -Fw ~/Library/LaunchAgents/"${AGENT_NAME}".plist)"
  else
    echo "Expected agent name to be passed as first argument, got '$AGENT_NAME'"
  fi
}

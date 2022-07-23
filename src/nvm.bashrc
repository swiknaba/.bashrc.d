#!/bin/bash

# NVM - node version manager
## https://github.com/nvm-sh/nvm

# check current LTS version on: https://nodejs.org/en/
# then set globael default to LTS: nvm alias default v14.17.0

export NVM_DIR="$HOME/.nvm"
export NVM_HOMEBREW_PATH="/opt/homebrew/opt/nvm"
# shellcheck source=/dev/null
[ -s "$NVM_HOMEBREW_PATH/nvm.sh" ] && \. "$NVM_HOMEBREW_PATH/nvm.sh"  # This loads nvm
# shellcheck source=/dev/null
[ -s "$NVM_HOMEBREW_PATH/etc/bash_completion.d/nvm" ] && \. "$NVM_HOMEBREW_PATH/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# increase the default amount of memory allocated by node from 1.5GB to 8GB
export NODE_OPTIONS=--max-old-space-size=4096

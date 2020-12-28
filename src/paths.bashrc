#!/bin/bash

# PATHS

export NVM_DIR="$HOME/.nvm"
# shellcheck source=/dev/null
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# shellcheck source=/dev/null
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# binaries with superuser (root) privileges
export PATH="/usr/local/sbin:$PATH"

# unbundled packages that we need on top of macOS default stuff
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="/usr/local/opt/nss/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/opt/libressl/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/node@10/bin:$PATH"
export PATH="/usr/local/opt/libpcap/bin:$PATH"
export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"

# PostgreSQL
export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH

# Ruby & Rails
export PATH="$HOME/.rbenv/bin:$PATH"

# JavaScript
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Golang
export GOROOT=/usr/local/go
export GOPATH=$HOME/Sites/
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

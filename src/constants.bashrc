#!/bin/bash

# CONSTANTS

# security added to macOS High Sierra restricts multithreading, thus scripts will fail. This is a fix.
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# set default terminal-editor to nano
export EDITOR=nano
VISUAL="$EDITOR"
export VISUAL
export BUNDLER_EDITOR=atom

# ignore consecutive duplicates when running `history` in bash
HISTCONTROL=ignoredups

GPG_TTY=$(tty)
export GPG_TTY

# enable GO modules for bufallow to allow working outside GOPATH
# see: https://gobuffalo.io/en/docs/gomods
export GO111MODULE=on

# RUBY
## this may interfere with building old versions of Ruby (e.g <2.4) that use OpenSSL <1.1.
RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
export RUBY_CONFIGURE_OPTS

# Guile
export GUILE_LOAD_PATH="/usr/local/share/guile/site/3.0"
export GUILE_LOAD_COMPILED_PATH="/usr/local/lib/guile/3.0/site-ccache"
export GUILE_SYSTEM_EXTENSIONS_PATH="/usr/local/lib/guile/3.0/extensions"

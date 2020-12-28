#!/bin/bash

# CONSTANTS

# apple sucks in writing software, motherfuckers
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

#!/bash

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

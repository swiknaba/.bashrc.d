#!/bin/bash

# RBENV
# https://github.com/rbenv/rbenv

# @TODO: see: https://github.com/marcqualie/dotfiles/blob/master/.zsh/functions.sh#L9
# improve loading this only when required
# https://github.com/koalaman/shellcheck/wiki/SC2230
# if command -v rbenv > /dev/null
# then
#   eval "$(rbenv init -)"
# fi

# alias rbenv_update="cd ~/.rbenv/plugins/ruby-build && git pull"


## Replaced rbenv with chruby
## https://github.com/postmodern/chruby
#
# use https://github.com/postmodern/ruby-install
# to install ruby versions; install MRI:
# > ruby-install ruby        # omiting version installs current stable
# > ruby-install ruby 2.7.5  # installing specific version
#

# When chruby is first loaded by the shell, it will auto-detect Rubies installed in
#   /opt/rubies/
#   ~/.rubies/
# After installing new Rubies, you must restart the shell before chruby can recognize them.

source $HOMEBREW_PREFIX/opt/chruby/share/chruby/chruby.sh
source $HOMEBREW_PREFIX/opt/chruby/share/chruby/auto.sh

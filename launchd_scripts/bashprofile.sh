#!/bin/bash

#
# :warning: do not edit here, but edit the original file!
# this is a copy from src/machines/hackintosh.bashrc
#

if command -v git > /dev/null
then
  cd ~/.bashrc.d/ || exit
  git checkout main
  git fetch --all
  git pull --all --ff-only
fi

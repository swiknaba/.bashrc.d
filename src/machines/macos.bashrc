#
# stuff I want to run on any machine that runs macOS
#
#
# :warning: on edit, also copy-paste over here: launchd_scripts/bashprofile.sh
#
update_bash_profile () {
  cd ~/.bashrc.d/ || return

  git checkout main
  git fetch --all
  git pull --all --ff-only
}

alias sites="cd ~/Sites"

# adds an invisible spacer to the dock
dock_spacer () {
  defaults write com.apple.dock persistent-apps -array-add '{tile-type="spacer-tile";}'
  killall Dock
}

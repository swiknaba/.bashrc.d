#!/bin/bash

# copy VSCode settings
## create a backup first
touch ~/Library/Application\ Support/Code/User/settings.json.backup
cp ~/Library/Application\ Support/Code/User/settings.json.backup ~/Library/Application\ Support/Code/User/settings.json
cp vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
echo "Find a backup of your old settings file in '~/Library/Application\ Support/Code/User/settings.json.backup'"



DIR="~/Library/Application\ Support/Code/User"
FILE="$DIR/settings.json"

if `test -f "$FILE"`
then
    echo "You already have a VSCode settings file."
else
    echo "creating VSCode settings file.."
    `touch "$FILE"`
    echo "done."
fi

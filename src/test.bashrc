#!/bin/bash


DIR="$HOME/Library/Application Support/Code/User"
FILE="$DIR/settings.json"

if test -f "$FILE"
then
    echo "You already have a VSCode settings file."
else
    echo "creating VSCode settings file.."
    touch "$FILE"
    echo "done."
fi

# copy VSCode settings
## create a backup first

DIR="$HOME/Library/Application Support/Code/User"
FILE="$DIR/settings.json"
BACKUP="$DIR/settings.json.backup"
DEFAULT_FILE="vscode/settings.json"

touch "$BACKUP"
cp "$BACKUP" "$FILE"
cp "$DEFAULT_FILE" "$FILE"

echo "Find a backup of your old settings file in '$BACKUP'"

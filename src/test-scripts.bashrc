#!/bin/sh
# Environment Variables:
#   PERMITTED_GITHUB_USERNAMES - List of github usernames that can use this host

AUTHORIZED_KEYS=""

for USERNAME in $PERMITTED_GITHUB_USERNAMES
do
  # echo "USERNAME: $USERNAME"
  KEYS=$(curl -s https://github.com/$USERNAME.keys)
  AUTHORIZED_KEYS="$AUTHORIZED_KEYS# github.com/$USERNAME"
  AUTHORIZED_KEYS="$AUTHORIZED_KEYS
$KEYS
"
done

echo "$AUTHORIZED_KEYS" > ~/.ssh/authorized_keys

# Run command as is passed in
exec "$@"

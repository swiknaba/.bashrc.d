# An Organized Bash Profile

![Shell Lint](https://github.com/swiknaba/.bashrc.d/workflows/ShellLint/badge.svg)

## Publications
https://dev.to/swiknaba/how-to-organize-your-bash-profile-20eb

## How to install
clone this repo to `~/` as `.bashrc.d`. Use this command:

```shell
cd ~/ && git clone https://github.com/swiknaba/.bashrc.d.git
```

Your `~/.bash_profile` should only contain the following:

```bash
#!/bin/bash

# https://github.com/koalaman/shellcheck/wiki/SC2044
shopt -s globstar nullglob
for file in ~/.bashrc.d/src/**/*.bashrc
do
  source "$file"
done
```

Ensure to set the correct permission level:

```bash
chmod -R 700 ~/.bashrc.d
find ~/.bashrc.d/src -name '*.bashrc' | xargs chmod +x
```

## Notes
### Use original command which is aliased
Assume you have an alias like `alias ls='lsd'`, thus you will execute `lsd` when calling `ls`.
If you intend to use the original `ls` command instead of `lsd` temporarily, then use [command](https://pubs.opengroup.org/onlinepubs/009604499/utilities/command.html):

```shell
command ls
# also works with options:
command ls -al
```


###  Bash version on macOS
As of 2020, Apple still ships macOS with Bash version 3.

Above-mentioned script (`shopt`) was only introduced in Bash 4.

Best, if you upgrade to Bash >= 5.


### Bashrc vs. BashProfile
> This means that .bash_profile is great for commands that should run only once and .bashrc for commands that should run every time you start a new shell.

https://github.com/thoughtbot/til/blob/master/bash/bash_profile_vs_bashrc.md

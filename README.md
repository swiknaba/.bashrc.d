# `bash_profile` organizer

clone this repo to `~/` as `.bashrc.d`. Use this command:

```shell
cd ~/ && git clone https://github.com/swiknaba/.bashrc.d.git
```

Your `~/.bash_profile` should only contain the following:

```bash
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

for file in $(find ~/.bashrc.d -name '*.bashrc');
do
source "$file"
done
```

Ensure to set the correct permission level:

```bash
chmod -R 700 ~/.bashrc.d
find ~/.bashrc.d -name '*.bashrc' | xargs chmod +x
```

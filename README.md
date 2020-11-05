# `bash_profile` organizer

clone this repo to `~/` as `.bashrc.d`; i.e. this readme will be at:

```shell
~/.bashrc.d/README.md
```

Your `~/.bash_profile` should only contain the following:

```bash
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

for file in ~/.bashrc.d/**/*.bashrc;
do
source "$file"
done
```

Ensure to set the correct permission level:

```bash
chmod -R 700 ~/.bashrc.d
find ~/.bashrc.d -name '*.bashrc' | xargs chmod +x
```

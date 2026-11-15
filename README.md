# Dotfiles

Templates for a one-time, semi-manual Mac setup. Copy what you need and edit
locally. Keep personal settings and credentials out of this repo.

Review `setup.sh` and run the installation commands you need. Install Apple's
Command Line Tools with `xcode-select --install` first if needed.

Review and merge the templates, or copy them (`cp -i` asks before overwriting):

```sh
cp -i .zshrc .gitconfig .tmux.conf "$HOME/"
mkdir -p "$HOME/.local/bin"
cp -i bin/* "$HOME/.local/bin/"
```

Set your Git identity in `~/.gitconfig` and customize `~/.zshrc` directly.
Apps handle their own config sharing.

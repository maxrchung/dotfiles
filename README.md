Some personal config files, mostly for Unix systems. Clone this to `~/dotfiles` then use `rsync.sh` to override `~/*` files.

```
cd ~
git clone https://github.com/maxrchung/dotfiles.git
chmod +x dotfiles/rsync.sh
dotfiles/rsync.sh
source ~/.zshrc
```

After this initial setup, you can run `mc-source` to pull and apply new updates.
Some personal config files, mostly for Unix systems. Clone this repo to `~/dotfiles` then use `rsync.sh` to override `~/*` files.

```
cd ~
git clone https://github.com/maxrchung/dotfiles.git
chmod +x dotfiles/rsync.sh
dotfiles/rsync.sh
source ~/.zshrc
```

After this initial setup, you can just run the `mc-source` alias to get new updates.
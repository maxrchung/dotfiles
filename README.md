Clone this to `~/dotfiles` then let `rsync` override `.zshrc`.

```
cd ~
git clone https://github.com/maxrchung/dotfiles.git
chmod +x dotfiles/rsync.sh
dotfiles/rsync.sh
source ~/.zshrc
mc-source
```

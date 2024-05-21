# aliases
# You'll want to clone this repo to ~/dotfiles
alias mc-source='git -C ~/dotfiles pull && ~/dotfiles/rsync.sh && source ~/.zshrc'
alias mc-killnode='killall -9 node'

# vscode
export PATH="$PATH:$HOME/.toolbox/bin:$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Increase node memory limit
export NODE_OPTIONS=--max-old-space-size=8192

# pip
export PATH="$PATH:$HOME/.local/bin"


# https://stackoverflow.com/questions/1593051/how-to-programmatically-determine-the-current-checked-out-git-branch
git-branch() {
  local ref=$(git symbolic-ref --short HEAD 2> /dev/null)
  if [ -n "${ref}" ]; then
    echo " ${ref}"
  else
    echo ""
  fi
}

# https://zsh.sourceforge.io/Doc/Release/Prompt-Expansion.html
autoload -U colors && colors
setopt PROMPT_SUBST
export PROMPT='
%n %m %D{%y-%m-%d %H:%M:%S}$(git-branch) %~
%{$fg[magenta]%}⚡%{$fg[default]%}'

set-title() {
    echo -e "\e]0;$*\007"
}

ssh() {
    set-title $*;
    /usr/bin/ssh -2 $*;
    set-title $HOST;
}

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

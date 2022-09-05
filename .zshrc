# Auto
autoload -U compinit; compinit
setopt autocd autopushd
zstyle ':completion:*' menu select
zmodload zsh/complist

# History
export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE=~/.zsh_history
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS

# Powerlevel10k
source $(brew --prefix powerlevel10k)/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Plugins
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh/site-functions/aws_zsh_completer.sh

# Alias
alias vim="nvim"
alias ls="exa -aT -L 1"
alias tree="exa -T"
alias ...="cd ../.."
alias poweroff="poweroff 2> /dev/null || sudo systemctl poweroff"

# vi mode
bindkey -v

# Delete Key Fix
bindkey -v "^[[P" delete-char

# kubectl default editor
export KUBE_EDITOR=nvim

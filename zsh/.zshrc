# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

plug	"zsh-users/zsh-autosuggestions"
plug	"zap-zsh/supercharge"
plug	"zsh-users/zsh-syntax-highlighting"
plug 	"zap-zsh/vim"

# Load and initialise completion system
autoload -Uz compinit
compinit

# Custom prompt
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '
setopt PROMPT_SUBST
PROMPT='[%F{green}%*%f] %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '

# Aliases
alias nv="nvim" 
alias g="git"
alias desk="cd ~/Desktop/"
alias doc="cd ~/Documents/"
alias conf="cd ~/.config/"
alias ll="ls -la"

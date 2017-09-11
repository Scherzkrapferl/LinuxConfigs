# Set up the prompt

autoload -Uz promptinit
promptinit
#prompt suse	# standard einstellungen
#geänderte prompt:
PS1="%{%F{green}%}%n%{%F{red}%}@%{%F{green}%}%m %{%f%}%~ %{> %f%}% "
# um weiß zu schreiben {White} groß geschrieben


setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'


### geändert ###

# ALIASES
alias ls="ls --color=auto"
alias la="ls -al"
alias ll="ls -al | less"
alias sl=ls
alias update="sudo apt-get update && sudo apt-get upgrade" 
alias shutdown="sudo shutdown -h now"


echo -e " "
echo -e "#################################"
echo -e "#\t                   \t#"
echo -e "#\tUsername: $USER\t#"
echo -e "#\tHostname: $HOST\t#"
echo -e "#\tKernel: $(uname -r)\t#"
echo -e "#\t                   \t#"
echo -e "#################################"
echo -e "#\t                   \t#"
date "+#%tDatum: %d.%m.%Y%t#%n#%tUhrzeit: %H:%M:%S%t#"
echo -e "#\t                   \t#"
echo -e "#################################"
echo -e " "
df / -h 
echo -e " " 


# Syntax highlightning
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

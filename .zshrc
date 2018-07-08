export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to oh-my-zsh installation.
export ZSH=/home/parth-shel/.oh-my-zsh

ZSH_THEME="gentoo"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='vim'
else
	export EDITOR='gvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# parth_shel's aliases:
alias cls='clear'
alias quit='exit'
alias tree='pwd'
alias makeout='make'
alias sublime='subl'
alias datassh='ssh pshelgao@data.cs.purdue.edu'
alias settings='env XDG_CURRENT_DESKTOP=GNOME gnome-control-center &'
alias whatsMyIP='dig TXT +short o-o.myaddr.l.google.com @ns1.google.com'
alias system-update='sudo ~/.config/scripts/system-upgrade.sh'
alias install='sudo apt-get install'
alias remove='sudo apt-get remove'

# environment variables

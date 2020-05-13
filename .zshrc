# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="frisk"

# Example aliases
# alias zshconfig="vim ~/.zshrc"
# alias ohmyzsh="vim ~/.oh-my-zsh"
source ~/.aliases
source <(kubectl completion zsh)
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx encode64 fasd vi-mode kube-ps1)
if (( ! ${fpath[(I)/usr/local/share/zsh/site-functions]} )); then
  FPATH=/usr/local/share/zsh/site-functions:$FPATH
fi
source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export ANT_HOME=/Users/andrea.iosio/Java/ant
export ANDROID_HOME=/Users/andrea.iosio/Unix/android
export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
#export LC_CTYPE=it_IT.UTF-8
#export LC_ALL=it_IT.UTF-8
export KUBECONFIG=~/.kube/config:~/.kube/config-shared-eks:~/.kube/config-assimoco-eks:~/.kube/config-credem-eks:~/.kube/config-credemvita-eks
export KUBECONFIG=~/.kube/config-amissima-eks:~/.kube/config-global-eks:$KUBECONFIG
export LANG=it_IT.UTF-8
export PAGER=bat
export PATH=/usr/local/texlive/2015basic/bin/universal-darwin:$PATH
export PATH=/usr/texbin:$PATH
export NVM_DIR="$HOME/.nvm" 
. "/usr/local/opt/nvm/nvm.sh"
unsetopt nomatch
# Jenv
eval "$(jenv init -)"
# iTerm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Vi mode indicator
function zle-keymap-select zle-line-init
{
    # change cursor shape in iTerm2
    case $KEYMAP in
        vicmd)      print -n -- "\E]50;CursorShape=0\C-G";;  # block cursor
        viins|main) print -n -- "\E]50;CursorShape=1\C-G";;  # line cursor
    esac

    zle reset-prompt
    zle -R
}

function zle-line-finish
{
    print -n -- "\E]50;CursorShape=0\C-G"  # block cursor
}

zle -N zle-line-init
zle -N zle-line-finish
zle -N zle-keymap-select
# Beginning search with arrow keys
bindkey "^[OA" up-line-or-beginning-search
bindkey "^[OB" down-line-or-beginning-search
bindkey -a "^[[3~" delete-char
bindkey "^[[3~" delete-char
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
# 10ms for key sequences
KEYTIMEOUT=1

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_COMPLETION_TRIGGER='**'

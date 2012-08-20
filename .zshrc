# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want disable red dots displayed while waiting for completion
# DISABLE_COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git python pip extract github)

source $ZSH/oh-my-zsh.sh
source /etc/profile
# Customize to your needs...
export PATH=$PATH:$HOME/AndroidSDK:$HOME/AndroidSDK/tools:$HOME/AndroidSDK/platform-tools
#$(ruby -rubygems -e "puts Gem.user_dir")/bin

export EDITOR="vim"
function sha () {  
echo -n $1 | sha512sum | awk '{ print $1 }'  
}
function mkcd() {
    mkdir -p "$*"
    cd "$*"
}
function gvisudo() {
    EDITOR="gvim -f" sudoedit "$1"
}
alias windoz="sudo grub-reboot 2 && sudo shutdown -r now"
alias whatsup="inxi -I -t cm"
alias prettycode="astyle --style=kr -H -p -k3"
alias dirsize="du -sh"
alias xstart="exec startx"
#Fixing Home, End, Insert and Delete
typeset -A key
key[Home]=${terminfo[khome]}
key[End]=${terminfo[kend]}
key[Insert]=${terminfo[kich1]}
key[Delete]=${terminfo[kdch1]}
[[ -n "${key[Home]}"    ]]  && bindkey  "${key[Home]}"    beginning-of-line
[[ -n "${key[End]}"     ]]  && bindkey  "${key[End]}"     end-of-line
[[ -n "${key[Insert]}"  ]]  && bindkey  "${key[Insert]}"  overwrite-mode
[[ -n "${key[Delete]}"  ]]  && bindkey  "${key[Delete]}"  delete-char
setopt interactivecomments

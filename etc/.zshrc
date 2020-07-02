# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="prose"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx python terminalapp vscode)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export EDITOR="code -n"
alias git=hub
alias atom="code -n"
alias subl="code -n"
alias mate="code -n"
alias free="top -l 1 -s 0 | grep PhysMem:"
alias ping="ping -c 5"
alias weather="curl -sS wttr.in/98122 | head -27 "
alias up="ping 8.8.8.8"
alias cpu="sysctl -n machdep.cpu.brand_string"
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias lock="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
alias icloud="brctl monitor ~/Library/Mobile Documents/com~apple~CloudDocs/"
alias pyc="find . -name \"*.pyc\" -exec rm -rf {} \;"
alias uptime="grc uptime"

# findstr: find non-case-sens strings in current dir, recursive
function findstr() {
    if [ “$2” != “” ]
    then
        grep -inr $1 $2
    else
        if [ “$1” != “” ]
        then
            grep -inr $1 .
        else
            echo “You must search for a string.\nUsage: findstr STRING [PATH]”
        fi
    fi
}

function battery() { ,m
    grc pmset -g batt | egrep "([0-9]+\%).*" -o --colour=auto | cut -f1 -d';'
    grc pmset -g batt | egrep "([0-9]+\%).*" -o --colour=auto | cut -f3 -d';'
}

# show sysinfo on new shell (OSX)
if [[ "$OSTYPE" == "darwin*" ]]; then
    archey
fi
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

### CUSTOM STUFF ###
JAVA_HOME_11="$HOME/piano/amazon-corretto-11.0.19.7.1-linux-x64"
JAVA_HOME_17="$HOME/piano/amazon-corretto-17.0.7.7.1-linux-x64"

export PATH="$HOME/piano/ngrok:$HOME/Downloads/idea-IU-223.8836.41:$JAVA_HOME_11/bin:$PATH"
export JAVA_HOME_11=$JAVA_HOME_11
export JAVA_HOME_17=$JAVA_HOME_17
#default should be java 11
export JAVA_HOME=$JAVA_HOME_11
#export BROWSER=/usr/bin/google-chrome-stable
unset BROWSER

#piano-bash-env
for file in "/home/mike"/piano/gitrepos/piano-bash-env/*.sh; do source "$file"; done

#custom aliases and functions
GITREPOS="$HOME/piano/gitrepos"

alias k="kubectl"
alias cdg="cd $GITREPOS"
alias cdp="cd $GITREPOS/piano-vx"
alias cdpsb="cd $GITREPOS/psb"
alias cdobs="cd $HOME/personal/obsidian"
alias ei3="nvim $HOME/.i3/config"
alias ezshrc="nvim $HOME/.zshrc"
alias vim="nvim"
alias bi3c="cp $HOME/.i3/config $HOME/personal/archdotfiles/.i3/config"
alias bobs="cdobs && git add . && git commit -m \"New update\" && git push origin master"
alias rr="cd $GITREPOS/psb/registry && git pull && swjava 17 && ./gradlew localDockerBuild && docker compose up"

function kctx() {
        kubectl config use-context $1
}

function pacs() {
	sudo pacman -Syu $1
}

function fixlang() {
	setxkbmap -layout us,ru
	setxkbmap -option 'grp:caps_toggle'
}

function swjava() {
	JAVA_VERSION=$1
	if [[ $JAVA_VERSION = 11 ]];
	then
		export JAVA_HOME=$JAVA_HOME_11
	elif [[ $JAVA_VERSION = 17 ]];
	then
		export JAVA_HOME=$JAVA_HOME_17
	fi
}

function disph {
	xrandr --dpi 220 --output eDP-1 --off --output HDMI-1 --primary --mode 2560x1440 --pos 0x0 --rotate normal --output DP-1 --off --output DP-2 --off --output DP-3 --off --output DP-4 --off
}
function dispw {
	xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-1 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1 --off --output DP-2 --off --output DP-3 --off --output DP-4 --off	
}

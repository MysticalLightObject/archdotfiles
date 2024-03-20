## Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
## Initialization code that may require console input (password prompts, [y/n]
## confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi
#
## If you come from bash you might have to change your $PATH.
## export PATH=$HOME/bin:/usr/local/bin:$PATH
#
## Path to your oh-my-zsh installation.
#export ZSH="$HOME/.oh-my-zsh"
#
## Set name of the theme to load --- if set to "random", it will
## load a random theme each time oh-my-zsh is loaded, in which case,
## to know which specific one was loaded, run: echo $RANDOM_THEME
## See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="powerlevel10k/powerlevel10k"
#
## Set list of themes to pick from when loading at random
## Setting this variable when ZSH_THEME=random will cause zsh to load
## a theme from this variable instead of looking in $ZSH/themes/
## If set to an empty array, this variable will have no effect.
## ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
#
## Uncomment the following line to use case-sensitive completion.
## CASE_SENSITIVE="true"
#
## Uncomment the following line to use hyphen-insensitive completion.
## Case-sensitive completion must be off. _ and - will be interchangeable.
## HYPHEN_INSENSITIVE="true"
#
## Uncomment one of the following lines to change the auto-update behavior
## zstyle ':omz:update' mode disabled  # disable automatic updates
## zstyle ':omz:update' mode auto      # update automatically without asking
## zstyle ':omz:update' mode reminder  # just remind me to update when it's time
#
## Uncomment the following line to change how often to auto-update (in days).
## zstyle ':omz:update' frequency 13
#
## Uncomment the following line if pasting URLs and other text is messed up.
## DISABLE_MAGIC_FUNCTIONS="true"
#
## Uncomment the following line to disable colors in ls.
## DISABLE_LS_COLORS="true"
#
## Uncomment the following line to disable auto-setting terminal title.
## DISABLE_AUTO_TITLE="true"
#
## Uncomment the following line to enable command auto-correction.
## ENABLE_CORRECTION="true"
#
## Uncomment the following line to display red dots whilst waiting for completion.
## You can also set it to another string to have that shown instead of the default red dots.
## e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
## Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
## COMPLETION_WAITING_DOTS="true"
#
## Uncomment the following line if you want to disable marking untracked files
## under VCS as dirty. This makes repository status check for large repositories
## much, much faster.
## DISABLE_UNTRACKED_FILES_DIRTY="true"
#
## Uncomment the following line if you want to change the command execution time
## stamp shown in the history command output.
## You can set one of the optional three formats:
## "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
## or set a custom format using the strftime function format specifications,
## see 'man strftime' for details.
## HIST_STAMPS="mm/dd/yyyy"
#
## Would you like to use another custom folder than $ZSH/custom?
## ZSH_CUSTOM=/path/to/new-custom-folder
#
## Which plugins would you like to load?
## Standard plugins can be found in $ZSH/plugins/
## Custom plugins may be added to $ZSH_CUSTOM/plugins/
## Example format: plugins=(rails git textmate ruby lighthouse)
## Add wisely, as too many plugins slow down shell startup.
#plugins=(git)
#
#source $ZSH/oh-my-zsh.sh
#
## User configuration
#
## export MANPATH="/usr/local/man:$MANPATH"
#
## You may need to manually set your language environment
## export LANG=en_US.UTF-8
#
## Preferred editor for local and remote sessions
## if [[ -n $SSH_CONNECTION ]]; then
##   export EDITOR='vim'
## else
##   export EDITOR='mvim'
## fi
#
## Compilation flags
## export ARCHFLAGS="-arch x86_64"
#
## Set personal aliases, overriding those provided by oh-my-zsh libs,
## plugins, and themes. Aliases can be placed here, though oh-my-zsh
## users are encouraged to define aliases within the ZSH_CUSTOM folder.
## For a full list of active aliases, run `alias`.
##
## Example aliases
## alias zshconfig="mate ~/.zshrc"
## alias ohmyzsh="mate ~/.oh-my-zsh"
##




#### CUSTOM STUFF ###
JAVA_HOME_11="/usr/lib/jvm/java-11-amazon-corretto"
JAVA_HOME_17="/usr/lib/jvm/java-17-amazon-corretto"
JAVA_HOME_21="/usr/lib/jvm/java-21-amazon-corretto"

export PATH="$HOME/piano/bin:$HOME/Downloads/idea-IU-223.8836.41:$JAVA_HOME_11/bin:$HOME/bin:$PATH"
export JAVA_HOME_11=$JAVA_HOME_11
export JAVA_HOME_17=$JAVA_HOME_17
export JAVA_HOME_21=$JAVA_HOME_21
#default should be java 11
export JAVA_HOME=$JAVA_HOME_11

#piano-bash-env
for file in "/home/mike"/piano/gitrepos/piano-bash-env/*.sh; do source "$file"; done

#custom aliases and functions
GITREPOS="$HOME/piano/gitrepos"


# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

alias k="kubectl"
alias cdg="cd $GITREPOS"
alias cdp="cd $GITREPOS/piano-vx"
alias cdpsb="cd $GITREPOS/psb"
alias cdobs="cd $HOME/personal/obsidian"
alias cddot="cd $HOME/personal/archdotfiles"
alias ei3="nvim $HOME/.i3/config"
alias ezshrc="nvim $HOME/.zshrc"
alias vim="nvim"
alias bi3c="cp $HOME/.i3/config $HOME/personal/archdotfiles/.i3/config"
alias bobs="cdobs && git add . && git commit -m \"New update\" && git push origin master"
alias rr="cd $GITREPOS/psb/registry && git pull && swjava 17 && ./gradlew localDockerBuild && docker compose up"
alias startvpn="openvpn_start"
alias stopvpn="openvpn_stop"
alias uncommit="git reset --soft HEAD^"
alias sshpc="ssh -p 42069 mike@192.168.3.79"

function kctx() {
        kubectl config use-context $1
}

function dl() {
	yt-dlp -x $1
}

function slaveExec() {
	kctx management
	k exec -it $1 -n jenkins -c jnlp -- bash
}

function pacs() {
	sudo pacman -Syu $1
}

function swjava() {
	JAVA_VERSION=$1
	if [[ $JAVA_VERSION = 11 ]];
	then
		export JAVA_HOME=$JAVA_HOME_11
	elif [[ $JAVA_VERSION = 17 ]];
	then
		export JAVA_HOME=$JAVA_HOME_17
	elif [[ $JAVA_VERSION = 21 ]];
	then
		export JAVA_HOME=$JAVA_HOME_21
	fi
}

function vlcg() {
	if [[ $1 == 1 ]]; then
		vlc $HOME/Music/work_music/Studying\ with\ Gandalf.opus &
	elif [[ $1 == 2 ]]; then
		vlc $HOME/Music/work_music/From\ Amon\ Hen\ to\ Osgiliath.opus &
	fi
}

function os() {
	SSLOCAL_PID=$(pgrep sslocal)
	echo "Shadowsocks proxy PID is: $SSLOCAL_PID. Killing it!"
	kill $SSLOCAL_PID
	sslocal -c $HOME/bin/shadow_config.json &
	sudo openvpn_start
}

function cpi() {
	cp id-ui-2/$1 piano-id-ui/$1
}

function fixJenkins() {
	$HOME/bin/fixJenkins.sh
}
export EDITOR="nvim"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

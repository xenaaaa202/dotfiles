# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

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
# Note: this is generally unnecessary because completion is already case-insensitive.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without prompting
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
# Note: this is only effective in interactive shells. It does not affect
# autocompletion in editors like vscode.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-completions)

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

# Custom prompt: show only ~
PROMPT='%  ~ '

# Alias for shyt script
alias shyt='python /home/xena/shyt2.py'

# Zsh syntax highlighting styles (Gruvbox theme)
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]='fg=#b8bb26'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#b8bb26'
ZSH_HIGHLIGHT_STYLES[function]='fg=#b8bb26'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#b8bb26'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#b8bb26'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#ebdbb2'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#fb4934'
ZSH_HIGHLIGHT_STYLES[argument]='fg=#ebdbb2'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#b8bb26'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#b8bb26'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=#83a598'
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=#83a598'
ZSH_HIGHLIGHT_STYLES[assign]='fg=#ebdbb2'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#fb4934'
ZSH_HIGHLIGHT_STYLES[default]='fg=#ebdbb2'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#fb4934'
ZSH_HIGHLIGHT_STYLES[path]='fg=#ebdbb2,underline'
ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=#fe8019'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#ebdbb2'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=#83a598'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=#b8bb26'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument-unclosed]='fg=#fb4934'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument-unclosed]='fg=#fb4934'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument-unclosed]='fg=#fb4934'
ZSH_HIGHLIGHT_STYLES[rc-quote]='fg=#83a598'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#83a598'
ZSH_HIGHLIGHT_STYLES[bracket-error]='fg=#282828,bg=#fb4934'
ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=#83a598'
ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=#b8bb26'
ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=#fabd2f'
ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg=#fb4934'
ZSH_HIGHLIGHT_STYLES[bracket-level-5]='fg=#d3869b'
ZSH_HIGHLIGHT_STYLES[cursor-matchingbracket]='fg=#282828,bg=#ebdbb2'
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/guido/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Tmux autostart
if command -v tmux>/dev/null; then
      [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
  fi

alias zshconfig="vim ~/.zshrc"
alias atualizazsh="source ~/.zshrc"
alias atualizavim="source ~/.vimrc"
alias lsd="ls -lrth --group-directories-first"
alias df="df -h"
alias criarbranch="git checkout -b"
alias vermemoria="free -h | grep -v 'cache:' | grep -v 'Swap:'"
alias verip= "ip a s wlan0 | awk -F'[/ ]+' '/inet[^6]/{print $3}'"
alias atualizateste="git checkout teste ; git pull origin teste"
alias atualizamaster="git checkout master ; git pull origin master"
alias codecept="vendor/bin/codecept"
alias rodatestes="vendor/bin/codecept run"
alias anchorloansvenv="source /home/guido/Documents/Projects/AnchorLoans/venv/bin/activate"
alias deployheroku="git push heroku master ; heroku ps:scale web=1 ; heroku logs"
alias rank="sort | uniq -c | sort -nr"
alias python2="ipython2"
alias ipython="ipython3"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Added by the Google App Engine SDK
export GAE_SDK=/usr/bin/google_appengine
export PATH=$PATH:$GAE_SDK

export WORKON_HOME=~/.virtualenvs
export PROJECT_HOME=~/Projects
eval "$(pyenv init -)"
#pyenv virtualenvwrapper_lazy


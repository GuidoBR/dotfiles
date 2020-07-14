# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/guido/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh


export DEFAULT_USER="guido"

# Preferred editor for local and remote sessions
export EDITOR='vim'

export PATH="/home/guido/.pyenv/bin:$PATH"

export WORKON_HOME=~/.ve
export PROJECT_HOME=~/Projects
eval "$(pyenv init -)"
pyenv virtualenvwrapper_lazy
export PATH=$PATH:/usr/local/go/bin

export PATH=~/.npm-global/bin:$PATH

alias zshconfig="vim ~/.zshrc"
alias gitundo="git reset --soft HEAD~1"
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
alias workon-pfizer="cd /home/guido/Projects/Modus/Pfizer/hta-automation-serverless ; source ~/.ve/hta-automation-serverless/bin/activate ; eval '$(ssh-agent -s)' ; ssh-add ~/.ssh/id_rsa_pfizer"
alias order66="docker system prune -a && pkill chrome"

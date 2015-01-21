# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="nebirhos"
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias zshconfig="vim ~/.zshrc"
alias lsd="ls -lrth --group-directories-first"
alias trabalha="yiic worker umTrabalho"
alias naotrabalha="yiic worker limpaFila"
alias testes="phpunit unit/"
alias testdox="phpunit --testdox unit/"
alias testcoverage="phpunit --coverage-html ./report unit/"
alias df="df -h"
alias gteste="git checkout teste"
alias gmaster="git checkout master"
alias criarbranch="git checkout -b"
alias gstat="git status"
alias vermemoria="free -h | grep -v 'cache:' | grep -v 'Swap:'"
alias iplocal= "ip a s wlan0 | awk -F'[/ ]+' '/inet[^6]/{print $3}'"
alias atualizateste="git checkout teste ; git pull origin teste"
alias atualizamaster="git checkout master ; git pull origin master"
alias migrationcompleta="echo '\x1b[34;1mAtualizando Banco Principal \x1b[0m' ; ./yiic migrate --interactive=0 ; echo '\x1b[34;1mAtualizando Banco Teste\x1b[0m' ; ./yiic migrate --connectionID=testDb --interactive=0 ; echo '\x1b[34;1mAtualizando Banco Phactory \x1b[0m' ; ./yiic migrate --connectionID=phactoryDb --interactive=0"
alias migrationdowncompleta="echo '\x1b[34;1mAtualizando Banco Principal \x1b[0m' ; ./yiic migrate down ; echo '\x1b[34;1mAtualizando Banco Teste\x1b[0m' ; ./yiic migrate down --connectionID=testDb ; echo '\x1b[34;1mAtualizando Banco Phactory \x1b[0m' ; ./yiic migrate down --connectionID=phactoryDb"
alias acessarhomol="ssh webadm@homologacao.fidelize.com.br"
alias codecept="../vendor/bin/codecept"
alias deployheroku="git push heroku master ; heroku ps:scale web=1 ; heroku logs"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
HIST_STAMPS="yyyy/mm/dd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git, common-aliases, yii, yii2, virtualenvwrapper)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/guido/bin:/usr/local/java/jdk1.7.0_45/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export WORKON_HOME=$HOME/Documentos/virtualenvs/
export PROJECT_HOME=$HOME/Documentos/Projetos/
#source /usr/local/bin/virtualenvwrapper.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

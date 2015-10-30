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

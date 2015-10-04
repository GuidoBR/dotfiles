source ~/.zprezto/init.zsh

# Tmux autostart
if command -v tmux>/dev/null; then
      [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
  fi

alias zshconfig="vim ~/.zshrc"
alias atualizazsh="source ~/.zshrc"
alias atualizavim="source ~/.vimrc"
alias lsd="ls -lrth --group-directories-first"
alias trabalha="yiic worker umTrabalho"
alias naotrabalha="yiic worker limpaFila"
alias testdox="phpunit --testdox unit/"
alias testcoverage="phpunit --coverage-html ./report unit/"
alias df="df -h"
alias criarbranch="git checkout -b"
alias gstat="git status"
alias vermemoria="free -h | grep -v 'cache:' | grep -v 'Swap:'"
alias verip= "ip a s wlan0 | awk -F'[/ ]+' '/inet[^6]/{print $3}'"
alias atualizateste="git checkout teste ; git pull origin teste"
alias atualizamaster="git checkout master ; git pull origin master"
alias codecept="vendor/bin/codecept"
alias rodatestes="vendor/bin/codecept run"
alias anchorloansvenv="source /home/guido/Documents/Projects/AnchorLoans/venv/bin/activate"
alias deployheroku="git push heroku master ; heroku ps:scale web=1 ; heroku logs"
alias rank="sort | uniq -c | sort -nr"
alias python2="ipython"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Added by the Google App Engine SDK
export GAE_SDK=/usr/bin/google_appengine
export PATH=$PATH:$GAE_SDK

if [[ -r ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
	source ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
fi

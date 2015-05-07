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
alias migrationcompleta="echo '\x1b[34;1mAtualizando Banco Principal \x1b[0m' ; ./yiic migrate --interactive=0 ; echo '\x1b[34;1mAtualizando Banco Teste\x1b[0m' ; ./yiic migrate --connectionID=testDb --interactive=0 ; echo '\x1b[34;1mAtualizando Banco Phactory \x1b[0m' ; ./yiic migrate --connectionID=phactoryDb --interactive=0 ; ./yiic migrate --migrationPath=fidelize.migrations --connectionID=db --interactive=0"
alias migrationdowncompleta="echo '\x1b[34;1mAtualizando Banco Principal \x1b[0m' ; ./yiic migrate down ; echo '\x1b[34;1mAtualizando Banco Teste\x1b[0m' ; ./yiic migrate down --connectionID=testDb ; echo '\x1b[34;1mAtualizando Banco Phactory \x1b[0m' ; ./yiic migrate down --connectionID=phactoryDb ; ./yiic migrate down --migrationPath=fidelize.migrations --connectionID=db --interactive=0"
alias acessarhomol="ssh webadm@homologacao.fidelize.com.br"
alias codecept="vendor/bin/codecept"
alias rodatestes="vendor/bin/codecept run"
alias deployheroku="git push heroku master ; heroku ps:scale web=1 ; heroku logs"
alias rank="sort | uniq -c | sort -nr"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

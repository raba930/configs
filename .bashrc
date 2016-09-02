alias dg-start='STATIC_URL=/static/ API_PREFIX=https://dev.datagator.org/api/ JSDEBUG=true python manage.py runserver'
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1='\[\033[1;37m\]\u \[\033[1;34m\]\w \[\033[1;32m\]$(parse_git_branch) \[\033[0;34m\]$ \[\033[0m\]'



# Go to the root of a project (git root)
alias root='cd $(git rev-parse --show-cdup)'
# Pretty print the path
alias path="echo $PATH | tr -s ':' '\n'"
alias vizs="vim ~/.zshrc"
alias vibrew='vim ~/Brewfile'
alias viconf="vim ~/.vimrc"

alias b-g='brew upgrade'
alias b-s='brew services'
alias b-u='brew update'
alias b='bundle exec'
alias h='history'
alias rgr='ranger'
alias man='PAGER=most man'
alias tac=gtac
alias tail=gtail
alias tlf="tail -f"
alias truncate=gtruncate
alias xc='clear'
alias -g ls='ls --color=auto '
alias -g se='| ag'
alias -g jqq='| jq . '
# alias vim='/Applications/MacVim.app/Contents/MacOS/vim'
alias -s log="less -MN"
alias -s rb=vim
alias gdw='git diff --color-words'
alias d-c='docker-compose'
alias dockerip='docker ps | tail -n +2 | while read cid b; do echo -n "$cid\t"; docker inspect $cid | grep IPAddress | cut -d \" -f 4; done'
docker-ip() {
  docker inspect --format '{{ .NetworkSettings.IPAddress }}' "$@"
}
alias docker-clean="docker ps -a | grep Exited | awk '{ print \$1; }' | xargs -n1 docker rm"


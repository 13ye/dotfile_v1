alias pdf="df -H -x tmpfs -x overlay --output"
alias edit_alias="vim ~/.dotfile/zsh/alias.zsh"
alias source_conf="source ~/.zshrc"
alias edit_zshrc="vim ~/.zshrc"
alias vim=nvim
alias vi=vim
alias v=vim
alias t='tmux new-session -A -s main'
alias fn='find ./ -name'
alias p3='python3'
alias ifg='ifconfig'
alias clr='clear'
alias cb='cd ..'
alias cbb='cd ../..'
alias clol='curl -OL'

# frontend related
alias ppm='pnpm'

# git related
alias ga='git add'
alias gcl='git clone'
alias gpl='git pull'

# docker related
alias dp='docker ps'
alias de='docker exec'
alias dr='docker run'
alias dsa='docker start'
alias dso='docker stop'
alias dim='docker image'
alias dims='docker images'
alias dkrm='docker rm'

bindkey \"^P\" up-line-or-beginning-search
bindkey \"^N\" down-line-or-beginning-search


function kill_by_grep {
     ps -aux | grep  $1 | tr -s ' '| cut -d ' ' -f2 | xargs kill -9 ;
}
function k8s_delete_evicted {
    kubectl get pods -n $1| grep Evicted | tr -s ' ' | cut -d ' ' -f 1 |xargs kubectl delete pods -n $1
}

#alias setproxy="export ALL_PROXY=socks5://ip:port"
alias unsetproxy="unset ALL_PROXY"
alias ips="curl cip.cc"

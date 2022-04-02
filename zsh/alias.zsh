alias pdf="df -H -x tmpfs -x overlay --output"
alias edit_alias="vim ~/.dotfile/zsh/alias.zsh"
alias source_conf="source ~/.zshrc"
alias edit_zshrc="vim ~/.zshrc"
alias vim=nvim
alias vi=vim
alias t='tmux new-session -A -s main'
alias fn='find ./ -name'
alias ga='git add'
alias dp='docker ps'
alias dim='docker image'

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

# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

eval `ssh-agent` > /dev/null 2>&1
ssh-add ~/.ssh/id_rsa > /dev/null 2>&1

# User specific aliases and functions
alias ls='ls --color'
alias ll='ls -l'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias gcc='gcc -lm'
alias x='logout'
alias hugin='ssh reon@10.131.0.60 -p 51122 -i ~/.ssh/id_rsa'

function cdls(){
    \cd $1
    ls;
}

alias cd=cdls

alias tree="pwd;find . | sort | sed '1d;s/^\.//;s/\/\([^/]*\)$/|--\1/;s/\/[^/|]*/|  /g'"

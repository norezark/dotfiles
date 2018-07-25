# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

PS1="[\u@\h \w]\$ "

eval `ssh-agent` > /dev/null 2>&1
ssh-add ~/.ssh/id_rsa > /dev/null 2>&1

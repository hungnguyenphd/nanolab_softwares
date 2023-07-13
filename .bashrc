# .bashrc
ulimit -s unlimited
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH=/home/share/local/sbin:$PATH
#export LIBRARY_PATH=/usr/lib:/usr/lib64:$HOME/local/lib:$LIBRARY_PATH
#export LD_LIBRARY_PATH=/usr/lib:/usr/lib64:$HOME/local/lib:$LD_LIBRARY_PATH
#export C_INCLUDE_PATH=/usr/include:$HOME/local/include:$C_INCLUDE_PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
module purge
#module load mpi/openmpi-x86_64

# User specific aliases and functions
alias vbash='vi ~/.bashrc'
alias sbash='source ~/.bashrc'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias mvasp='module load compiler/latest mkl/latest mpi/latest pmi/pmix-x86_64'

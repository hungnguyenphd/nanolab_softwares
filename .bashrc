# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH="/home/share/local/sbin:$PATH"
export LD_LIBRARY_PATH="/usr/lib64:$LD_LIBRARY_PATH"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
module purge
module load compiler/latest mkl/latest mpi/latest icc/latest pmi/pmix-x86_64
# User specific aliases and functions
alias vbash='vi ~/.bashrc'
alias sbash='source ~/.bashrc'


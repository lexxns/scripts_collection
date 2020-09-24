alias home='cd /mnt/c/Users/lexxn/'
alias ll="ls -la"
alias bashrc="sudo nano ~/.bashrc"
alias crontab="sudo nano /etc/crontab/"

alias gh='history|grep'
alias startgit='cd `git rev-parse --show-toplevel` && git checkout master && git pull'

alias atom="/mnt/c/Windows/System32/cmd.exe /c 'atom'"

function up() {
  levels=$1

  while [ "$levels" -gt "0" ]; do
    cd ..
    levels=$(($levels -1))
  done
}

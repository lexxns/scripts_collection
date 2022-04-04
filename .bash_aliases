alias ll="ls -la"
alias bashrc="sudo micro ~/.bashrc"
alias bashalias="sudo micro ~/.bash_aliases"
alias crontab="sudo micro /etc/crontab/"

# git
alias gh='history|grep'
alias startgit='cd `git rev-parse --show-toplevel` && git checkout main && git pull'
alias cg='cd `git rev-parse --show-toplevel`'

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# python venv
alias ve="python3.8 -m venv ./venv"
alias va="source ./venv/bin/activate"

#pip
alias pi='pip install -r "requirements.txt"'

# copy current directory path
alias cpwd="pwd | tr -d '\n' | pbcopy && echo 'pwd copied to clipboard'"

alias esa="eval $(ssh-agent)"

# What is my public ip address?
alias whoami="dig +short txt ch whoami.cloudflare @1.0.0.1"

alias dotenv="export $(grep -v \'^#\' .env | xargs)"

docker rm -f $(docker ps -a -q)

function cl() {
    DIR="$*";
        # if no DIR given, go home
        if [ $# -lt 1 ]; then
                DIR=$HOME;
    fi;
    builtin cd "${DIR}" && \
    # use your preferred ls command
        ls -F --color=auto
}

function up() {
  levels=$1

  while [ "$levels" -gt "0" ]; do
    cd ..
    levels=$(($levels -1))
  done
}

# socketcan
function vcan_up () {
	sudo modprobe vcan
	sudo ip link add dev vcan0 type vcan
	sudo ip link set vcan0 up
}

function vcan_down () {
	sudo ip link set vcan0 down
}

## Helper functions for qpdf library
# Extract from {1} pages {2} save as {3}
function pdfExtract () {
  qpdf $1 --pages . $2 -- $3
}

# Extract every {1} pages from {2} save as {3}
function pdfExtractEach () {
  qpdf --split-pages=$1 $2 $3
}

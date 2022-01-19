alias ll="ls -la"
alias bashrc="sudo micro ~/.bashrc"
alias crontab="sudo micro /etc/crontab/"

alias gh='history|grep'
alias startgit='cd `git rev-parse --show-toplevel` && git checkout master && git pull'

# Example call from WSL to Windows
alias atom="/mnt/c/Windows/System32/cmd.exe /c 'atom'"

# Kitty commands
alias diff="kitty +kitten diff"

# Implement pbcopy + paste
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# python venv
alias venv_new="python3 -m venv venv"
alias venv="source venv/bin/activate"

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

## Helper functions for qpdf library
# Extract from {1} pages {2} save as {3}
function pdfExtract () {
  qpdf $1 --pages . $2 -- $3
}

# Extract every {1} pages from {2} save as {3}
function pdfExtractEach () {
  qpdf --split-pages=$1 $2 $3
}

# Make Git branch a variable
branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')

# Get the Git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# curdir (git branch) $
export PS1=" \[$(tput bold)\]\W\[$(tput setaf 1)\]\$(parse_git_branch)\[$(tput sgr0)\] $ "

export TERM="screen-256color"
export PATH="/usr/local/bin:$PATH"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced


#----GIT----
alias log='git log'
alias wut='git log master...${branch} --oneline'
alias diff='git diff'
alias branch='git branch'
alias st='git status'
alias fetch='git fetch'
alias push='git push origin head'
alias pull='git pull'
alias fp='fetch && pull'
alias gmm='git merge master'
alias recent='git for-each-ref --sort=-committerdate refs/heads/'

#----GENERAL----
alias editgit='atom ~/.gitconfig'
alias editbash='atom ~/.bashrc'
alias resource='source ~/.bashrc && echo "Done!"'
alias vi=vim
alias ip="curl icanhazip.com" # Your public IP address
alias ll="ls -al" # List all files in current directory in long list format
alias ldir="ls -al | grep ^d" # List all directories in current directory in long list format

stty -ixon
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[$(tput setaf 1)\][\[$(tput setaf 4)\]\$(parse_git_branch) \W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]> \[$(tput sgr0)\]\[\033[0m\]"

# colors
export TERM=xterm-256color

# Folder Nav
alias l="ls -lrt --color"

# Git shorten
alias g="git"

# vundle install
alias vundleinstall='vim +PluginInstall! +qall'


### Setup new comp ###
# git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim'
#

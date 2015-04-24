#######
# Git #
#######
# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# Git branch autocomplete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Folder Nav
alias b="cd -"
alias u="cd .."
alias l="ls -lrt"

###########
# Homejoy #
###########
alias act="source /opt/venv/bin/activate"

# Homejoy folder navigation
alias an="cd ~/src/mdb/ansible/"
alias hm="cd ~/src/homejoy/"

# The next line updates PATH for the… Google Cloud SDK.
source '/Users/albertlwohletz/google-cloud-sdk/path.bash.inc'

# The next line enables bash completion for gcloud.
source '/Users/albertlwohletz/google-cloud-sdk/completion.bash.inc'
source ~/.bashrc

# Shim
alias deployalbert='./play hosts/albert app.yml'

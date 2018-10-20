# ll alias lists files, including . directories, human readable byte sizes and in long format
alias ll="ls -lah"

# A lot of homebrew stuff is put in /usr/local/bin
export PATH="/usr/local/bin:$PATH"

# PHP Composer Bin files
export PATH="~/.composer/vendor/bin:$PATH"

# Mysql 5.7 home brew binary
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# Standard prompt
export PS1="\[\e[00;31m\]\w\[\e[0m\]\[\e[00;30m\] \\$ \[\e[0m\]"

# Set default editor to nano instead of vi - because I'm lazy
export EDITOR=/usr/bin/nano

# If iTerm2 shell integrations are available, integrate them
test -e ${HOME}/.iterm2_shell_integration.bash && source ${HOME}/.iterm2_shell_integration.bash

# command for running jekyll for my blog easier
function jek() { bundle exec jekyll "$@"; }

# command for installing laravel (I don't like their global installer/downloader)
function laravel() {
  echo "Creating Laravel project in ${PWD}/$1"
  composer create-project aaronsaray/laravel-boot $1
}

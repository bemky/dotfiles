alias profile="mate ~/.profile"
alias spire="cd ~/code/spire"
alias mls="cd ~/code/mls"
alias dotfiles="cd ~/.dotfiles"
alias lt="localtunnel"
alias bundles="cd ~/Library/Application\ Support/Avian/Bundles/"
alias php="sudo apachectl graceful"
alias bemky="cd ~/Sites/bemky.com"
alias sass="sass --watch"
alias rmorig="find * -name '*.orig' -delete"
alias fix-mls-gem='export MLS_LOC=`bundle show mls`; rm -rf $MLS_LOC; ln -s {LOCAL_MLS_GEM_PATH} $MLS_LOC'
alias pine="ssh pine.95244669.members.btmm.icloud.com"
alias mate="mate ."
alias be="bundle exec"
alias dump="git pull; bundle; be rake db:dump db:migrate"
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
PATH="/usr/local/bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH"
function deploy-a(){
    be cap production-A deploy -s branch=$1
}
function deploy-b(){
    be cap production-B deploy -s branch=$1
}
function deploy-c(){
    be cap production-C deploy -s branch=$1
}
function s(){
    rails server -p $1
}
function code(){
    cd ~/code/$1
}
COLOR_RED="\033[0;31m"
COLOR_YELLOW="\033[0;33m"
COLOR_GREEN="\033[0;32m"
COLOR_OCHRE="\033[38;5;95m"
COLOR_BLUE="\033[0;34m"
COLOR_WHITE="\033[0;37m"
COLOR_RESET="\033[0m"

function git_color {
  local git_status="$(git status 2> /dev/null)"

  if [[ ! $git_status =~ "working directory clean" ]]; then
    echo -e $COLOR_RED
  else if [[ $git_status =~ "Your branch is ahead of" ]]; then
    echo -e $COLOR_YELLOW
  else if [[ $git_status =~ "nothing to commit" ]]; then
    echo -e $COLOR_GREEN
  else
    echo -e $COLOR_OCHRE
  fi fi fi
}
function git_branch {
  local git_status="$(git status 2> /dev/null)"
  local on_branch="On branch ([^${IFS}]*)"
  local on_commit="HEAD detached at ([^${IFS}]*)"

  if [[ $git_status =~ $on_branch ]]; then
    local branch=${BASH_REMATCH[1]}
    echo "($branch)"
  else if [[ $git_status =~ $on_commit ]]; then
    local commit=${BASH_REMATCH[1]}
    echo "($commit)"
  fi fi
}
PS1="\n\[$COLOR_YELLOW\]\W"                # history #, basename of pwd
PS1="$PS1\[\$(git_color)\]"              # colors git status
PS1="$PS1\$(git_branch)"                 # prints current branch
PS1="$PS1\[$COLOR_RESET\]\$\[$COLOR_RESET\] "  # '#' for root, else '$'
export PS1

brew install caskroom/cask/brew-cask

apps=(
  java
  dropbox
  google-chrome
  transmission
  firefox
  spotify
  vlc
  skype
  1password
  hipchat
  cyberduck
  gpgtools
  rowanj-gitx
  joinme
  nylas-n1
  mpeg-streamclip
  spectacle
  textmate
  resilio-sync
  xquartz
  drobo-dashboard
  nylas-mail
  battle-net
  joinme
  rightfont
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

brew tap caskroom/cask

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
  mailspring
  mpeg-streamclip
  spectacle
  textmate
  resilio-sync
  xquartz
  drobo-dashboard
  battle-net
  joinme
  rightfont
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

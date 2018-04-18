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
  rowanj-gitx
  joinme
  mailspring
  mpeg-streamclip
  spectacle
  textmate
  resilio-sync
  xquartz
  battle-net
  joinme
  rightfont
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

brew tap caskroom/drivers
brew cask install drobo-dashboard

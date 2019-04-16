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
  slack
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
  discord
  rightfont
  adobe-creative-cloud
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

brew tap caskroom/drivers
brew cask install drobo-dashboard

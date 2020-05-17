apps=(
  dropbox
  google-chrome
  firefox
  spotify
  vlc
  mpeg-streamclip
  1password
  slack
  rowanj-gitx
  mailspring
  spectacle
  textmate
  battle-net
  discord
  rightfont
  adobe-creative-cloud
  tuple
  kap
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

brew tap homebrew/cask-drivers
brew cask install drobo-dashboard

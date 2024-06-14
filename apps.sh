apps=(
  dropbox
  google-chrome
  firefox
  spotify
  vlc
  slack
  rowanj-gitx
  spectacle
  textmate
  battle-net
  discord
  tuple
  kap
  kaleidoscope
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew install --appdir="/Applications" ${apps[@]}

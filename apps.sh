apps=(
  dropbox
  google-chrome
  firefox
  spotify
  vlc
  slack
  gitx
  rectangle
  textmate
  discord
  tuple
  kap
  kaleidoscope
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew install --appdir="/Applications" ${apps[@]}

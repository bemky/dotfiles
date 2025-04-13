apps=(
  dropbox
  google-chrome
  firefox
  spotify
  vlc
  fork
  rectangle
  textmate
  discord
  tuple
  kap
  kaleidoscope@3
  1password
  dash@6
  microsoft-teams
  microsoft-outlook
  slack
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew install --appdir="/Applications" ${apps[@]}

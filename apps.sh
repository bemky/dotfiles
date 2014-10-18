brew install caskroom/cask/brew-cask

apps=(
  dropbox
  google-chrome
  transmission
  firefox
  spotify
  vlc
  skype
  onepassword
  hipchat
  cyberduck
  gitx-rowanj
  joinme
  mailbox
  mpeg-streamclip
  spectacle
  textmate
  bittorrent-sync
  drobo-dashboard
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

brew tap caskroom/fonts

# fonts
fonts=(
  font-m-plus
  font-clear-sans
  font-roboto
)

# install fonts
echo "installing fonts..."
brew cask install ${fonts[@]}

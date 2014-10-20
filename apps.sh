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
  xquartz
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
  font-bebas-neue
  font-arvo
  font-bilbo
  font-cabin
  font-coda
  font-droid-sans
  font-fasthand
  font-freehand
  font-geo
  font-geo-sans-light
  font-just-another-hand
  font-lato
  font-league-gothic
  font-lemon
  font-lobster
  font-lobster-two
  font-m-plus
  font-marvel
  font-maven-pro
  font-nothing-you-could-do
  font-nova-cut
  font-nova-oval
  font-nova-round
  font-nova-flat
  font-nova-script
  font-nova-slim
  font-nova-square
  font-open-sans
  font-oswald
  font-over-the-rainbow
  font-pacifico
  font-patrick-hand
  font-patrick-hand-sc
  font-prime
  font-pt-mono
  font-pt-sans
  font-pt-serif
  font-quicksand
  font-racing-sans-one
  font-raleway
  font-raleway-dots
  font-roboto
  font-roboto-slab
  font-verdana
  font-wendy-one
  font-yanone-kaffeesatz
)

# install fonts
echo "installing fonts..."
brew cask install ${fonts[@]}

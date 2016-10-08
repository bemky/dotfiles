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
  font-alex-brush
  font-allura
  font-arvo
  font-amatic-sc
  font-bilbo
  font-cabin
  font-coda
  font-droid-sans
  font-fasthand
  font-freehand
  font-geo
  font-geo-sans-light
  font-great-vibes
  font-just-another-hand
  font-lato
  font-league-gothic
  font-league-spartan
  font-lemon
  font-lobster
  font-lobster-two
  font-m-plus
  font-marvel
  font-maven-pro
  font-montserrat
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
echo "install ostrich-sans manually: https://github.com/theleagueof/ostrich-sans"

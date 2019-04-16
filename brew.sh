# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

binaries=(
  coreutils
  findutils
  ruby
  python
  hub
  bash
  bash-completion
  nodejs
  postgres
  postgis
  imagemagick
  poppler
  ghostscript
  redis
  memcached
  yajl
  mackup
  ncdu
)

echo "installing binaries..."
brew install ${binaries[@]}

brew cleanup

echo "installing bundler..."
gem install bundler
gem install mailcatcher

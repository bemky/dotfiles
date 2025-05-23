# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

binaries=(
  ruby
  python
  nodejs
  postgresql
  libvips
  mupdf-tools
  postgis
  poppler
  ghostscript
  redis
  memcached
  yajl
  ncdu
)

echo "installing binaries..."
brew install ${binaries[@]}

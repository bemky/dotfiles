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
  yajl
  mackup
  heroku-toolbelt
)

echo "installing binaries..."
brew install ${binaries[@]}

brew cleanup

echo "initialize Postgres"
initdb /usr/local/var/postgres -E utf8

echo "autostart Postgres"
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents

echo "installing bundler..."
gem install bundler




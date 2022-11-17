bemkys's .files
=================
### Wiping
- [ ] Deauthorize Adobe CS
- [ ] Deauthorize RightFont
- [ ] `mackup backup`
- [ ] Backup `~/code`
- [ ] Backup `~/Dropbox` (optional for speed of reinstall)
- [ ] Push changes to tmbundles
```shell
  cd ~/Library/Application\ Support/TextMate/Bundles/HTML.tmbundle
  git push
  cd ~/Library/Application\ Support/TextMate/Bundles/JavaScript.tmbundle
  git push
  cd ~/Library/Application\ Support/TextMate/Bundles/Ruby\ on\ Rails.tmbundle
  git push
  cd ~/Library/Application\ Support/TextMate/Bundles/Ruby.tmbundle
  git push
  cd ~/Library/Application\ Support/TextMate/Bundles/SCSS.tmbundle
  git push
```


### Installation
- [ ] `sudo hostname -s NewComputerName`
- [ ] Install Xcode
- [ ] Install Brew
```shell
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew doctor
  brew install git
```
- [ ] Add SSH Key to Github
```shell
  ssh-keygen -t rsa -C "bemky@$HOST"
  eval "$(ssh-agent -s)"
  ssh-add ~/.ssh/id_rsa
  pbcopy < ~/.ssh/id_rsa.pub
```
- [ ] Run Dotfiles
```shell
  git clone git@github.com:bemky/dotfiles.git ~/.dotfiles
  cd ~/.dotfiles
  
  sh defaults.sh
  sh apps.sh
  sh brew.sh
```
- [ ] Clone tmbundles
```shell
  cd ~/Library/Application\ Support/TextMate/Bundles/
  git clone git@github.com:bemky/html.tmbundle.git HTML.tmbundle
  git clone git@github.com:bemky/javascript.tmbundle.git JavaScript.tmbundle
  git clone git@github.com:bemky/ruby-on-rails-tmbundle.git Ruby\ on\ Rails.tmbundle
  git clone git@github.com:bemky/ruby.tmbundle.git Ruby.tmbundle
  git clone git@github.com:bemky/SCSS.tmbundle.git
```
- [ ] Download and install [Drobo Dashboard](https://www.drobo.com/docs/start-5d/)
- [ ] Download Dropbox folders from Drobo
- [ ] Install Adobe CS
- [ ] Start Dropbox sync directories
- [ ] Mackup Restore (once dropbox sync is complete)
```shell
# ~/.mackup.cfg
[applications_to_ignore]
textmate
[storage]
directory = /Users/benehmke/Dropbox (42Floors)/Syncing Library/Mackup
```
```shell
mackup restore
```
- [ ] Setup Screenshot Directory
```shell
  defaults write com.apple.screencapture location "'~/Dropbox (42Floors)/Screenshots/'"
  killall SystemUIServer
```
- [ ] `gem install bundler`
- [ ] `gem install mailcatcher`
- [ ] `git config --global alias.up 'pull --rebase --autostash'`
- [ ] Download and install [1Password](https://1password.com/downloads/mac/)

### Credits

The Install script came from [Ryan Bates](http://github.com/ryanb/dotfiles)

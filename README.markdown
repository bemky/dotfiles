bemkys's .files
=================
### Wiping
- [ ] `mackup backup --force && mackup uninstall --force`
- [ ] Backup `~/code`
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
- [ ] Install Brew
```shell
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
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
- [ ] Mackup Restore
```shell
# ~/.mackup.cfg
[storage]
directory = /Users/benehmke/Library/Mobile Documents/com~apple~CloudDocs/Syncing/Mackup
```
```shell
$ mackup restore --force && mackup uninstall --force # For MacOS 14+ (broke symlinks in ~/Library, https://github.com/lra/mackup/issues/1924)
```
- [ ] Setup Screenshot Directory
```shell
  defaults write com.apple.screencapture location "/Users/benehmke/Library/Mobile Documents/com~apple~CloudDocs/Screenshots"
  killall SystemUIServer
```
- [ ] `gem install bundler`
- [ ] `git config --global alias.up 'pull --rebase --autostash'`
```
System Preferences > General > Sharing > File Sharing > Options
```

### Work Config
Setup work ssh keys
```shell
ssh-keygen -t rsa -f ~/.ssh/<name> -C <work-email-address>
```

Add to work github
```shell
pbcopy < ~/.ssh/jll.pub
```

Setup

### Credits

The Install script came from [Ryan Bates](http://github.com/ryanb/dotfiles)

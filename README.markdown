bemkys's .files
=================
### Wiping
    before wiping current HD, deauthorize:
    Adobe CS
    RightFont
    
    Backup ~/code
    mackup backup
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


### Installation

      # install Xcode

      ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
      brew doctor
      brew install git

	  # Add SSH Key to Github
      ssh-keygen -t rsa -C "bemky@$HOST"
      # start the ssh-agent in the background
      eval "$(ssh-agent -s)"
      ssh-add ~/.ssh/id_rsa
      pbcopy < ~/.ssh/id_rsa.pub
      # paste in github

      git clone git@github.com:bemky/dotfiles.git ~/.dotfiles
      cd ~/.dotfiles
      
      sh defaults.sh
      sh apps.sh
      sh brew.sh
      
      # Clone TextMate Bundles
      cd ~/Library/Application\ Support/TextMate/Bundles/
      git clone git@github.com:bemky/html.tmbundle.git HTML.tmbundle
      git clone git@github.com:bemky/javascript.tmbundle.git JavaScript.tmbundle
      git clone git@github.com:bemky/ruby-on-rails-tmbundle.git Ruby\ on\ Rails.tmbundle
      git clone git@github.com:bemky/ruby.tmbundle.git Ruby.tmbundle
      git clone git@github.com:bemky/SCSS.tmbundle.git
      
      # install Adobe CS
	  # start Dropbox with mackup and sync directories only
      
      # after Mackup dir sync
      mackup restore
      defaults write com.apple.screencapture location "'~/Dropbox (42Floors)/Screenshots/'"
      killall SystemUIServer
      
      # gems
      gem install bundler
      gem install mailcatcher
      
      # Git Configs
      git config --global alias.up 'pull --rebase --autostash'
      

### Credits

The Install script came from [Ryan Bates](http://github.com/ryanb/dotfiles)

bemkys's .files
=================

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
      
      sh brew.sh
      sh apps.sh
      sh defaults.sh
      
      # Clone TextMate Bundles
      cd ~/Library/Application\ Support/"
      git clone git@github.com:malomalo/tmbundles.git Avian/Bundles
      
      # install Adobe CS
	  # start Dropbox with mackup and sync directories only
      # after Mackup dir sync, run `mackup restore`
      
      

### Credits

The Install script came from [Ryan Bates](http://github.com/ryanb/dotfiles)

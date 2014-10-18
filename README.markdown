bemkys's .files
=================

### Installation

      # install Xcode

      ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
      brew doctor
      brew install git

      ssh-keygen -t rsa -C "bemky@$HOST"
      # start the ssh-agent in the background
      eval "$(ssh-agent -s)"
      # Agent pid 59566
      ssh-add ~/.ssh/id_rsa
      pbcopy < ~/.ssh/id_rsa.pub
      # paste in github

      git clone git@github.com:bemky/dotfiles.git ~/.dotfiles
      cd ~/.dotfiles
      
      sh brew.sh
      sh apps.sh
      sh defaults.sh
      
      cp profile.sh ~/.profile
      cp gitconfig.sh ~/.gitconfig
      
      # Clone TextMate Bundles
      cd ~/Library/Application\ Support/Avian/"
      git clone git@github.com:malomalo/tmbundles.git Bundles
      
      # install Adobe CS
      # after Mackup dir sync, run `mackup restore`
      
      

### Credits

The Install script came from [Ryan Bates](http://github.com/ryanb/dotfiles)

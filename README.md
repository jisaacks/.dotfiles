##Installation steps:

 - Clone the repo
    
    git clone git@github.com:jisaacks/.dotfiles.git $HOME/.dotfiles

 - Put this in your .bash_profile
    
    for f in $HOME/.dotfiles/.[^.]*; do source $f; done

 - Source the file
    
    source $HOME/.bash_profile

Or do it all at once with this command:

> git clone git@github.com:jisaacks/.dotfiles.git $HOME/.dotfiles; echo 'for f in $HOME/.dotfiles/.[^.]*; do source $f; done' >> $HOME/.bash_profile; source $HOME/.bash_profile
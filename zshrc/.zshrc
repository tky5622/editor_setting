[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# pure
autoload -U promptinit; promptinit
prompt pure
# added by Anaconda3 4.4.0 installer
export PATH="/Users/takuya/anaconda/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/shims:$PATH"

# geth path
export PATH="$HOME/geth:$PATH"

# neovim
export XDG_CONFIG_HOME="$HOME/.config"

##
# Your previous /Users/takuya/.bash_profile file was backed up as /Users/takuya/.bash_profile.macports-saved_2017-09-09_at_11:16:36
##

# MacPorts Installer addition on 2017-09-09_at_11:16:36: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH=$PATH:$HOME/.nodebrew/current/bin
export PATH=$HOME/.nodebrew/current/bin:$PATH

# added by Anaconda3 5.0.1 installer
export PATH="/Users/takuya/anaconda3/bin:$PATH"

export ANDROID_HOME="/Users/takuya/Library/Android/sdk"

export PATH=$PATH:./node_modules/.bin


# added by travis gem
[ -f /Users/takuya/.travis/travis.sh ] && source /Users/takuya/.travis/travis.sh

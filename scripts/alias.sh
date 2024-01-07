# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#alias xclip="xclip -sel clip <"


# rm to trash
alias rm='~/dotfiles/rmtrash/rmtrash'
alias rmdir='~/dotfiles/rmtrash/rmdirtrash'
alias sudo='sudo '

# conda
alias source-conda='source $ROOT/anaconda.sh'

alias t='tmux'
alias v='vim'
alias nv='nvim'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ew='env LC_CTYPE=zh_CN.UTF-8 emacs-27.0.50'
alias e='env LC_CTYPE=zh_CN.UTF-8 emacs-27.0.50  -nw'
alias rm=trash
alias xclip='xclip -selection c'

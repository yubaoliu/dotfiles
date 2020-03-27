
#solorized
if [ "$TERM" = "linux" ]; then
    echo -en "\e]P0073642" #black
    echo -en "\e]P1DC322F" #darkred
    echo -en "\e]P2859900" #darkgreen
    echo -en "\e]P3B58900" #brown
    echo -en "\e]P4268BD2" #darkblue
    echo -en "\e]P5D33682" #darkmagenta
    echo -en "\e]P62AA198" #darkcyan
    echo -en "\e]P7EEE8D5" #lightgrey
    echo -en "\e]P8002B36" #darkgrey
    echo -en "\e]P9CB4B16" #red
    echo -en "\e]PA586E75" #green
    echo -en "\e]PB657B83" #yellow
    echo -en "\e]PC839496" #blue
    echo -en "\e]PD6C71C4" #magenta
    echo -en "\e]PE93A1A1" #cyan
    echo -en "\e]PFFDF6E3" #white
    clear #for background artifacting
fi

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
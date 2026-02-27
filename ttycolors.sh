# Terminal colors when pure 'tty' since cannot load .Xresources
if [ "$XDG_SESSION_TYPE" = "tty" ]; then
    echo -en "\e]P03D354A" #black
    echo -en "\e]P89E8D8D" #darkgrey
    echo -en "\e]P1CD5C5C" #darkred
    echo -en "\e]P9CC5533" #red
    echo -en "\e]P286AF80" #darkgreen
    echo -en "\e]PA88AA22" #green
    echo -en "\e]P3E8AE5B" #brown
    echo -en "\e]PBFFA75D" #yellow
    echo -en "\e]P46495ED" #darkblue
    echo -en "\e]PC87CEEB" #blue
    echo -en "\e]P5DEB887" #darkmagenta
    echo -en "\e]PD996600" #magenta
    echo -en "\e]P6B0C4DE" #darkcyan
    echo -en "\e]PEB0C4DE" #cyan
    echo -en "\e]P7BBAA99" #lightgrey
    echo -en "\e]PFDDCCBB" #white
    clear #for background artifacting
fi

#!/bin/bash

# Echo the text

font="-misc-fixed-*-*-*-*-10-*-*-*-*-*-*-*"

Clock() {
        DATE=$(date "+%a %b %d, %T")

        echo -n "$DATE"
}

Theme() {
	THEME=$PS1
	echo -n "$THEME"
}

Volume() {
	amixer get Master | sed -n 's/^.*\[\([0-9]\+\)%.*$/\1 %/p'| uniq
}

Playing() {	
	cur=`mpc current`
	test -n "$cur" && echo $cur || echo "- stopped -"
}


while true; do
        echo "%{c}%{F{{ primary }}}$(Playing)%{l}%{F{{ primary }}}$(Volume)%{r}%{F{{ primary }}}$(Clock)%{F-} "
        sleep 1;
done

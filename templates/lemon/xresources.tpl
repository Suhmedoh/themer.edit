{# belongs in .themer/templates/i3/xresources.tpl #}
*faceName: {{ fontName.title() }}
*faceSize: {{ fontSize }}
*font: -misc-fixed-*-*-*-*-12-*-*-*-*-*-*-*
*boldFont: -misc-fixed-*-*-*-*-12-*-*-*-*-*-*-*
*.cursorColor: {{ white }}
*.scrollBar: false

URxvt.urlLauncher     : /usr/bin/firefox
URxvt.matcher.button  : 1
URxvt.perl-ext-common: ...,url-select
URxvt.keysym.M-u: perl:url-select:select_next


URxvt.transparent:   false
URxvt.tintColor:     {{ white }}
URxvt.shading:       20


!sets the background to black and foreground to white for other terminals relying on Xresources
*background: {{ black }}
*foreground: {{ white }}

! black
*color0: {{ black }}
*color8: {{ alt_black }}
! red
*color1: {{ red }}
*color9: {{ alt_red }}
! green
*color2: {{ green }}
*color10: {{ alt_green }}
! yellow
*color3: {{ yellow }}
*color11: {{ alt_yellow }}
! blue
*color4: {{ blue }}
*color12: {{ alt_blue }}
! magenta
*color5: {{ magenta }}
*color13: {{ alt_magenta }}
! cyan
*color6: {{ cyan }}
*color14: {{ alt_cyan }}
! white
*color7: {{ white }}
*color15: {{ alt_white }}
! underline when default
*colorUL: {% if underline %}{{ underline }}{% else %}{{ white }}{% endif %}
! vim: set ft=xdefaults:



{# belongs in .themer/templates/i3/xresources.tpl #}
*faceName: {{ fontName.title() }}
*faceSize: {{ fontSize }}
*font: -misc-fixed-*-*-*-*-12-*-*-*-*-*-*-*
*boldFont: -misc-fixed-*-*-*-*-12-*-*-*-*-*-*-*
*.cursorColor: {{ white }}
*.scrollBar: false

URxvt.perl-ext-common : default,matcher
URxvt.urlLauncher     : firefox
URxvt.matcher.button  : 1

URxvt.transparent:   true
URxvt.tintColor:     {{ black }}
URxvt.shading:       20 

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



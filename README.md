# themer.edit
edited version of https://github.com/coleifer 's themer

Thank you coleifer for letting use use your code for the base;
Thanks jimble from #rice for helping with the symbolic linking;

#HEAVY work in progress.  Don't expect anything to work yet, you can try if you want to though.

this will serve as a guide for how to use themer.edit

./themer generate new_theme ~/Pictures/background/doughpit.png

will generate a new theme called doughpit based on the doughpit.png file.


Current functionality: when supplied with an image, it creates a i3.conf, colors.yaml, html file to display example of colors, and an xresources file.   you can use 
./themer.py activate theme_name
to change to another theme.

MAKE SURE you symbollically link your:
~/.config/i3/config to ~/.config/themer/current/i3.conf
~/.i3status.conf to ~/.config/themer/current/i3status.conf

to do this, copy your current ~/.config/i3/config and ~/.i3status.conf (or whatever/wherever you have been using to edit your config thus far) as config.backup and .i3status.conf.backup (in case something goes horrifically wrong)

delete the original files

rm ~/.config/i3/config
rm ~/.i3status.conf

now symlink the config and i3status.conf from the ~/.config/themer/current directory to these two spots in order for it to work properly

ln -s ~/.config/themer/current/i3.conf ~/.config/i3/config
ln -s ~/.config/themer/current/i3status.conf ~/.i3status.conf




#(eventual) to do list:


generate themes for other tiling WMs(if possible?)

generate themes for text editors (sublime, emacs, vim)

generate themes for panels (tint2, i3status, pystatus)

generate themes for dmenu and it's alternatives

generate themes for irc clients

generate stylish firefox css based off twily's(?)

generate colorschemes for different terminals (termite, lilyterm, etc)

generate color schemes for other popular apps( suggestions?)


make it simpler

  auto symlink the config files(?)


make it work for a wide variety of systems/WMs

  bspwm, awesome, dwm, etc? (need to see how their configs work) 


make it easier for new users to tinker with their themes after making it

  output paths to files they would be interested in (.xresources, i3.conf)

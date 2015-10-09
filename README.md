## themer.edit
edited version of https://github.com/coleifer 's themer

Thank you coleifer for letting us use your code for the base;
Thanks jimble from #rice for helping with the symbolic linking;

###HEAVY work in progress.  Don't expect anything to work yet, you can try if you want to though.

###the road so far...

![sunset theme](http://i.imgur.com/3U5P8iX.jpg)
![sashimi theme](http://i.imgur.com/cKttKA7.jpg)
![multicolorbokeh theme](http://i.imgur.com/x6tDdL2.jpg)
![carnature theme](http://i.imgur.com/mk2piwr.jpg)
![bluebokeh theme](http://i.imgur.com/XMpzu3l.jpg)


PREREQS:
i3-gaps [by Airblader](https://github.com/Airblader/i3)

feh (fedora: sudo dnf install feh) (ubuntu?: sudo apt-get install feh?)

some version or python, i'll figure out which later

should be it, will hopefully be adding an option to pick background manager fo those who want to use something else, like nitrogen


##Just did a fresh install of Fedora 22 64bit Workstation, will be seeing how easy it is to get this running from scratch.

>fresh install; installed weechat.
>got i3-gaps from [Airblader's github page](https://github.com/Airblader/i3)
>installed dependencies as told by wiki page
>sudo dnf upgrade, restarting into i3-gaps now

if anyone wants to test this so far and see what works and what doesn't, message me on reddit(/u/suhmedoh) and let me know how it goes or open an issue, or check irc.freenode.net #doughpit and talk to me on there (nick is either jiaxsun or jiaxsun_)


Not sure exactly what works so far and what doesn't for anyone else's machine, but for mine:

>./themer.py generate samurai ~/Pictures/background/samurai.png

will set the background on all monitors, create and set the xresource file(works with urxvt, haven't tried other terminals yet), sets i3gaps with the gaps I like, no borders or scroll bars, sets i3status/bar to use the color scheme generated, sets dmenu to use the color scheme.


IF dmenu no longer shows any of your applications(happened to me randomly, not sure what caused it) try deleting ~/.cache/dmenu_run


this will serve as a guide for how to use themer.edit

>./themer generate new_theme ~/Pictures/background/doughpit.png

will generate a new theme called doughpit based on the doughpit.png file.  Run the same command again to change the order of the colors(might also give you different colors?)



Current functionality: when supplied with an image, it creates a i3.conf, colors.yaml, html file to display example of colors, and an xresources file.   you can use 

>./themer.py activate theme_name

to change to another theme.


MAKE SURE you symbollically link your:

>~/.config/i3/config to ~/.config/themer/current/i3.conf
>
>~/.i3status.conf to ~/.config/themer/current/i3status.conf

to do this, copy your current ~/.config/i3/config and ~/.i3status.conf (or whatever/wherever you have been using to edit your config thus far) as config.backup and .i3status.conf.backup (in case something goes horrifically wrong)

delete the original files

>rm ~/.config/i3/config
>
>rm ~/.i3status.conf


now symlink the config and i3status.conf from the ~/.config/themer/current directory to these two spots in order for it to work properly


>ln -s ~/.config/themer/current/i3.conf ~/.config/i3/config
>
>ln -s ~/.config/themer/current/i3status.conf ~/.i3status.conf




###(eventual) to do list:


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

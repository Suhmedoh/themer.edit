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

###webm of it in action

[webm themer.edit](https://my.mixtape.moe/qbjwqc.webm)


PREREQS:
i3-gaps [by Airblader](https://github.com/Airblader/i3)

i3status (sudo dnf install i3status)

python-yaml and python-jinja2 (sudo dnf install python-yaml python-jinja2

feh (fedora: sudo dnf install feh)



##Just did a fresh install of Fedora 22 64bit Workstation, will be seeing how easy it is to get this running from scratch.

this is a play by play of how it went

>fresh install; installed weechat.
>
>installed dependencies as told by wiki page
>
>installed urxvt for terminal (sudo dnf install rxvt-unicode)
>
>installed python-yaml and python-jinja2 for themer.py
>
>sudo dnf install python-yaml python-jinja2
>
>installed dmenu because it didn't come with i3gaps
>
>sudo dnf install dmenu
>
>got i3-gaps from [Airblader's github page](https://github.com/Airblader/i3) follow his instructions for installing
>
>sudo dnf upgrade, restarting into i3-gaps now
>
>did not have the option to boot into i3, ended up getting disabling gdm login and starting i3 via an xinitrc
>
###only do this if you can not log into an i3 session AT ALL
>systemctl disable gdm
>
>make a ~/.xinitrc file, should have the lines
>
>#!/usr/bin/bash
>exec i3
>

###only do the above if you can not log into an i3 session AT ALL

###you might need to change ownership of the themer directory(i didn't originally, I did after a fresh install)
running themer.py will tell you if you get an error creating /home/your_username/.config/themer/current, if so do this

>in order for themer.py to work, you may need to change ownership of the themer directory
>
>chown -R $USER /home/$USER/.config/themer
>

>
>personally had trouble getting terminus font to work, switched to fixed for now
>
>before running themer once to create the directories and theme, rename your ~/.config/i3/config to ~/.config/i3/config.bak and ~/.i3status.conf to ~/.i3status.conf.bak and ~/.Xresources to ~/.Xresources.bak.  This will save you headaches if you don't like themer and want your old themes back.
>
>After running themer once, it should create the ~/.config/themer/current directory.  
>
>ln -s ~/.config/themer/current/i3.conf ~/.config/i3/config
>
>ln -s ~/.config/themer/current/i3status.conf ~/.i3status.conf
>
>should now be working with my default setup (background set + colors set for urxvt and i3bar + gaps

after making a theme, you can go into ~/.config/themer/theme_name and edit the xresources and i3status and i3 conf to your liking, and next time you activate the theme, the changes should apply


if anyone wants to test this so far and see what works and what doesn't, message me on reddit(/u/suhmedoh) and let me know how it goes or open an issue, or check irc.freenode.net #doughpit and talk to me on there (nick is either jiaxsun or jiaxsun_)

## HOW TO USE THEMER.PY
disclaimer: I will only discuss the options i'm currently workign on, I take no resposibility if other things don't work or break

>find a directory you want to store these files in eg. ~/rice
>git clone http://github.com/suhmedoh/themer.edit
>
>create a new directory ~/.config/themer/templates/i3/
>copy(or move; i recommend copying so you have a copy of the originals if you screw somethign up) all of the files except themer.py to that directory
>

#####themer.py options

>./themer.py generate
>./themer.py activate
>./themer.py list
>./themer.py delete

>./themer.py generate samurai ~/Pictures/background/samurai.png

will create a theme which sets the background on all monitors, creates and sets the xresource file(works with urxvt, haven't tried other terminals yet), sets i3gaps with the gaps I like, no borders or scroll bars, sets i3status/bar to use the color scheme generated, sets dmenu to use the color scheme.  After running this, give it time to complete, then it will ask you if you want to activate the theme or not.

>./themer.py activate bokeh

Will activate the already generated theme bokeh.  This will switch your i3 config, color scheme, and background to the new theme; your previous theme (if generated from themer.py) will be saved

>./themer.py list

will generate a list of themes, which you can then run ./themer.py activate *theme* to use.

>./themer.py delete bad_theme

Will delete the theme named bad_theme.


#### problems I have run into(may be unrelated)
IF dmenu no longer shows any of your applications(happened to me randomly, not sure what caused it) try deleting ~/.cache/dmenu_run


###currently working on:

creating a basic lemonbar which uses colors from Xresources, and generating the script for it w/ themer

maybe integrating an option to choose which panel you want to create when you generate a theme

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

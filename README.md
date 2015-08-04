This is my personal Gentoo overlay. It can be installed it by adding this
to your repos.conf file:

```
[alxhnr]
sync-type = git
sync-uri = https://github.com/AlxHnr/gentoo-overlay
location = /usr/local/portage/alxhnr
auto-sync = yes
```

Layman can also be used to install this overlay:

`sudo layman -o https://raw.githubusercontent.com/AlxHnr/gentoo-overlay/master/repository.xml -f -a alxhnr`

You may want to unmask all packages in this overlay. To do so, simply add
the following line to your keywords file:

```
*/*::alxhnr
```

It contains the following packages:

* [dlaunch](https://github.com/AlxHnr/Dlaunch) - A simple, learning dmenu
wrapper
* [chicken-builder](https://github.com/AlxHnr/chicken-builder) - A
makefile generator for CHICKEN projects
* [alx-tools](https://github.com/AlxHnr/alx-tools) - A collection of
various scripts and hacks

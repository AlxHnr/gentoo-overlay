This is my personal Gentoo overlay. It contains the following packages:

* [alx-tools](https://github.com/AlxHnr/alx-tools) - A collection of
various scripts and hacks
* [dlaunch](https://github.com/AlxHnr/Dlaunch) - A simple, learning dmenu
wrapper
* [chicken-builder](https://github.com/AlxHnr/chicken-builder) - A
makefile generator for CHICKEN projects

This overlay can be installed it by adding adding it your repos.conf file:

```
[alxhnr]
sync-type = git
sync-uri = https://github.com/AlxHnr/gentoo-overlay
location = /usr/local/portage/alxhnr
auto-sync = yes
```

You may want to unmask all packages in this overlay. To do so, simply add
the following line to your keywords file:

```
*/*::alxhnr
```

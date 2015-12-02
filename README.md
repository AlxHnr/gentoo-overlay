This is my personal Gentoo overlay. It contains the following packages:

* [alx-tools](https://github.com/AlxHnr/alx-tools) - Scripts i have written
for maintaining my Gentoo system
* [dlaunch](https://github.com/AlxHnr/dlaunch) - A learning dmenu wrapper
* [dlaunch-plugins](https://github.com/AlxHnr/dlaunch-plugins) - Various
plugins for dlaunch
* [chicken-builder](https://github.com/AlxHnr/chicken-builder) - Makefile
generator for CHICKEN Scheme

This overlay can be installed via repos.conf:

```
[alxhnr]
sync-type = git
sync-uri = https://github.com/AlxHnr/gentoo-overlay
location = /usr/local/overlays/alxhnr
```

To unmask all packages in this overlay, you must add the following line to
your keywords file:

```
*/*::alxhnr
```

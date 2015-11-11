This is my personal Gentoo overlay. It contains the following packages:

* [alx-tools](https://github.com/AlxHnr/alx-tools) - Scripts i have written
for maintaining my Gentoo system
* [dlaunch](https://github.com/AlxHnr/Dlaunch) - A learning dmenu wrapper
* [chicken-builder](https://github.com/AlxHnr/chicken-builder) - Makefile
generator for CHICKEN Scheme
* [nano-backup](https://github.com/AlxHnr/nano-backup) - A minimal backup
tool for POSIX systems

This overlay can be installed via repos.conf:

```
[alxhnr]
sync-type = git
sync-uri = https://github.com/AlxHnr/gentoo-overlay
location = /usr/local/portage/alxhnr
auto-sync = yes
```

To unmask all packages in this overlay, you must add the following line to
your keywords file:

```
*/*::alxhnr
```

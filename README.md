# install-apps
Downloads and Builds or Installs the packages/applications I use most frequently.

These are all applications/packages I typically download after a fresh linux installation.
Instead of installing them one by one and trying to remember if i missed any, I decided to write a script to run after I install a fresh copy of linux.

`Git` (this only works if you run the script with the "bash <(curl -s ..." method below, otherwise you will need to install git prior to cloning the repo and then running install.sh)<br>
`traceroute`<br>
`GoTop`<br>
`NeoFetch`<br>
`Screen`<br>
`Libsensors5` - (for HTOP to show CPU temp)<br>
`HTOP` - newest version (some distros bundle an outdated version).<br>
`Docker.io`<br>
`Gimp`<br>
`XMRig`<br>
`XMRig-MO`<br>

When `install.sh` is executed, it will ask if you want to proceed with installing the list of packages/applications.
Once you press 'y', the sccript will preform an apt update and full-upgrade then proceed with installing the packages/applications.
However the last few apps will ask again if you want to install or skip them, the ones that ask individually again are:
`Docker` - if you dont plan on using docker, there is no need to install it.
`Gimp` - this is a GUI application, if your running a Command Line only with no GUI, there is no reason to install this.
`XMRig` and `XMRig-MO` - These take a little bit to build, and if you dont plan on mining XMR (Monero), there is no need to download and build them.

List is a work in progress, new packages/applications will be added as I remember or need them.
Script `install.sh` is also a work in progress.

## Installation
Install the list of common apps from `install-apps` without downloading/cloning the github repository.
```bash
bash <(curl -s https://raw.githubusercontent.com/ftreff/install-apps/main/install.sh)
```

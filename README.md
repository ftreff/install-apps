# install-apps
Downloads and Installs the packages and applications I use most frequently.

These are all applications/packages I typically download after a fresh linux installation.
Instead of installing them one by one and trying to remember if i missed anything, I decided to write a script to run after I install a fresh copy of linux.

`Git` (this only works if you run the script with the "bash <(curl -s ..." method below, otherwise you will need to install git prior to cloning the repo and then running install.sh)<br>
`traceroute`<br>
`GoTop`<br>
`Docker.io`<br>
`NeoFetch`<br>
`Screen`<br>
`Libsensors5` - (for HTOP to show CPU temp)<br>
`HTOP` - newest version (some distros bundle an outdated version).<br>
`XMRig`<br>
`XMRig-MO`<br>

List is a work in progress, new packages/applications will be added as I remember or need them.
Script will be written soon too.

## Installation
Install the list of common apps from `install-apps` without downloading/cloning the github repository
```bash
bash <(curl -s https://raw.githubusercontent.com/ftreff/install-apps/main/install.sh)
```



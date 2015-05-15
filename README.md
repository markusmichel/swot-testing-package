# What is this?
This is a testing package for Swot network (https://github.com/markusmichel/swot). It allows to start the network and a bunch of prototypes (things) with a single command.

Included prototypes are:
- https://github.com/markusmichel/swot-bus-station-prototype
- https://github.com/ElwoodSlut/swot_thing
- https://github.com/Noodlewood/swot_coffee_machine.git
- https://github.com/Noodlewood/swot_walking_dead.git

# Requires
Vagrant (https://www.vagrantup.com/)

# Clone repo
`git clone https://github.com/markusmichel/swot-testing-package.git`

`git submodule update --init`

# Update all submodules
`git submodule foreach git pull origin master`

# Start
`cd swot-testing-package`

`vagrant up`

This will start the Swot network and all included prototypes. Everything will run in it's own virtual machine

# Cleanup
`vagrant destroy`

# Starting sigle machines
You can start each included machine individually
- `vagrant up swot` or `vagrant up swot-rsync` for windows hosts (see below)
- `vagrant up swot-prototype-bus-station`
- `vagrant up swot-prototype-lamp`
- `vagrant up swot-prototype-coffee`
- `vagrant up swot-prototype-walking-dead`

# For Windows users
There is a vagrant/swot machine optimized for windows host machines called `swot-rsync`. This machine uses `rsync` instead of `nfs` which works way faster and without complications on windows hosts. This requires the user to install `cygwin` (https://cygwin.com/install.htm) with the `Rsync` and `OpenSSH` packages.

# Urls and ports
name              | url
swot / swot-rsync | 13.13.13.13
bus-station       | 13.13.13.14:3000
lamp              | 13.13.13.15:3000
coffee            | 13.13.13.16:3000
walking-dead      | 13.13.13.17:3000

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

# Start
`cd swot-testing-package`

`vagrant up`

This will start the Swot network and all included prototypes. Everything will run in it's own virtual machine

# Cleanup
`vagrant destroy`

# Starting sigle machines
You can start each included machine individually
- `vagrant up swot`
- `vagrant up swot-prototype-bus-station`
- `vagrant up swot-prototype-lamp`
- `vagrant up swot-prototype-coffee`
- `vagrant up swot-prototype-walking-dead`

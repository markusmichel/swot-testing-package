VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

	config.vm.provider "virtualbox" do |v|
		v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
		v.customize ["modifyvm", :id, "--memory", 1024]
        v.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
	end

	config.vm.define "swot", primary: true do |swot|
		swot.vm.box = "precise64"
		swot.vm.box_url = "http://files.vagrantup.com/precise64.box"
		swot.vm.network "private_network", ip: "13.13.13.13"
		swot.vm.synced_folder "./swot", "/var/www", type: "nfs"

		# just copy files to a tmp folder, because copying will be done by the SSH user
	    # who does not have root privileges.
	    swot.vm.provision "file", source: "vagrant_files/etc/apache2/sites-available/000-default.conf", destination: "/tmp/000-default.conf"

	    # Provisioning the box with a shell script:
		swot.vm.provision :shell, :path => "Vagrant_provision_swot.sh"
	end

	config.vm.define "swot-prototype-bus-station", autostart: true do |prototype|
		prototype.vm.box = "precise64"
		prototype.vm.box_url = "http://files.vagrantup.com/precise64.box"
		prototype.vm.network "private_network", ip: "13.13.13.14"
		#prototype.vm.network "forwarded_port", guest: 3000, host: 80
		prototype.vm.synced_folder "./swot-bus-station-prototype", "/var/www"
		prototype.vm.provision :shell, :path => "Vagrant_provision_meteor.sh"
	end

	config.vm.define "swot-prototype-lamp", autostart: true do |prototype|
		prototype.vm.box = "precise64"
		prototype.vm.box_url = "http://files.vagrantup.com/precise64.box"
		prototype.vm.network "private_network", ip: "13.13.13.15"
		#prototype.vm.network "forwarded_port", guest: 3000, host: 80
		prototype.vm.synced_folder "./swot_thing", "/var/www"
		prototype.vm.provision :shell, :path => "Vagrant_provision_node.sh"
	end

	config.vm.define "swot-prototype-coffee", autostart: true do |prototype|
		prototype.vm.box = "precise64"
		prototype.vm.box_url = "http://files.vagrantup.com/precise64.box"
		prototype.vm.network "private_network", ip: "13.13.13.16"
		prototype.vm.synced_folder "./swot_coffee_machine", "/var/www"
		prototype.vm.provision :shell, :path => "Vagrant_provision_node.sh"
	end

	config.vm.define "swot-prototype-walking-dead", autostart: true do |prototype|
		prototype.vm.box = "precise64"
		prototype.vm.box_url = "http://files.vagrantup.com/precise64.box"
		prototype.vm.network "private_network", ip: "13.13.13.17"
		prototype.vm.synced_folder "./swot_walking_dead", "/var/www"
		prototype.vm.provision :shell, :path => "Vagrant_provision_node.sh"
	end

	config.vm.define "swot-rsync", autostart: false do |swot|	   
		swot.vm.box = "precise64"
		swot.vm.box_url = "http://files.vagrantup.com/precise64.box"
		#swot.vm.network "private_network", ip: "13.13.13.18"
		swot.vm.network "private_network", ip: "13.13.13.13"
		ENV["VAGRANT_DETECTED_OS"] = ENV["VAGRANT_DETECTED_OS"].to_s + " cygwin"
		config.vm.synced_folder "./swot", "/var/www", type: "rsync",
			rsync__exclude: ".git/",
			rsync__args: ["--chmod=ugo=rwX","--verbose", "--archive", "--delete", "-z"]

		# just copy files to a tmp folder, because copying will be done by the SSH user
	    # who does not have root privileges.
	    swot.vm.provision "file", source: "vagrant_files/etc/apache2/sites-available/000-default.conf", destination: "/tmp/000-default.conf"

	    # Provisioning the box with a shell script:
		swot.vm.provision :shell, :path => "Vagrant_provision_swot.sh"	
	end
end

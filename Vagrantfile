# -*- mode: ruby -*-
# vi: set ft=ruby

Vagrant.configure(2) do |config|
	config.ssh.insert_key = false
	config.vm.box = "ubuntu/xenial64"

	config.vm.provider "virtualbox" do |v|
		v.cpus = 2
		v.memory = 4096
	end

	config.vm.define "master-node", primary: true do |h|
		h.vm.network "private_network", ip: "192.168.2.100"
		h.vm.provider "virtualbox" do |vb|
			vb.name = "master-node"
		end
		h.vm.provision "shell", path: "bootstrap-base.sh"
		h.vm.provision "shell", path: "bootstrap-master.sh"
	end

	config.vm.define "first-node" do |h|
		h.vm.network "private_network", ip: "192.168.2.101"
		h.vm.provider "virtualbox" do |vb|
			vb.name = "first-node"
		end
		h.vm.provision "shell", path: "bootstrap-base.sh"
	end
	
	config.vm.define "second-node" do |h|
		h.vm.network "private_network", ip: "192.168.2.102"
		h.vm.provider "virtualbox" do |vb|
			vb.name = "second-node"
		end
		h.vm.provision "shell", path: "bootstrap-base.sh"
	end
	#TODO memory and CPU stuff, check if the ip stuff is right check if I can pass args in to make many nodes
end

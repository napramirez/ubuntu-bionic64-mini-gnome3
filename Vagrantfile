# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.hostname = "ubuntu-xenial64-mini-unity"
  config.vm.box = "ubuntu/xenial64"
  config.vm.synced_folder ".", "/vagrant", type: "virtualbox"
  config.vm.provision "shell", path: "scripts/install-mini-unity.sh"
  config.vm.provision "shell", path: "scripts/post-provision.sh"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
    vb.cpus = 2
    vb.gui = true
    vb.customize ["modifyvm", :id, "--vram", "128"]
  end

end

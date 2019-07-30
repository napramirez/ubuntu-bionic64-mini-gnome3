# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.hostname = "ubuntu-bionic64-mini-gnome3"
  config.vm.box = "file://boxes/virtualbox-ubuntu1804.box"

  config.vm.synced_folder ".", "/vagrant", type: "virtualbox"
  config.vm.provision "shell", path: "scripts/install-google-chrome.sh"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "8192"
    vb.cpus = 2
    vb.gui = true
    vb.customize ["modifyvm", :id, "--vram", "128"]
  end

end

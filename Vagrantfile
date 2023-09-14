# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Define the virtual machine box and base box URL
  config.vm.box = "ubuntu/bionic64"
  config.vm.box_url = "https://vagrantcloud.com/ubuntu/boxes/bionic64/versions/20210901.0.0/providers/virtualbox.box"

  # Configure VM settings
  config.vm.provider "virtualbox" do |vb|
    vb.memory = 1024 # Set the amount of RAM in MB
    vb.cpus = 2      # Set the number of CPU cores
  end

  # Configure network settings (optional)
  # config.vm.network "private_network", type: "dhcp"

  # Customize the hostname
  config.vm.hostname = "ubuntu-bionic"

  # Shell provisioner for basic setup
  config.vm.provision "shell", inline: <<-SHELL
    # Update the package list
    sudo apt-get update

    # Install essential packages
    sudo apt-get install -y curl git

    # Additional setup tasks can be added here
  SHELL
end

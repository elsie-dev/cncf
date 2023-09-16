# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Define the virtual machine box and base box URL for the first system
  config.vm.define "ubuntu-bionic" do |node|
    node.vm.box = "ubuntu/bionic64"
    node.vm.box_url = "https://vagrantcloud.com/ubuntu/boxes/bionic64/versions/20210901.0.0/providers/virtualbox.box"

    # Configure VM settings for the first system
    node.vm.provider "virtualbox" do |vb|
      vb.memory = 2024 # Set the amount of RAM in MB
      vb.cpus = 3      # Set the number of CPU cores
    end

    # Configure network settings (optional) for the first system
    # node.vm.network "private_network", type: "dhcp"

    # Customize the hostname for the first system
    node.vm.hostname = "ubuntu-bionic"

    # Shell provisioner for basic setup for the first system
    node.vm.provision "shell", inline: <<-SHELL
      # Update the package list
      sudo apt-get update

      # Install essential packages
      sudo apt-get install -y curl git
      sudo apt-get install docker
      # Additional setup tasks can be added here
    SHELL
  end

  # Define the virtual machine box and base box URL for the second system
  config.vm.define "cncf" do |node|
    node.vm.box = "ubuntu/bionic64"
    node.vm.box_url = "https://vagrantcloud.com/ubuntu/boxes/bionic64/versions/20210901.0.0/providers/virtualbox.box"

    # Configure VM settings for the second system
    node.vm.provider "virtualbox" do |vb|
      vb.memory = 1024 # Set the amount of RAM in MB
      vb.cpus = 2      # Set the number of CPU cores
    end

    # Configure network settings (optional) for the second system
    # node.vm.network "private_network", type: "dhcp"

    # Customize the hostname for the second system
    node.vm.hostname = "cncf"

    # Shell provisioner for basic setup for the second system
    node.vm.provision "shell", inline: <<-SHELL
      # Update the package list
      sudo apt-get update

      # Install essential packages
      sudo apt-get install -y curl git
      sudo apt-get install docker
      # Additional setup tasks can be added here
    SHELL
  end
end

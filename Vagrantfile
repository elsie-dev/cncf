Vagrant.configure("2") do |config|
  # Define the virtual machine box and base box URL
  config.vm.box = "ubuntu/bionic64"
  config.vm.box_url = "https://vagrantcloud.com/ubuntu/boxes/bionic64/versions/20210901.0.0/providers/virtualbox.box"

  # Configure VM settings
  config.vm.provider "virtualbox" do |vb|
    vb.memory = 2048 # Set the amount of RAM in MB
    vb.cpus = 2      # Set the number of CPU cores
  end

  # Customize the hostname
  config.vm.hostname = "k8s-node"

  # Shell provisioner for basic setup
  config.vm.provision "shell", inline: <<-SHELL
    # Update the package list
    sudo apt-get update

    # Install essential packages
    sudo apt-get install -y curl git

    # Install Docker
    sudo apt-get install -y docker.io

    # Add the current user to the docker group to run Docker commands without sudo
    sudo usermod -aG docker vagrant

    # Install Kubernetes components (kubelet, kubeadm, kubectl)
    sudo apt-get install -y apt-transport-https ca-certificates
    curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
    echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
    sudo apt-get update
    sudo apt-get install -y kubelet kubeadm kubectl

    # Disable swap for Kubernetes compatibility
    sudo swapoff -a
  SHELL
end

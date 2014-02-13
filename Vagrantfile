# Docker provisioner requires 1.4.0
Vagrant.require_version ">= 1.4.0"

# Fixes bug https://bugs.launchpad.net/ubuntu/+bug/1239417
Vagrant.require_plugin "vagrant-vbguest"

# Reload the VM as a provisioning step, required by Docker
Vagrant.require_plugin "vagrant-reload"

Vagrant.configure("2") do |config|

  # Use a more modern base box
  config.vm.box = "saucy64"
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/saucy/current/saucy-server-cloudimg-amd64-vagrant-disk1.box"

  # Install docker into the VM
  config.vm.provision "docker"

end

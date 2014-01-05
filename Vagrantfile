VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "opscode-ubuntu-1004"
  config.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-10.04-i386_chef-provisionerless.box"
  
  #config.vm.synced_folder "./","/home/vagrant"
  config.vm.provider :virtualbox do |provider, override|
    config.vm.provision :shell, :privileged => false, :path => "rails.sh"
  end
end

script = < <SCRIPT
# Install Ruby
sudo apt-get -y install git-core
sudo apt-get -y install rubygems
git clone git://github.com/sstephenson/rbenv.git .rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
which rbenv || echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> .bash_profile
which rbenv || echo 'eval "$(rbenv init -)"' >> .bash_profile
source .bash_profile
rbenv install 2.1.0
rbenv rehash
rbenv global 2.1.0
gem install bundler
rbenv rehash

# Install Rails
gem update --system
gem install rails --no-ri --no-rdoc -V
rails -v
bundle install
SCRIPT

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "opscode-ubuntu-1004"
  config.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-10.04-i386_chef-provisionerless.box"
  
  config.vm.synced_folder "./","/home/vagrant"
  config.vm.provision :shell, :inline => script
end

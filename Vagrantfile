VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "opscode-ubuntu-1004"
  config.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-10.04-i386_chef-provisionerless.box"
  
  config.vm.synced_folder "./","/home/vagrant"
  
  config.vm.provider :virtualbox do |provider, override|
    override.vm.provision :shell, privileged: false, inline: <<-EOS.gsub(/^ {6}/, "")
      # Install Ruby
      sudo apt-get -y install git-core
      sudo apt-get -y install libopenssl-ruby
      git clone git://github.com/sstephenson/rbenv.git .rbenv
      git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
      which rbenv || echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> .bash_profile
      which rbenv || echo 'eval "$(rbenv init -)"' >> .bash_profile
      source .bash_profile
      rbenv install 2.0.0-p195
      rbenv global 2.0.0-p195
      rbenv rehash
      sudo apt-get -y install rubygems
      sudo gem install rubygems-update 
      ruby ~/.rbenv/versions/2.0.0-p195/bin/gem/update_rubygems
      
      sudo gem install bundler
      bundle install
    EOS
  end
end

#!/bin/sh

# Install Ruby
sudo apt-get -y update
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
#sudo gem install rubygems-update --no-ri --no-rdoc
#~/.rbenv/versions/2.0.0-p195/bin/gem/update_rubygems

sudo gem install bundler
bundle install

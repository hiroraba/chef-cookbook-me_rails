#!/bin/sh

# Install Ruby
sudo apt-get -y update
sudo apt-get -y install git-core
sudo apt-get -y install libopenssl-ruby

git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
echo 'export PATH="$HOME/.rbenv/shims:$PATH"' >> ~/.bash_profile
source ~/.bash_profile
rbenv install 1.9.3-p125
rbenv global 1.9.3-p125
rbenv rehash
wget http://rubyforge.org/frs/download.php/76729/rubygems-1.8.25.tgz
tar xzf rubygems-1.8.25.tgz
cd rubygems-1.8.25
ruby setup.rb

#!/bin/bash

# Install Ruby
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install git-core
sudo apt-get -y install libopenssl-ruby
sudo apt-get -y install build-essential
sudo apt-get -y install libreadline-dev libssl-dev zlib1g-dev
sudo apt-get -y install libssl-dev libssl1.0.0
sudo apt-get -y install curl

git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export RBENV_ROOT="$HOME/.rbenv"' >> ~/.bash_profile
echo 'export PATH="$RBENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source .bash_profile

git clone git@github.com:sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

rbenv install 1.9.3-p125
rbenv global 1.9.3-p125
rbenv rehash

wget http://rubyforge.org/frs/download.php/76729/rubygems-1.8.25.tgz
tar xzf rubygems-1.8.25.tgz
cd rubygems-1.8.25
ruby setup.rb

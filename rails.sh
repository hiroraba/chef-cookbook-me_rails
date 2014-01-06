#!/bin/sh

# Install Ruby
sudo apt-get -y update
sudo apt-get -y install git-core
sudo apt-get -y install libopenssl-ruby
sudo apt-get -y install build-essential
sudo apt-get -y install libreadline-dev libssl-dev zlib1g-dev
sudo apt-get -y install libssl-dev libssl1.0.0
sudo apt-get -y install curl
sudo apt-get -yV install  ruby1.9.1-full

wget http://rubyforge.org/frs/download.php/76729/rubygems-1.8.25.tgz
tar xzf rubygems-1.8.25.tgz
cd rubygems-1.8.25
./setup.rb

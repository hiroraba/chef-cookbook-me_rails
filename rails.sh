#!/bin/sh

# Install Ruby
sudo apt-get -y update
sudo apt-get -y install git-core
sudo apt-get -y install libopenssl-ruby
sudo apt-get -y install build-essential
sudo apt-get -y install libreadline-dev libssl-dev zlib1g-dev
sudo apt-get -y install libssl-dev libssl1.0.0
sudo apt-get -y install curl

git clone git://github.com/sstephenson/rbenv.git ~/.rbenv

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone git://github.com/sstephenson/ruby-build.git
cd ruby-build
sudo ./install.sh

rbenv install 1.9.3-p125
rbenv global 1.9.3-p125
rbenv rehash
wget http://rubyforge.org/frs/download.php/76729/rubygems-1.8.25.tgz
tar xzf rubygems-1.8.25.tgz
cd rubygems-1.8.25
ruby setup.rb

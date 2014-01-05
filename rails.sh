#!/bin/sh

# Install Ruby
sudo apt-get -y update
sudo apt-get -y install git-core
sudo apt-get -y install libopenssl-ruby

git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> .bash_profile
echo 'eval "$(rbenv init -)"' >> .bash_profile
bash
rbenv install 2.0.0-p195
rbenv global 2.0.0-p195
rbenv rehash
wget http://rubyforge.org/frs/download.php/70696/rubygems-1.3.7.tgz
tar xzf rubygems-1.3.7.tgz
cd rubygems-1.3.7
~/.rbenv/versions/2.0.0-p195/bin/ruby setup.rb

sudo gem install bundler
bundle install

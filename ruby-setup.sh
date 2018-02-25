#This part installs rbenv and ruby-build and instal ruby v2.3.3
sudo apt-get install rbenv
sudo apt-get install ruby-build
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
mkdir ~/.rbenv
mkdir ~/.rbenv/plugins
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv install 2.3.3
rbenv rehash
#Set ruby v2.3.3 as default
rbenv global 2.3.3

#This part excludes the download of ruby index and ruby docs while installing gems
mkdir ~/.gemrc
echo "gem: --no-ri --no-rdoc" > ~/.gemrc

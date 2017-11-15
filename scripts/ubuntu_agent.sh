#!/bin/bash
set -ex
echo '192.168.50.4 master.vm master' >> /etc/hosts
echo '192.168.50.5 windows01.vm windows01' >> /etc/hosts
echo '192.168.50.6 centos.vm centos' >> /etc/hosts
echo '192.168.50.7 ubuntu.vm ubuntu' >> /etc/hosts

# Change the password for user ubuntu to "vagrant"
sudo usermod --password $(echo vagrant | openssl passwd -1 -stdin) ubuntu

# Install Puppet Agent
# Note: This assumets the Ubuntu package is already configured in the master
#       See: https://puppet.com/docs/pe/2017.3/installing/installing_agents.html#concept-5321
curl -k https://master.vm:8140/packages/current/install.bash | sudo bash
puppet --server master.vm agent -t
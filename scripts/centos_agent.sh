#!/bin/bash
set -ex
#hostname linux.vm
echo '192.168.50.4 master.vm master' >> /etc/hosts
echo '192.168.50.6 linux.vm linux' >> /etc/hosts
echo '192.168.50.7 ubuntu.vm ubuntu' >> /etc/hosts

# Install the Puppet Agent. The master.vm also have CentOS, so we only run this command
#curl -k https://master.vm:8140/packages/current/install.bash | bash
#/usr/local/bin/puppet agent --server master.vm -t

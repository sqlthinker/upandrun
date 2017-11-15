Vagrant.configure("2") do |config|

  config.vm.define "master.vm" do |master|
    master.vm.box = "centos/7"
    master.vm.hostname = "master.vm"
    master.vm.network "private_network", ip: "192.168.50.4"
    master.vm.provider "virtualbox" do |v|
	  v.name = "master.vm"
      v.memory = 4096
      v.cpus = 2
    end
  end

  config.vm.define "windows01.vm" do |windows01|
    windows01.vm.box = "ferventcoder/win2012r2-x64-nocm"
    windows01.vm.communicator = "winrm"
    windows01.vm.hostname = "windows01"
    windows01.vm.provision "shell", path: "scripts/windows_agent.ps1"
    windows01.vm.network "private_network", ip: "192.168.50.5"
    windows01.vm.provider "virtualbox" do |v|
	  v.name = "Windows01"
      v.memory = 2048
    end
  end

  config.vm.define "centos.vm" do |centos|
    centos.vm.box = "centos/7"
    centos.vm.hostname = "centos.vm"
    centos.vm.network "private_network", ip: "192.168.50.6"
    centos.vm.provision "shell", path: "scripts/centos_agent.sh"
    centos.vm.provider "virtualbox" do |v|
	  v.name = "CentOS"
      v.memory = 2048
    end
  end

  config.vm.define "ubuntu.vm" do |ubuntu|
    ubuntu.vm.box = "ubuntu/xenial64"
    ubuntu.vm.hostname = "ubuntu"
    ubuntu.vm.network "private_network", ip: "192.168.50.7"
    ubuntu.vm.provision "shell", path: "scripts/ubuntu_agent.sh"
    ubuntu.vm.provider "virtualbox" do |v|
	  v.name = "Ubuntu"
      v.memory = 2048
    end
  end

  config.vm.define "windows02.vm" do |windows02|
    windows02.vm.box = "ferventcoder/win2012r2-x64-nocm"
    windows02.vm.communicator = "winrm"
    windows02.vm.hostname = "windows02"
    windows02.vm.provision "shell", path: "scripts/windows_agent.ps1"
    windows02.vm.network "private_network", ip: "192.168.50.8"
    windows02.vm.provider "virtualbox" do |v|
	  v.name = "Windows02"
      v.memory = 2048
    end
  end

end

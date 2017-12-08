Vagrant.configure("2") do |config|

  # Master node
  config.vm.define "master.vm" do |vmconfig|
    vmconfig.vm.box = "centos/7"
    vmconfig.vm.box_download_insecure = true
    vmconfig.vm.hostname = "master.vm"
    #vmconfig.vm.provision "shell", path: "scripts/masterbootstrap.sh"
    vmconfig.vm.network "private_network", ip: "192.168.50.4"
    vmconfig.vm.provider "virtualbox" do |v|
	  v.name = "master.vm"
      v.memory = 4096
      v.cpus = 2
    end
	#vmconfig.ssh.username = "vagrant"
	#vmconfig.ssh.password = "vagrant"
  end

  # Windows node
  config.vm.define "windows01.vm" do |vmconfig|
    vmconfig.vm.box = "ferventcoder/win2012r2-x64-nocm"
    vmconfig.vm.box_download_insecure = true
    vmconfig.vm.communicator = "winrm"
    vmconfig.vm.hostname = "windows01"
    #vmconfig.vm.provision "shell", path: "scripts/windows_agent.ps1"
    vmconfig.vm.network "private_network", ip: "192.168.50.5"
    vmconfig.vm.provider "virtualbox" do |v|
	  v.name = "Windows01"
      v.memory = 2048
    end
	#vmconfig.winrm.username = "vagrant"
	#vmconfig.winrm.password = "vagrant"
  end

  # CentOS node
  config.vm.define "centos.vm" do |vmconfig|
    vmconfig.vm.box = "centos/7"
    vmconfig.vm.box_download_insecure = true
    vmconfig.vm.hostname = "centos.vm"
    vmconfig.vm.network "private_network", ip: "192.168.50.6"
    #vmconfig.vm.provision "shell", path: "scripts/centos_agent.sh"
    vmconfig.vm.provider "virtualbox" do |v|
	  v.name = "CentOS"
      v.memory = 2048
    end
	#vmconfig.ssh.username = "vagrant"
	#vmconfig.ssh.password = "vagrant"
  end

  # Ubuntu node
  config.vm.define "ubuntu.vm" do |vmconfig|
    vmconfig.vm.box = "ubuntu/xenial64"
    vmconfig.vm.box_download_insecure = true
    vmconfig.vm.hostname = "ubuntu"
    vmconfig.vm.network "private_network", ip: "192.168.50.7"
    #vmconfig.vm.provision "shell", path: "scripts/ubuntu_agent.sh"
    vmconfig.vm.provider "virtualbox" do |v|
	  v.name = "Ubuntu"
      v.memory = 2048
    end
	#vmconfig.ssh.username = "ubuntu"
	#vmconfig.ssh.password = "vagrant"
  end

end

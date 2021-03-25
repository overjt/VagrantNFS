Vagrant.configure("2") do |config|
  config.vm.define "nfsserver" do |m|

    m.vm.box = "ubuntu/groovy64"
    m.vm.provider :virtualbox do |vb|
      vb.customize [ 'modifyvm', :id, '--name', 'nfsserver' ]
      vb.customize [ 'modifyvm', :id, '--memory', '512' ]
    end
  
    m.vm.hostname = "nfsserver"  
    m.vm.provision "shell", path: "install_server.sh"

    m.vm.network "private_network", ip: "192.168.33.10"
  end

  config.vm.define "client1" do |m|

    m.vm.box = "ubuntu/groovy64"
    m.vm.provider :virtualbox do |vb|
      vb.customize [ 'modifyvm', :id, '--name', 'client1' ]
      vb.customize [ 'modifyvm', :id, '--memory', '512' ]
    end
  
    m.vm.hostname = "client1"
    m.vm.provision "shell", path: "install_client.sh"
    m.vm.network "private_network", ip: "192.168.33.11"
  end

  config.vm.define "client2" do |m|

    m.vm.box = "ubuntu/groovy64"
    m.vm.provider :virtualbox do |vb|
      vb.customize [ 'modifyvm', :id, '--name', 'client2' ]
      vb.customize [ 'modifyvm', :id, '--memory', '512' ]
    end
  
    m.vm.hostname = "client2"
    m.vm.provision "shell", path: "install_client.sh"
    m.vm.network "private_network", ip: "192.168.33.12"
  end
end

# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |conf|

  conf.vm.define :full_build, primary: true do |config|
    config.vm.box     = 'ubuntu/trusty64'
    config.ssh.insert_key = false
    
    config.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", 2048, "--ioapic", "on", "--cpus", 1]
    end

    config.vm.provision :shell, :inline => "/vagrant/provision.sh"


  end

end

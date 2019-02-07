Vagrant.configure("2") do |config|
  config.vm.define "kali" do |kali|
    kali.vm.box = "offensive-security/kali-linux"
  end
  config.vm.define "deb" do |deb|
    deb.vm.box = "debian/jessie64"
    deb.vm.provision "shell", path: "unattended-upgrades/install.sh"
  end
end

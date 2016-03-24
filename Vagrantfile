# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.box = "precise32"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  config.vm.network "public_network", bridge: "en0: Wi-Fi (AirPort)", ip: "192.168.11.100"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"


  config.vm.provision "chef_solo" do |chef|
    chef.cookbooks_path = "chef-repo/cookbooks"
    chef.roles_path = "chef-repo/roles"
    chef.data_bags_path = "chef-repo/data_bags"
    chef.run_list = [
        "recipe[customphp]",
        "recipe[composer]",
        "recipe[cakephp]"
        ]
  end

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  config.vm.provider "virtualbox" do |vb|
    # Customize the amount of memory on the VM:
    vb.memory = "1024"
  end
end

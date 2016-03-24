#
# Cookbook Name:: cakephp
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#create composer directory
directory "/home/vagrant/composer" do
  mode "0755"
  action :create
end

#create composer.json
template "composer.json" do
  path "/home/vagrant/composer/composer.json"
  source "composer.json.erb"
  mode 0644
end

#install cakephp
execute "install_cakephp" do
  command <<-EOH
    cd /home/vagrant/composer
    composer install
  EOH
  action :run
end

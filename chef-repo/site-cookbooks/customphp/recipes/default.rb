#
# Cookbook Name:: customphp
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# php インストール
execute "install_python-software-properties" do
  command <<-EOH
    apt-get -y update
    sudo apt-get -y install python-software-properties
  EOH
  action :run
end


execute "install_php56" do
  command <<-EOH
    apt-get -y update
    add-apt-repository ppa:ondrej/php5-5.6
    apt-get -y update
    apt-get -y install php5 php5-mhash php5-mcrypt php5-curl php5-cli php5-mysql php5-gd php5-intl php5-xsl php5-bcmath
  EOH
  action :run
end

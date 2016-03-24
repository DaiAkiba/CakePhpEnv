#
# Cookbook Name:: mysql_server
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

mysql_service 'default' do
    version '5.5'
    initial_root_password 'password'
    action [:create, :start]
end

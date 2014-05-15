#
# Cookbook Name:: loganov-owncloud
# Recipe:: default
#
# Copyright 2014, Loganov Industries
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apt'

apt_repository 'owncloud' do
  uri node['loganov']['owncloud']['apt']['uri']
  key node['loganov']['owncloud']['apt']['key']
  components node['loganov']['owncloud']['apt']['components']
end

package 'owncloud'

cookbook_file 'default-ssl.conf' do
  path '/etc/apache2/sites-available/default-ssl.conf'
  action :create
end

execute "a2enmod ssl" do
  command "/usr/sbin/a2enmod ssl"
  notifies :reload, 'service[apache2]'
end

execute "a2ensite default-ssl" do
  command "/usr/sbin/a2enmod ssl"
  notifies :reload, 'service[apache2]'
end
#
# Cookbook Name:: loganov-transmission
# Recipe:: default
#
# Copyright 2014, Loganov Industries
#
# All rights reserved - Do Not Redistribute
#

transmission_pkgs = ['transmission-common', 'transmission-cli', 'transmission-daemon']

transmission_pkgs.each do |pkg|
  package pkg do
    action :install
  end
end

## user add
#user remove
#group add
#group remove

template 'settings.json' do
  path "#{node['transmission']['config_dir']}/settings.json"
  source 'settings.json.erb'
  owner 'debian-transmission'
  group 'debian-transmission'
  mode '0644'
end

template 'transmission-default' do
  path '/etc/default/transmission-daemon'
  source 'transmission-daemon.default.erb'
  owner 'root'
  group 'root'
  mode '0644'
end

template '/etc/init.d/transmission-daemon' do
  source 'transmission-daemon.init.erb'
  owner 'root'
  group 'root'
  mode '0755'
end

service 'transmission' do
  service_name 'transmission-daemon'
  supports :restart => true, :reload => true
  action [:enable, :start]
end

#symlink /var/lib/trans/info/config.json -> /etc/trans/config.json

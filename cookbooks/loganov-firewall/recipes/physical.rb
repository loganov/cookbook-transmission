#
# Cookbook Name:: loganov-firewall
# Recipe:: physical
#
# Copyright 2014, Loganov Industries
#
# All rights reserved - Do Not Redistribute
#

directory '/etc/firewall' do
  owner 'root'
  group 'root'
  mode 0755
  action :create
end

cookbook_file 'rules.iptables' do
 path '/etc/firewall/rules.iptables'
 owner 'root'
 group 'root'
 mode 0755
end

execute '/sbin/iptables-restore < /etc/firewall/rules.iptables'

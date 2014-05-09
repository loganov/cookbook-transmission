#
# Cookbook Name:: loganov-firewall
# Recipe:: default
#
# Copyright 2014, Loganov Industries
#
# All rights reserved - Do Not Redistribute
#

#firewall 'ufw' do 
#  action :enable 
#end

#firewall_rule 'ssh' do 
#  port 22 
#  action :allow 
#  notifies :enable, 'firewall[ufw]' 
#end

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

#
# Cookbook Name:: loganov-firewall
# Recipe:: default
#
# Copyright 2014, Loganov Industries
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'firewall'
include_recipe 'ufw'

#firewall 'ufw' do 
#  action :enable 
#end

#firewall_rule 'ssh' do 
#  port 22 
#  action :allow 
#  notifies :enable, 'firewall[ufw]' 
#end

firewall_rule 'ssh' do
  port     22
  action   :allow
  notifies :enable, 'firewall[ufw]'
end
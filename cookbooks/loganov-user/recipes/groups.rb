#
# Cookbook Name:: loganov-user
# Recipe:: groups
#
# Copyright 2014, Loganov Industries
#
# All rights reserved - Do Not Redistribute
#
group 'wheel' do
  action [:create, :modify]
  members node['loganov']['user']['group']['wheel']
end
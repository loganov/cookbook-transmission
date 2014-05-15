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


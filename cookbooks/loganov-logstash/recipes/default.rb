#
# Cookbook Name:: loganov-logstash
# Recipe:: default
#
# Copyright 2014, Loganov Industries
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'ark'
include_recipe 'logstash'

directory '/opt/logstash' do
	
end

#wget 
#extract to directory

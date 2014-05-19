#
# Cookbook Name:: loganov-openldap
# Recipe:: default
#
# Copyright 2014, Loganov Industries
#
# All rights reserved - Do Not Redistribute
#

include_recipe "openldap::auth"
include_recipe "openldap::server"

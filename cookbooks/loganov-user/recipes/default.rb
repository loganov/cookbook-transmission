#
# Cookbook Name:: loganov-user
# Recipe:: default
#
# Copyright 2014, Loganov Industries
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'user'

user_account 'gweaver' do
  action [:create, :manage]
  comment 'Gregory Weaver'
  ssh_keys ['ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDWpnP1ycaWA9Ha9ygcojGONHLpBCIaqOnCD562Dg0SLZ0v/eIaxsLttAbj5O087EMnU2JzjrKoVl9Bwn1Q21H0RVCTvzS9L5ofr3kNGYixZ9XpWfiEKO7OHx3wCFveOiNYqXQW0bQEWrgjZtnCrKwn+vcNqp6NDCnPjUKyeT8ClbcVCUGiOEBGo58J7A3i7ggEBmaUdcfcx8ecyxQjz2sv8fTE8DXnY3/2+HUVruHh7JfFBiwXtTpwYylitFcQd4Iz6n+QYSNrlgVknk6R9zx8DTMqYixX5DuyDRLjG50TJztnfS/cCcox4iontgHgVBzbve6x9Vv9c5m13n7XLybN gregory.weaver@gmail.com']
  home '/home/gweaver'
end
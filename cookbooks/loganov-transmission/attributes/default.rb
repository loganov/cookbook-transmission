#
# Cookbook Name:: loganov-transmission
# Attribute:: default
#
# Copyright 2014, Loganov Industries
#

default['transmission']['user']  = 'debian-transmission'
default['transmission']['group'] = 'debian-transmission'

default['transmission']['port'] = 51413

default['transmission']['rpc_bind_address'] = '0.0.0.0'
default['transmission']['rpc_port']         = 9091
default['transmission']['rpc_auth']         = false

default['transmission']['home']             = '/var/lib/transmission-daemon'
default['transmission']['config_dir']       = '/var/lib/transmission-daemon/info'
default['transmission']['download_dir']     = '/var/lib/transmission-daemon/downloads'
default['transmission']['incomplete_dir']   = '/var/lib/transmission-daemon/incomplete'
default['transmission']['watch_dir']        = '/var/lib/transmission-daemon/watch'
default['transmission']['incomplete_dir_enabled'] = 'false'
default['transmission']['watch_dir_enabled']      = 'false'

default['transmission']['speed_limit_down']         = 0 #KB/s
default['transmission']['speed_limit_down_enabled'] = 'false'
default['transmission']['speed_limit_up']           = 100 #KB/s
default['transmission']['speed_limit_up_enabled']   = 'true'

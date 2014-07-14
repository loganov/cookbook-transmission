log_level                :info
log_location             STDOUT
node_name                'admin'
client_key               'admin.pem'
validation_client_name   'chef-validator'
validation_key           'chef-validator.pem'
chef_server_url          'https://chef.loganov.com'
syntax_check_cache_path  'syntax_check_cache'
cookbook_path            '../cookbooks'
knife[:editor] = "/usr/bin/nano"
knife[:digital_ocean_client_id] = 'b7eeed3646fc5c050f2807f8a85233c3'
knife[:digital_ocean_api_key] = '59af40d15e391de3b5713b2f3241e56d'

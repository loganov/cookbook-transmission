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


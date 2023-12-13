# base system
include_recipe 'base::default'

package 'docker-compose'

directory '/etc/apache2' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

template 'docker-compose.yaml' do
  source 'docker-compose.yaml'

  path '/srv/containers/docker-compose.yaml'
  mode '0755'
  owner 'web_admin'
  group 'web_admin'
end
#
# Cookbook:: assignment
# Recipe:: default
#

# Copyright:: 2019, The Authors, All Rights Reserved

#package 'php'

package 'apache2'
service 'apache2' do
	action [:enable, :start]
end

file '/var/www/html/index.html' do
	content 'Webserver is running..'
end

package 'php' do
	action :install
end


package 'mongodb' do
	action :install
end

include_recipe "mongodb::default"

package 'wordpress' do
	action :install
end

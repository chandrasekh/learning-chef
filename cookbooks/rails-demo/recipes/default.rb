#
# Cookbook Name:: rails-demo
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
directory "/var/www/rails-apps/rails-demo" do
  owner "vagrant"
  group "vagrant"
  recursive true
end

application "rails-demo" do
  path "/var/www/rails-apps/rails-demo"
  owner "vagrant"
  group "vagrant"
  repository "https://github.com/mulderp/chef-demo.git"
  rails do 
    bundler true
  end
  passenger_apache2
end

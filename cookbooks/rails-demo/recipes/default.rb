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

application "/var/www/rails-apps/rails-demo" do
  owner "vagrant"
  group "vagrant"
  git "https://github.com/mulderp/chef-demo.git"
  bundle_install do
    deployment true
  end
  passenger_enterprise
end

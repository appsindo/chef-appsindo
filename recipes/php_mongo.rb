#
# Cookbook Name:: appsindo
# Recipe:: php_mongo
# Descriptions::
#    Will install PHP Mongo Module from Source (The old one)
#
# Copyright 2014, PT Appsindo Technology as BSD-style found in the LICENSE file
#
# @author Erwin Saputra <erwin.saputra@at.co.id>
#

include_recipe "build-essential"
include_recipe "git"

bash "install old mongo" do
  code <<-EOF
    printf "\n" | pecl install mongo
  EOF
  not_if "php -m | grep mongo"
end

template "#{node['php']['ext_conf_dir']}/mongo.ini" do
  source   "php_extension.ini.erb"
  owner    "root"
  group    "root"
  mode     "0644"
  variables(:name => "mongo", :directives => [])
  not_if   "php -m | grep mongo"
end
#
# Cookbook Name:: appsindo
# Recipe:: mongodb
#
# Copyright 2014, PT Appsindo Technology as BSD-style found in the LICENSE file
#
# @author Erwin Saputra <erwin.saputra@at.co.id>
#

include_recipe "mongodb::10gen_repo"
include_recipe "mongodb::default"
include_recipe "mongodb::user_management"
#
# Cookbook Name:: irc
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
user 'tdi' do
  action :create
  comment "Test Driven Infrastructure"
  home "/home/tdi"
  manage_home true
end

package 'httpd' do
  action :install
end

directory '/home/tdi/httpd' do
  owner 'tdi'
  group 'tdi'
end

cookbook_file '/home/tdi/httpd/config' do
  source 'httpd.conf'
  owner 'tdi'
  group 'tdi'
end

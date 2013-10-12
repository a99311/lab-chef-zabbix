#
# Cookbook Name:: zabbix
# Recipe:: server
#
# Copyright 2013, teamLab Inc
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'zabbix'

%w(zabbix-web-mysql zabbix-web-japanese zabbix-web zabbix-server-mysql zabbix-server zabbix).each do |pkg|
  package pkg
end

template '/etc/zabbix/zabbix_server.conf' do
  owner 'root'
  group 'root'
  mode 00644
  notifies :restart, 'service[zabbix-agent]'
end

template '/etc/logrotate.d/zabbix-server' do
  owner 'root'
  group 'root'
  mode 00644
  source 'zabbix-server_logrotate.erb'
end

service 'zabbix-server' do
  supports :status => true, :restart => true, :reload => true
  action [ :enable, :start ]
end

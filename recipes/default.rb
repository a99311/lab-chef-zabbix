#
# Cookbook Name:: zabbix
# Recipe:: default
#
# Copyright 2013, teamLab Inc
#
# All rights reserved - Do Not Redistribute
#

#package "zabbix" dodddd
#  action :install
#  source node['zabbix']['

case node['platform']
when "centos", "redhat", "amazon"
  yum_repository "zabbix-stable" do
    url node['zabbix']['repo_url']
    enabled 1
    action :add
  end
end


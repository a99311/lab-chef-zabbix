default['zabbix']['user'] = "zabbix"
default['zabbix']['group'] = "zabbix"
default['zabbix']['repo_url'] = "http://repo.zabbix.com/zabbix/2.0/rhel/6/x86_64/zabbix-release-2.0-1.el6.noarch.rpm"
default['zabbix']['server']['ip'] = "127.0.0.1"
default['zabbix']['server']['log_rotate'] = "31"
default['zabbix']['server']['db']['host'] = "localhost"
default['zabbix']['server']['db']['name'] = "zabbix"
default['zabbix']['server']['db']['user'] = "zabbix"
default['zabbix']['server']['db']['password'] = "zabbix"
default['zabbix']['server']['db']['listen_ip'] = "0.0.0.0"
default['zabbix']['agent']['hostname'] = node['hostname']
default['zabbix']['agent']['log_rotate'] = "31"
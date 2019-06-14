#!/bin/bash
yum -y install vim; yum -y install net-tools

#Instalar o agente e copiar a configuracao
yum -y install http://repo.zabbix.com/zabbix/3.2/rhel/7/x86_64/zabbix-release-3.2-1.el7.noarch.rpm
yum -y install zabbix-agent
cp /vagrant/zabbix_agentd.confhost /etc/zabbix/zabbix_agentd.conf
systemctl start zabbix-agent

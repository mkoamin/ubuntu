#!/bin/bash

# after run make the file chmod +x uninstall_zabbix_mysql.sh
# execute the script by running ./uninstall_zabbix_mysql.sh

# Stop Zabbix services
sudo systemctl stop zabbix-server
sudo systemctl stop zabbix-agent

# Uninstall Zabbix server, frontend, and agent packages
sudo apt -y purge zabbix-server-mysql zabbix-frontend-php zabbix-agent

# Purge remaining Zabbix-related packages and configuration files
sudo apt -y purge zabbix-agent zabbix-apache-conf zabbix-frontend-php zabbix-release zabbix-sql-scripts

# Uninstall Apache and MySQL packages
sudo apt -y purge apache2 mysql-server

# Remove Zabbix repository configuration file
sudo rm /etc/apt/sources.list.d/zabbix.list

# Purge remaining MySQL-related packages
sudo apt -y purge mysql-common mysql-server-8.0 php8.1-mysql

# Clean up residual packages and dependencies
sudo apt -y autoremove

#!/bin/bash
# Clone your Ansible repository
git clone https://github.com/DLZCorp/CloudInit-Ansible.git /etc/ansible

# Run your initial Ansible playbook, save log file
ansible-playbook /etc/ansible/initial-setup.yml 2>&1 | tee /var/log/ansible.log

# Purge ansible, remove repository
apt-get autoremove --purge -y ansible-core
rm /etc/ansible -rf
touch /etc/cloud/cloud-init.disabled

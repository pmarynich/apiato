cd /root/apiato_ansible
ansible-lint /root/apiato_ansible/rollback_with_db.yml
ansible-playbook /root/apiato_ansible/rollback_with_db.yml -i /root/apiato_ansible/inventory/hosts.yml --ask-vault-pass

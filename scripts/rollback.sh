cd /root/apiato_ansible

ansible-lint /root/apiato_ansible/rollback.yml

ansible-playbook /root/apiato_ansible/rollback.yml -i /root/apiato_ansible/inventory/hosts.yml --ask-vault-pass

# Uncomment the line below to run rollback of DB

#ansible-playbook /root/apiato_ansible/rollback_db.yml -i /root/apiato_ansible/inventory/hosts.yml --ask-vault-pass

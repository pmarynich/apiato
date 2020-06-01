cd /root/apiato
git checkout tags/v9.0.1 -b v9.0.1
composer update
zip -r -q /root/apiato-v9.0.1.zip *
cd /root/apiato_ansible
ansible-lint /root/apiato_ansible/update-v9.0.1.yml
ansible-playbook /root/apiato_ansible/update-v9.0.1.yml -i /root/apiato_ansible/inventory/hosts.yml

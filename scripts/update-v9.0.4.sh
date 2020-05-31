cd /root/apiato-v9.0.0
git checkout tags/v9.0.4 -b v9.0.4
composer update
zip -r -q /root/apiato-v9.0.4.zip /root/apiato-v9.0.0
ansible-lint /root/apiato_ansible/update-v9.0.4.yml
ansible-playbook /root/apiato_ansible/update-v9.0.4.yml -i /root/apiato_ansible/inventory/hosts.yml

cd /root/apiato-v9.0.0
git checkout tags/v9.0.1 -b v9.0.1
composer update
zip -r -q /root/apiato-v9.0.1.zip /root/apiato-v9.0.0
ansible-playbook /root/apiato_ansible/update-v9.0.1.yml -i /root/apiato_ansible/inventory/hosts.yml

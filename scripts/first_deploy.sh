mkdir /root/apiato-v9.0.0/
git clone -b 9.0 https://github.com/apiato/apiato.git /root/apiato-v9.0.0
cd /root/apiato-v9.0.0
composer install
zip -r -q /root/apiato-v9.0.0.zip /root/apiato-v9.0.0
ansible-playbook /root/apiato_ansible/first_deploy.yml -i /root/apiato_ansible/inventory/hosts.yml

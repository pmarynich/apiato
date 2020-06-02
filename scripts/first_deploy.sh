mkdir /root/apiato
git clone -b 9.0 https://github.com/apiato/apiato.git /root/apiato
cd /root/apiato
composer install --no-dev
zip -r -q /root/apiato-v9.0.0.zip *  -x ./.git/**\*
cd /root/apiato_ansible
ansible-lint /root/apiato_ansible/first_deploy.yml
ansible-playbook /root/apiato_ansible/first_deploy.yml -i /root/apiato_ansible/inventory/hosts.yml --ask-vault-pass

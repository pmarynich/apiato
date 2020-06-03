cd /root/apiato

git checkout tags/v$VERSION -b v$VERSION

composer update --no-dev

zip -r -q /root/apiato-v$VERSION.zip *  -x ./.git/**\*

cd /root/apiato_ansible

ansible-lint /root/apiato_ansible/update_code.yml

### Uncomment line below to backup current DB

#ansible-playbook /root/apiato_ansible/backup_db.yml -i /root/apiato_ansible/inventory/hosts.yml --ask-vault-pass

ansible-playbook /root/apiato_ansible/update_code.yml -i /root/apiato_ansible/inventory/hosts.yml --ask-vault-pass -e "apiato_version=$VERSION"

# Ansible notes and documentations

	* Run a specific playbook
		```ansible-playbook --inventory-file inventories/prd mon_deploy.yml --limit prd-tst-mon --extra-vars '{"envt":"prod"}'```
		```--inventory-file``` - different files for differnt env. Uses different service accounts.
		```mon_deploy.yml``` - playbook to run
		```--limit``` - limit deployment to single instance. prd-tst-mon is the instance name.


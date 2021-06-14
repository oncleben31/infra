decrypt:
	ansible-vault decrypt --vault-password-file .vault-password vars/vault.yaml

encrypt:
	ansible-vault encrypt --vault-password-file .vault-password vars/vault.yaml

s:
	ansible-playbook -b run.yaml --limit sombra --ask-become-pass

w:
	ansible-playbook run.yaml --limit winston --ask-become-pass --vault-password-file .vault-password

scomp:
	ansible-playbook run.yaml --limit sombra  --tags compose

su:
	ansible-playbook -b update.yaml --limit sombra --ask-become-pass

wu:
	ansible-playbook  update.yaml --limit winston --vault-password-file .vault-password

reqs:
	ansible-galaxy install -r requirements.yml
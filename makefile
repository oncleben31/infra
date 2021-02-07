u:
	ansible-playbook -b run.yaml --limit ubuntu --ask-become-pass

m:
	ansible-playbook run.yaml --limit macbookpro --ask-become-pass

ucomp:
	ansible-playbook run.yaml --limit ubuntu  --tags compose

uu:
	ansible-playbook -b update.yaml --limit ubuntu --ask-become-pass

um:
	ansible-playbook  update.yaml --limit macbookpro 

reqs:
	ansible-galaxy install -r requirements.yaml
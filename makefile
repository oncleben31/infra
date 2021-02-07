s:
	ansible-playbook -b run.yaml --limit sombra --ask-become-pass

w:
	ansible-playbook run.yaml --limit winston --ask-become-pass

scomp:
	ansible-playbook run.yaml --limit sombra  --tags compose

su:
	ansible-playbook -b update.yaml --limit sombra --ask-become-pass

wm:
	ansible-playbook  update.yaml --limit winston 

reqs:
	ansible-galaxy install -r requirements.yaml
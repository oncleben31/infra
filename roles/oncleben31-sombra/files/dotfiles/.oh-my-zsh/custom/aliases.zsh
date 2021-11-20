alias dcp="docker-compose -f ~/docker-compose.yml "
alias dcporph="docker-compose -f ~/docker-compose.yml up -d --remove-orphans"
alias dprune="docker image prune"
alias dcips=$'docker inspect -f \'{{.Name}}-{{range  $k, $v := .NetworkSettings.Networks}}{{$k}}-{{.IPAddress}} {{end}}-{{range $k, $v := .NetworkSettings.Ports}}{{ if not $v }}{{$k}} {{end}}{{end}} -{{range $k, $v := .NetworkSettings.Ports}}{{ if $v }}{{$k}} => {{range . }}{{ .HostIp}}:{{.HostPort}}{{end}}{{end}} {{end}}\' $(docker ps -aq) | column -t -s-'
alias ctop="docker run --name ctop  -ti --rm --volume /var/run/docker.sock:/var/run/docker.sock:ro quay.io/vektorlab/ctop:latest "
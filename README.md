# Docker nodejs+mongodb container
node.js + mongodb service

## Install as systemd service

Install `docker`, `docker-compose`, `git` before

Clone repository
```
mkdir /opt -p && cd /opt
git clone https://github.com/avin/node-docker.git
``` 
Modify `docker-compose.yml` if you need.

Create `/etc/systemd/system/node-docker.service`:
```
[Unit]
Description=Node Mongo Docker Service  
After=docker.service  
Requires=docker.service

[Service]
ExecStart=/usr/local/bin/docker-compose -f /opt/node-docker/docker-compose.yml up --build
ExecStop=/usr/local/bin/docker-compose -f /opt/node-docker/docker-compose.yml stop -t 2

[Install]
WantedBy=multi-user.target  
```

Install service
```
systemctl enable hosting-docker.service
```

## Notice
App folder `content/node` has to contain `start.sh` with start app instructions

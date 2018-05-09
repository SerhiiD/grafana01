#!/bin/sh
sudo cp /tmp/grafana.repo /etc/yum.repos.d/grafana.repo
# sudo rpm --import https://grafanarel.s3.amazonaws.com/RPM-GPG-KEY-grafana
sudo yum -y update
sudo yum -y install grafana vim telnet nmap

sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable grafana-server.service
sudo /bin/systemctl start grafana-server.service
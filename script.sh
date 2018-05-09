#!/bin/sh
sudo cp /tmp/grafana.repo /etc/yum.repos.d/grafana.repo
sudo rpm --import https://grafanarel.s3.amazonaws.com/RPM-GPG-KEY-grafana
sudo yum update
sudo yum install grafana vim telnet

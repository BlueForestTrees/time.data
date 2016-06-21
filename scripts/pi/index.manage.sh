#!/usr/bin/env bash
sudo cp index.manage.service /etc/systemd/system
sudo chown 664 /etc/systemd/system/index.manage.service
sudo systemctl enable index.manage.service
systemctl status index.manage.service

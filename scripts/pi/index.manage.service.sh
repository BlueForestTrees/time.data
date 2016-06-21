#!/usr/bin/env bash
sudo ln -s /var/lib/time.data/scripts/pi/service/index.manage.service index.manage.service
sudo chown 664 /var/lib/time.data/scripts/pi/service/index.manage.service
sudo systemctl enable index.manage.service
systemctl status index.manage.service

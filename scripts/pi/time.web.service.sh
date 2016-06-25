#!/usr/bin/env bash
sudo ln -s /var/lib/time.data/scripts/pi/service/time.web.service /etc/systemd/system/time.web.service
sudo chown 664 /var/lib/time.data/scripts/pi/service/time.web.service
sudo systemctl enable time.web.service
systemctl status time.web.service

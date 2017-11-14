#!/usr/bin/env bash
sudo ln -s /var/lib/time/time.data/scripts/pi/service/time.api.service /etc/systemd/system/time.api.service
sudo chown 664 /var/lib/time/time.data/scripts/pi/service/time.api.service
sudo systemctl enable time.api.service
systemctl status time.api.service

#!/usr/bin/env bash
sudo ln -s /var/lib/time.data/scripts/pi/service/meta.to.index.service meta.to.index.service
sudo chown 664 /var/lib/time.data/scripts/pi/service/meta.to.index.service
sudo systemctl enable meta.to.index.service
systemctl status meta.to.index.service

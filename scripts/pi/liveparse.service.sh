#!/usr/bin/env bash
sudo ln -s /var/lib/time.data/scripts/pi/service/liveparse.service liveparse.service
sudo chown 664 /var/lib/time.data/scripts/pi/service/liveparse.service
sudo systemctl enable liveparse.service
systemctl status liveparse.service

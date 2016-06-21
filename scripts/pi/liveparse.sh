#!/usr/bin/env bash
sudo cp liveparse.service /etc/systemd/system
sudo chown 664 /etc/systemd/system/liveparse.service
sudo systemctl enable liveparse.service
systemctl status liveparse.service

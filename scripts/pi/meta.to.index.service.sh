#!/usr/bin/env bash
cp meta.to.index.service /etc/systemd/system
sudo systemctl enable meta.to.index.service
systemctl status meta.to.index.service

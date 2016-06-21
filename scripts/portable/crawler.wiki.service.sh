#!/usr/bin/env bash
sudo cp crawler.wiki.service /etc/systemd/system
sudo chmod 664 /etc/systemd/system/crawler.wiki.service
sudo systemctl enable crawler.wiki.service
systemctl status crawler.wiki.service

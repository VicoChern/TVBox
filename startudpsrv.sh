#!/bin/sh
sudo systemctl daemon-reload
sudo systemctl enable udpxy
sudo systemctl start udpxy

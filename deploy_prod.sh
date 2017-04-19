#!/bin/bash

ssh -v ubuntu@52.14.184.228 << EOF

echo '1. Updating sources'
cd /data/
git checkout --force master
git pull

echo "2. Restart nginx"
sudo systemctl restart nginx

echo 'Done!'

EOF

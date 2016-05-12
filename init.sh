#!/bin/bash
sudo rm -rf /var/lib/git/test
sudo mkdir /var/lib/git/test
sudo git init --bare /var/lib/git/test
sudo chown -R nobody:nobody /var/lib/git/test
git remote rm origin
git remote add origin git://openshift.example.com/test
git push -u origin master

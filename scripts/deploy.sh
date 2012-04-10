#/ usr/bin/env bash

time jekyll

echo
echo "Sending changes to server"
echo
time rsync -rlpgoDiz --delete --checksum --whole-file --filter='protect extended_log' --filter='protect stats/' --chmod=Da+rx,Fa+r _site/ dante.u.washington.edu:public_html/

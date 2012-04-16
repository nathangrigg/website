#! /bin/sh

time jekyll

echo
echo "Sending changes to server"
echo
time rsync -rczi --delete --whole-file --filter='protect extended_log' --filter='protect stats/' --filter='protect *.pyc' --chmod=Da+rx,Fa+r _site/ dante.u.washington.edu:public_html/

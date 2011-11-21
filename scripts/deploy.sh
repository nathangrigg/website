#/ usr/bin/env bash

jekyll
rsync -avz --delete --filter='protect extended_log' --filter='protect stats/***' --chmod=Da+rx,Fa+r _site/ dante.u.washington.edu:public_html/

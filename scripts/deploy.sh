#/ usr/bin/env bash

jekyll
rsync -a --delete --chmod=Da+rx,Fa+r _site/ ~/.www/

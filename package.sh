#!/bin/bash
mkdir -p temp/python/lib/python3.6/site-packages
python3 -m pip install $1 -t temp/python/lib/python3.6/site-packages
rm -f /package/$1.zip
cd temp
zip -r /package/$1.zip *

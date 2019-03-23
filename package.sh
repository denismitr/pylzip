#!/bin/bash
mkdir -p temp/python/lib/python3.6/site-packages
python3 -m pip install $1 --target temp/python/lib/python3.6/site-packages
rm -f /layer/$1.zip
cd temp
zip -r /layer/$1.zip *

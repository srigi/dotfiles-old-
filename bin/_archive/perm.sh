#!/bin/sh

chown srigi:http `pwd`/$1 -R
find `pwd`/$1 -type d -exec chmod 0775 {} \;
find `pwd`/$1 -type f -exec chmod o+rX,ug+rwX {} \;


#!/bin/sh

path=`pwd`

chown srigi:http $path -R
find $path -type d -exec chmod 0775 {} \;
find $path -type f -exec chmod o+rX,ug+rwX {} \;


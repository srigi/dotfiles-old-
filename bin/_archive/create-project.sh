#!/bin/bash

if [ `whoami` != 'root' ]; then
    echo -e "This script need to be run as root!\n"
    exit
fi

owner=srigi
group=staff

# files/dirs
pwd=`pwd`
hostsFile=/etc/hosts
vhostsFile=/etc/httpd/conf/extra/vhosts.projects.conf
tmp_file=/tmp/creproj.$RANDOM
documentRoot=www_root
# helpers
linenr=1
start=0

read -p "Enter project name: " projectName;
while [ -z $projectName ]; do
    read -p "Enter correct project name: " projectName;
done
vhostTemplate="<VirtualHost *:80>\n\tServerName\t$projectName\n\tDocumentRoot\t\"$pwd/$projectName/$documentRoot\"\n\tCustomLog\t\"logs/$projectName.access.log\" common\n\tErrorLog\t\"logs/$projectName.error.log\"\n</VirtualHost>"

mkdir -p $projectName/$documentRoot
echo " - created project directory"

while read line; do
    if [ "$line" = "# PROJECTS" ]; then start=1; fi
    if [ $start = "1" ] && [ -z "$line" ]; then
        break;
    fi
    linenr=$(($linenr+1));
done < $hostsFile

awk 'NR=="'"$linenr"'"{print "'"127.0.0.1\t$projectName.$domain\t\tlocalhost.localdomain\tlocalhost\t$projectName"'"}1' $hostsFile > $tmp_file
mv $tmp_file $hostsFile
echo " - new hostname added to $hostsFile"

echo -e "\n$vhostTemplate\n" >> $vhostsFile
echo -e " - virtualhost configuration writed tp $vhostsFile\n"

chown $owner:$group $pwd/$projectName -R
chmod 0775          $pwd/$projectName -R

read -p "Restart httpd? " restart;
if [ $restart = 'y' ]; then
    /etc/rc.d/httpd restart
fi

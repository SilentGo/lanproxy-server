#!/bin/bash
if [ $LANPROXY_USERNAME ];then
    sed -i "14s|=admin|=$LANPROXY_USERNAME|g" /lanproxy-server/distribution/proxy-server-0.1/conf/config.properties
fi
if [ $LANPROXY_PASSWORD ];then    
    sed -i "15s|=admin|=$LANPROXY_PASSWORD|g" /lanproxy-server/distribution/proxy-server-0.1/conf/config.properties
fi
# starting 
sh /lanproxy-server/start.sh

touch /index.txt
echo "start lanproxy-server ..."  > /index.txt
tail -f /index.txt


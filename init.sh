#!/bin/bash
if [ $LANPROXY_USERNAME ];then
    sed -i "14s|admin|$LANPROXY_USERNAME|2" /lanproxy-server/distribution/proxy-server-0.1/conf/config.properties
fi
if [ $LANPROXY_PASSWORD ];then    
    sed -i "15s|admin|$LANPROXY_PASSWORD|2" /lanproxy-server/distribution/proxy-server-0.1/conf/config.properties
fi
# starting 
sh /lanproxy-server/start.sh

touch /index.txt
echo "start lanproxy-server ..."  > /index.txt
tail -f /index.txt


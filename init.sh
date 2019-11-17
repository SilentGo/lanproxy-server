#!/bin/bash
sed -i "s|admin|$LANPROXY_USERNAME|g" /lanproxy-server/distribution/proxy-server-0.1/conf/config.properties
sed -i "s|admin|$LANPROXY_PASSWORD|g" /lanproxy-server/distribution/proxy-server-0.1/conf/config.properties

# starting 
sh /lanproxy-server/start.sh

touch /index.txt
echo "start lanproxy-server ..."  > /index.txt
tail -f /index.txt


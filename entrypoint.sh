#!/bin/bash

if [ ! -d "/home/hybris/bin" ]; then
	
	cd /home/hybris
	
	# unzip the artifacts created by production ant target 
	echo "Unzipping hybris production archives ..."
	for z in hybrisServer*.zip; do unzip $z -d /home ; done
	
fi

cd ${PLATFORM_HOME}

# fix ownership of files
chown -R hybris /home/hybris
chmod +x hybrisserver.sh
chmod +x ./tomcat/bin/wrapper*

./hybrisserver.sh
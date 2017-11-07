#!/usr/bin/env bash

cp /home/slimane/time/Time/time.api/target/time.api-1.0.0-SNAPSHOT.war /home/slimane/Dev/apache-tomcat-8.0.35/webapps/
sh /home/slimane/Dev/apache-tomcat-8.0.35/bin/shutdown.sh
sh /home/slimane/Dev/apache-tomcat-8.0.35/bin/startup.sh

cd /home/slimane/time/Time/time.front
npm install
npm run-script start

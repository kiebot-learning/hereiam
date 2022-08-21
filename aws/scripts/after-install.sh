#!/bin/bash
set -xe


# Copy war file from S3 bucket to tomcat webapp folder
aws s3 cp s3://kietalk/hereiam-0.0.1-SNAPSHOT.war /var/lib/tomcat/webapps/ROOT.war


# Ensure the ownership permissions are correct.
chown -R tomcat:tomcat /var/lib/tomcat/webapps

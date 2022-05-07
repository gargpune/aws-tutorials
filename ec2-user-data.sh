#!/bin/bash
# Use this for user data (script from top to bottom)
# install httpd (Linux2 version)
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Hello World from $(hostname -f)</h1> at $(date)" > /var/www/html/index.html

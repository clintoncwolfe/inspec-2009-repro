# Issue reproduction script for chef/inspec issue 2009

This bash script creates a Docker image based on CentOS 6.7 with a simple root crontab, starts a container, and runs a Inspec control against it to verify the minute field is being parsed correctly.

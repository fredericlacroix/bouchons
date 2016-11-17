#!/bin/sh

# This program takes 3 arguments:
#   Name of the new database
#   Primary user of the new database
#   Password of the primary user
#
# It also prompts for the root password

mysql -u root -p -e "create database $1; GRANT ALL PRIVILEGES ON $1.* TO $2@localhost IDENTIFIED BY '$3'"

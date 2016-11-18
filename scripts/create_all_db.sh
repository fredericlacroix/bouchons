#!/bin/sh

# This program creates the given databases using the create_db.sh script
#
# It takes two arguments:
#   Name of the primary user
#   Password of the primary user
#   Password for the root user

./create_db.sh bouchons $1 $2 $3
./create_db.sh catalog $1 $2 $3
./create_db.sh catalog_test $1 $2 $3
./create_db.sh doubles $1 $2 $3

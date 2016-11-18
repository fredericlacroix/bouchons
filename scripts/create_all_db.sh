#!/bin/sh

# This program creates the given databases using the create_db.sh script
#
# It takes 3 arguments:
#   Name of the primary user
#   Password of the primary user
#   Password for the root user

if [ "$#" -ne 3 ]; then
    echo "Usage: create_all_db.sh <new DB primary user> <primary user password> <root user password>"
    exit 1
fi

./create_db.sh bouchons2 $1 $2 $3
./create_db.sh catalog2 $1 $2 $3
./create_db.sh catalog_test2 $1 $2 $3
./create_db.sh doubles2 $1 $2 $3

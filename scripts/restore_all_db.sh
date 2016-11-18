#!/bin/sh

# This programs takes 3 arguments:
#   Full path to the backups
#   User to login to the databases
#   User password

if [ "$#" -ne 3 ]; then
    echo "Usage: restore_all_db.sh <Full path to the backups> <DB user> <user password>"
    exit 1
fi

mysql -u $2 -p$3 doubles < $1/doubles.current.sql
mysql -u $2 -p$3 bouchons < $1/bouchons.current.sql
mysql -u $2 -p$3 catalog < $1/catalog.current.sql
mysql -u $2 -p$3 catalog_test < $1/catalog_test.current.sql

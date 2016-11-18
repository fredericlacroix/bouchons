#!/bin/sh

# This program takes 3 arguments:
#   Full path to the backup folder
#   Database user
#   User password

if [ "$#" -ne 3 ]; then
    echo "Usage: backup_mysql.sh <Full path to the backup folder> <database user> <user password>"
    exit 1
fi

seconds=$(date +"%Y_%b_%d_%s")
bouchons="bouchons.sql.$seconds"
doubles="doubles.sql.$seconds"
catalog="catalog.sql.$seconds"
catalog_test="catalog_test.sql.$seconds"

mysqldump -u$2 -p$3 --opt doubles > $1/$doubles
mysqldump -u$2 -p$3 --opt bouchons > $1/$bouchons
mysqldump -u$2 -p$3 --opt catalog > $1/$catalog
mysqldump -u$2 -p$3 --opt catalog_test > $1/$catalog_test

cp $1/$doubles $1/doubles.current.sql
cp $1/$bouchons $1/bouchons.current.sql
cp $1/$catalog $1/catalog.current.sql
cp $1/$catalog_test $1/catalog_test.current.sql

#!/bin/sh

seconds=$(date +"%s")
bouchons="bouchons.sql.$seconds.gz"
doubles="doubles.sql.$seconds.gz"
catalog="catalog.sql.$seconds.gz"
catalog_test="catalog_test.sql.$seconds.gz"

mysqldump -ufrederic -p --opt doubles > doubles.sql
mysqldump -ufrederic -p --opt bouchons > bouchons.sql
mysqldump -ufrederic -p --opt catalog > catalog.sql
mysqldump -ufrederic -p --opt catalog_test > catalog_test.sql

gzip -c bouchons.sql > $bouchons
gzip -c doubles.sql > $doubles
gzip -c catalog.sql > $catalog
gzip -c catalog_test.sql > $catalog_test

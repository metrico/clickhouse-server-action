#!/bin/sh

#############################################
# Copy UDFs Binaries to:
#    /var/lib/clickhouse/user_scripts/
# Copy UDF Scripts to:
#    /etc/clickhouse-server/*_function.xml
# Mount loader script.sh to:
#    /docker-entrypoint-initdb.d/
#############################################

echo "Starting ClickHouse"
docker run --name clickhouse -p 9000:9000 -p 8123:8123 -v /setup-udf.sh:/docker-entrypoint-initdb.d/setup-udf.sh -d clickhouse/clickhouse-server:latest-alpine

#!/bin/sh

echo "Running UDF install script..."
if [ -d "/user_scripts" ]; then
  echo "Installing user scripts..."
  ls -alF /user_scripts
  chmod +x /user_scripts/*
  cp /user_scripts/* /var/lib/clickhouse/user_scripts/
else 
  echo "No user scripts found. skipping."
fi

if [ -d "/user_functions" ]; then
  echo "Installing user functions..."
  ls -alF /user_functions
  cp /user_functions/*_function.xml /etc/clickhouse-server/
else
  echo "No UDF scripts found. skipping."
fi

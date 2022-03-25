#!/bin/bash

SCRIPTS=${"/user_scripts":-$UDF_BIN_PATH}
FUNCTIONS=${"/user_functions":-$UDF_XML_PATH}

echo "Running UDF install script..."
if [ -d "$SCRIPTS" ]; then
  echo "Installing user scripts from $SCRIPTS..."
  ls -alF $SCRIPTS
  chmod +x $SCRIPTS/*
  cp $SCRIPTS/* /var/lib/clickhouse/user_scripts/
else 
  echo "No UDF binaries found. skipping."
fi

if [ -d "$FUNCTIONS" ]; then
  echo "Installing user functions from $FUNCTIONS..."
  ls -alF $FUNCTIONS
  cp $FUNCTIONS/*_function.xml /etc/clickhouse-server/
else
  echo "No UDF scripts found. skipping."
fi

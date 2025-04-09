#!/bin/bash

# Check if the journal node is already formatted
# if [ ! -d "/hadoop/dfs/journalnode/current" ]; then
#     echo "Formatting journal node..."
#     hdfs journalnode -format
# fi

hdfs journalnode -format -force

# Start the journal node
hdfs journalnode

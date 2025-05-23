#!/bin/bash

# Check if the namenode is already formatted
# if [ ! -d "/hadoop/dfs/namenode/current" ]; then
#     echo "Formatting namenode..."
#     hdfs namenode -format
# fi

hdfs namenode -format -force

# Check if the ZKFC is already formatted
hdfs zkfc -formatZK -force

hdfs --daemon start zkfc

# Start the namenode
# hdfs namenode -initializeSharedEdits

# Start the namenode
hdfs namenode
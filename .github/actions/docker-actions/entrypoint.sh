#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT
# Write any data in a file so that the calling workflow can retrieve it as follows
#       - name: Get the file created in the docker entrypoint.sh
#         run: |
#           cd $GITHUB_WORKSPACE
#           cat result.txt
echo "my result value" >> /github/workspace/result.txt

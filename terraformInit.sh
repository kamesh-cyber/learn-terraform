#!/bin/bash

# Define the workspace name
tfworkspaceName="prod"

# Execute the command and capture its return status
status=$(terraform workspace list | grep -E "${tfworkspaceName}\$")

# Check if the return status is 0
if [ $? -eq 0 ]; then
    # If the workspace exists, select it
    terraform workspace select "${tfworkspaceName}"
else
  terraform workspace new "${tfworkspaceName}"
fi

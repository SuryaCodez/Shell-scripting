#!/bin/bash

# Specify the username to monitor
TARGET_USER="your_username"

# Monitor user logins
tail -n0 -F /var/log/auth.log | while read -r line
do
    # Check if the line contains a login event
    if echo "$line" | grep -q "sshd.*session opened"
    then
        # Extract the username from the line
        username=$(echo "$line" | awk '{print $(NF-3)}')
        
        # Check if the logged-in user matches the target user
        if [ "$username" = "$TARGET_USER" ]
        then
            # Display the login message
            echo "User $TARGET_USER logged in within one minute."
            break  # Exit the loop after the first match
        fi
    fi
done

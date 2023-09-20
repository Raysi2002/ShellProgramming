#!/bin/bash

# Check for the correct number of arguments
if [ $# -eq 0 ]; then
  read -p "Enter username: " username
elif [ $# -eq 1 ]; then
  username="$1"
else
  echo "Usage: $0 [username]"
  exit 1
fi

# Use the 'last' command to get user login/logout records
login_records=$(last | grep "$username")

# Calculate the total time spent by the user
total_time=0

while read -r line; do
  # Extract login and logout times from the 'last' output
  login_time=$(echo "$line" | awk '{print $5, $6, $7, $8}')
  logout_time=$(echo "$line" | awk '{print $9, $10, $11, $12}')

  # Convert times to seconds since epoch
  login_seconds=$(date -d "$login_time" "+%s" 2>/dev/null)
  logout_seconds=$(date -d "$logout_time" "+%s" 2>/dev/null)

  # Calculate the duration in seconds
  if [ -n "$login_seconds" ] && [ -n "$logout_seconds" ]; then
    duration=$((logout_seconds - login_seconds))
    total_time=$((total_time + duration))
  fi
done <<< "$login_records"

# Convert the total time to a human-readable format
total_time_formatted=$(date -u -d "@$total_time" +"%H hours, %M minutes, %S seconds")

# Display the result
echo "Total time spent by user $username: $total_time_formatted"

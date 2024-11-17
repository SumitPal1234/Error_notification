#!/bin/bash
LOG_FILE="/var/log/app.log"
ERROR_KEYWORD="ERROR"
tail -F $LOG_FILE | grep --line-buffered $ERROR_KEYWORD | while read line; do
  echo "Error detected: $line"
  # Send alert (e.g., email or Slack notification)
done

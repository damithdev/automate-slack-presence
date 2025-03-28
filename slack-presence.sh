#!/bin/bash

# SLACK_TOKEN must be set in environment (GitHub Secret)
SLACK_TOKEN=${SLACK_TOKEN:?SLACK_TOKEN not set}

# Get the hour in Sri Lanka Standard Time (UTC+5:30)
SL_HOUR=$(TZ='Asia/Colombo' date +%H)

# Determine presence based on time
if [ "$SL_HOUR" -lt 12 ]; then
  PRESENCE="auto"   # First half → active
else
  PRESENCE="away"   # Second half → away
fi

echo "Setting Slack presence to $PRESENCE (SL time hour: $SL_HOUR)"

curl -s -X POST https://slack.com/api/users.setPresence \
  -H "Authorization: Bearer $SLACK_TOKEN" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  --data "presence=$PRESENCE"

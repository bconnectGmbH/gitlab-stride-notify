#!/bin/sh

echo $WEB_HOOK_URL
echo $MESSAGE_TEMPLATE

curl -H "Content-Type: application/json" -X POST $WEB_HOOK_URL/$NOTIFICATION_TOKEN -d @- << EOF
$MESSAGE_TEMPLATE
EOF

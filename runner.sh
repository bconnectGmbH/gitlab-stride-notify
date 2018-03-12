#!/bin/sh

curl -H "Content-Type: application/json" -X POST $WEB_HOOK_URL -d @- << EOF
$MESSAGE_TEMPLATE
EOF

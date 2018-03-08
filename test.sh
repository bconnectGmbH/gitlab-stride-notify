#!/bin/sh

echo "TEST with url ${WEB_HOOK_URL} with Template ${MESSAGE_TEMPLATE} with Token ${NOTIFICATION_TOKEN} and with ${GITLAB_PROJECT_ID}";
curl -H "Content-Type: application/json" -X POST -d $MESSAGE_TEMPLATE $WEB_HOOK_URL
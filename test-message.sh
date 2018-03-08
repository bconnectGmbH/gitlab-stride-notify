docker build . -t notify-runner
docker run -e WEB_HOOK_URL=https://url.com -e NOTIFICATION_TOKEN=5 -e MESSAGE_TEMPLATE='{ "title" : "Testmessage" }' -e GITLAB_PROJECT_ID=22 notify-runner /test.sh
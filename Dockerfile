FROM bconnect/gitlab-base

ENV WEB_HOOK_URL https://notify.b-connect.eu
ENV NOTIFICATION_TOKEN 12345
ENV MESSAGE_TEMPLATE ''
ENV GITLAB_PROJECT_ID 1

ADD test.sh /test.sh
ADD runner.sh /runner.sh

RUN chmod +x /test.sh
RUN chmod +x /runner.sh
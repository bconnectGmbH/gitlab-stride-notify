#!/bin/sh

MESSAGE_TEMPLATE=$(cat << EOF
{
  "project": {
    "name": "${GITLAB_PROJECT_NAME}"
  },
  "content": {
    "version": 1,
    "type": "doc",
    "content": [
      {
        "type": "applicationCard",
        "attrs": {
          "text": "some text",
          "collapsible": true,
          "title": {
            "text": "${CI_PROJECT_PATH}",
            "user": {
              "icon": {
                  "url": "https://b-connect.de/sites/all/themes/bctheme/logo.png",
                "label": "logo"
              }
            }
          },
          "description": {
              "text": "\nOops! Something went wrong with ${CI_PROJECT_NAME} - ${CI_COMMIT_TAG}.\n"
          },
          "details": [
            {
              "lozenge": {
                  "bold": true,
                  "text": "Build failed",
                  "appearance": "removed"
              }
            }
          ],
          "context": {
            "text": "${CI_COMMIT_SHA}",
            "icon": {
              "url": "https://i1.wp.com/struscode.com/wp-content/uploads/2017/08/head-from-gitlab-logo-small-min.png",
              "label": "logo"
            }
          }
        }
      }
    ]
  }
}
EOF
)

sh /runner.sh

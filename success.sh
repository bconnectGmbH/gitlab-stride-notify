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
              "text": "\nThe Project ${CI_PROJECT_NAME} - ${CI_COMMIT_TAG} has been build successfully.\n"
          },
          "details": [
            {
              "lozenge": {
                  "bold": true,
                  "text": "Build successful",
                  "appearance": "success"
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

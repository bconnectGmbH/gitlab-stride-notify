#!/bin/sh

MESSAGE_TEMPLATE=$(cat << EOF
{
  "project": {
    "name": "test"
  },
  "content": {
    "version": 1,
    "type": "doc",
    "content": [
        {
        "type": "applicationCard",
        "attrs": {
            "collapsible": true,
            "title": {
            "text": "${CI_PROJECT_PATH}",
            "user": {
                "icon": {
                "url": "https://b-connect.de/sites/all/themes/bctheme/logo.png",
                "label": "Logo"
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
            "text": "${CI_COMMIT_SHA}"
            }
        }
        }
    ]
  }
}
EOF
)

sh /runner.sh

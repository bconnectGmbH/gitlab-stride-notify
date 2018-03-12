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

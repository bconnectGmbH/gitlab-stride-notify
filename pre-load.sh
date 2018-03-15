#/!bin/sh

cd $CI_PROJECT_DIR

# See format parameters here https://git-scm.com/docs/git-rev-list
COMMIT_MESSAGE=`git log -1 --pretty=tformat:%s $CI_COMMIT_SHA`
COMMIT_AUTHOR=`git log -1 --pretty=tformat:%an $CI_COMMIT_SHA`
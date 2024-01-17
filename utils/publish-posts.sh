#!/usr/bin/bash

OUTPUT_DIR=".."
CONTENT_DIR="../content"
PUBLISHED_POSTS_DIR="../posts"
CWD=$(pwd)

cd $CONTENT_DIR
for F in ./posts/*.template; do
  FILENAME=$(basename "$F" .template)
  PUBLISH_DIR=$(echo "${FILENAME:0:10}"  | sed 's|-|/|g')
  PUBLISH_FILE="${PUBLISHED_POSTS_DIR}/${PUBLISH_DIR}/${FILENAME:11}.html"
  mkdir -p "${PUBLISHED_POSTS_DIR}/${PUBLISH_DIR}"
  cp "${F}" "${PUBLISH_FILE}"
  echo "PUBLISHED ${PUBLISH_FILE}"
done

cd $CWD

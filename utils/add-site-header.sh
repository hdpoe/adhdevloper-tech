#!/usr/bin/bash
OUTPUT_DIR=".."
CONTENT_DIR="../content"
PUBLISHED_POSTS_DIR="../posts"
CWD=$(pwd)

cd $CONTENT_DIR

read -r -d '' SITE_HEADER <<EOF
  <h1><a style="color:black;text-decoration:none" href="/index.html">ADHDeveloper Blog</a></h1>\n\
  <p>\n\
    Unconnected ramblings on development, technology, business, security and more by a rambling engineer.\n\
  </p>\n\
  <p>\n\
    <a href="/archive.html">Archive</a> \&middot; \n\
    <a href="/about-the-site.html">About the Site</a> \&middot; \n\
    <a href="/about-the-author.html">About the Author</a> \&middot; \n\
    <a href="/contact.html">Contact Me</a>\n\
  </p>\n\
  <hr />
EOF

for F in ./*.template; do
    FILE_SLUG=$(basename -s '.template' $F)
    sed  "s|SITE_HEADER|${SITE_HEADER}|" $F > "${OUTPUT_DIR}/${FILE_SLUG}.html"
done

for F in ./posts/*.template; do
  FILENAME=$(basename "$F" .template)
  PUBLISH_DIR=$(echo "${FILENAME:0:10}"  | sed 's|-|/|g')

  echo "========================="
  echo "${PUBLISH_DIR}"
  echo "========================="

  PUBLISH_FILE="${PUBLISHED_POSTS_DIR}/${PUBLISH_DIR}/${FILENAME:11}.html"
  mkdir -p "${PUBLISHED_POSTS_DIR}/${PUBLISH_DIR}"
  sed  "s|SITE_HEADER|${SITE_HEADER}|" $F > "${PUBLISH_FILE}"
  echo "PUBLISHED ${PUBLISH_FILE}"
done

cd $CWD

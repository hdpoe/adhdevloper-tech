#!/usr/bin/env bash
INDEX='index.template'
CONTENT_DIR="../content"
ARCHIVE_PAGE="archive.template"
CWD=$(pwd)

cd $CONTENT_DIR

read -r -d '' HEADER <<-EOF
<html>
 <body>
SITE_HEADER
  <h2>Posts</h2>
EOF

POSTS=$(grep -v body ${ARCHIVE_PAGE})

read -r -d '' FOOTER <<-EOF
 </body>
</html>
EOF


echo "${HEADER}${POSTS}${FOOTER}" > $INDEX
echo "Index file created"
cd $CWD

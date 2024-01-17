#!/usr/bin/env bash
INDEX='index.html'

read -r -d '' HEADER <<-EOF
<html>
 <body>
SITE_HEADER
  <h2>Posts</h2>
EOF

POSTS=$(grep -v body archive.html)

read -r -d '' FOOTER <<-EOF
 </body>
</html>
EOF


echo "${HEADER}${POSTS}${FOOTER}" > index.html
echo "Index file created"

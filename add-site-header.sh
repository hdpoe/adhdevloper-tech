#!/usr/bin/bash

read -r -d '' SITE_HEADER <<EOF
  <h1>ADHDeveloper Blog</h1>\n\
  <p>\n\
    Unconnected ramblings on development, technology, business, security and more by a rambling engineer.\n\
  </p>\n\
  <p>\n\
    <a href="./archive.html">Archive</a> \&middot; \n\
    <a href="./about-the-site.html">About the Site</a> \&middot; \n\
    <a href="./about-the-author.html">About the Author</a> \&middot; \n\
    <a href="./contact.html">Contact Me</a>\n\
  </p>\n\
  <hr />
EOF

sed -i "s|SITE_HEADER|${SITE_HEADER}|" ./*.html

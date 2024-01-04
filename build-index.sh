#!/usr/bin/env bash
INDEX='index.html'

read -r HEADER <<-EOF
<html>
  <h1>ADHDeveloper Blog</h1>
  <p>
    Unconnected ramblings on development, technology, business, security and more by an unconnected engineer.
  </p>
  <h2>Nav</h2>
  <p>
    <a href="./archive.html">Archive</a> &middot;
    <a href="./about-the-site.html">About the Site</a> &middot;
    <a href="./about-the-author.html">About the Author</a> &middot;
    <a href="./contact.html">Contact Me</a>
  </p>
  <h2>Posts</h2>
EOF

POSTS=$(grep -v body archive.html)

read -r FOOTER <<-EOF
     </body>
</html>
EOF

echo "${HEADER}${POSTS}${FOOTER}" > index.html
echo "Index file created"

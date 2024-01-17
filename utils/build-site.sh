#!/usr/bin/bash
./publish-posts.sh
echo "Posts published"
./build-archive.sh
echo "Built archive"
./build-index.sh
echo "Built index"
./add-site-header.sh
echo "Added Header"

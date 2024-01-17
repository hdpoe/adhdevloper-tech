#!/usr/bin/bash
./build-post-listings.sh
echo "Built archive"
./build-index.sh
echo "Built index"
./add-site-header.sh
echo "Added Header"

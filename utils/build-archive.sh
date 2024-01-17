#!/usr/bin/env bash

# Define the output file
OUTPUT="archive.template"
CONTENT_DIR="../content"
CWD=$(pwd)
POSTS_DIR='posts'

cd $CONTENT_DIR
# Start the HTML file
echo "<html><head><title>Archive</title></head><body>SITE_HEADER<h2>Archive of Posts</h2>" > $OUTPUT
# Function to extract the first 500 words after the first <p> tag
extract_content() {
    # Use sed to isolate the content after the first <p> tag, then use awk to get the first 500 words
    grep -m 1 -h -o -P '<p>.{0,500}' $1
}
# Loop through each HTML file in the posts directory
find $POSTS_DIR -type f -name "*.html" | while read file; do
    # Extract the title (assuming the filename without extension is the title)
    TITLE=$(basename "$file" .html | sed 's/-/ /g' | sed -E "s/[[:alnum:]_'-]+/\u&/g")
#    TITLE=${FILENAME:11}
    echo $file
    PUBLISH_DATE=$(echo "${file:9:10}" | sed 's| |/|g')

    # Extract the content
    CONTENT=$(extract_content "$file")

    # Append the hyperlink and content to the output HTML file
    echo "<div><h2><a href=\"$file\">$TITLE</a></h2><p>Published: $PUBLISH_DATE</p>$CONTENT...</p></div>" >> $OUTPUT
done

# End the HTML file
printf "\n</body></html>" >> $OUTPUT

echo "Archive page created as $OUTPUT"
cd $CWD

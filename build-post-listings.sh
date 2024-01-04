#!/usr/bin/env bash

# Define the output file
OUTPUT="archive.html"

# Start the HTML file
echo "<html><head><title>Archive</title></head><body><h1>Archive of Posts</h1>" > $OUTPUT

# Function to extract the first 500 words after the first <p> tag
extract_content() {
    # Use sed to isolate the content after the first <p> tag, then use awk to get the first 500 words
    grep -m 1 -h -o -P '<p>.{0,500}' $1
}
# Loop through each HTML file in the posts directory
find posts -type f -name "*.html" | while read file; do
    # Extract the title (assuming the filename without extension is the title)
    TITLE=$(basename "$file" .html | sed 's/-/ /g' | sed -E "s/[[:alnum:]_'-]+/\u&/g")
    echo $file
    PUBLISH_DATE=$(echo -n $file | awk -NF'/' '{print $2 "/" $3 "/" $4}')
EOF

    # Extract the content
    CONTENT=$(extract_content "$file")

    # Append the hyperlink and content to the output HTML file
    echo "<div><h2><a href=\"$file\">$TITLE</a></h2><p>Published: $PUBLISH_DATE</p>$CONTENT</p></div>" >> $OUTPUT
done

# End the HTML file
echo "</body></html>" >> $OUTPUT

echo "Archive page created as $OUTPUT"

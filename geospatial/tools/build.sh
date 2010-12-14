#!/bin/bash

# Converts markdown into html and svg into png for documentation
# Dependencies: convert (ImageMagick), pandoc

if [ $# -ne 2 ]; then
  echo "usage: $0 source_directory target_directory"
  exit
fi

TITLE="Ingres Geospatial Documentation"

CSS="#TOC ul {
	display: inline;
}

#TOC ul li {
	float: left;
	list-style: none;
	padding: 0 0.5em;
}

#TOC ul ul {
	display: none;
}

h1 {
	clear: both;
}

pre code {
	white-space: pre-wrap;
}

h1 a, h2 a, h3 a, h4 a, h5 a, h6 a {
  text-decoration: none;
  color: #000;
}

.figure p {
  display: none;
}

table, table th, table td {
  border: 1px solid #000;
  border-collapse: collapse;
}
"

SOURCE_DIR=$1
OUTPUT_DIR=$2

mkdir -p $OUTPUT_DIR

# Convert all SVG images to PNG
for i in $( ls $SOURCE_DIR/**/**/*.svg ); do
  BASENAME=`basename -s .svg $i`
  NEWNAME="$OUTPUT_DIR/$BASENAME.png"
  if [ "$PATCH_SVG" = "yes" ]; then
    # Swaps the order of transformations to cope with a suspected bug in ImageMagick's convert
    cat $i | sed 's/transform="\([a-z]*([0-9 +,-]*)\) \([a-z]*([0-9 +,-]*)\)"/transform="\2 \1"/' | convert svg:- $NEWNAME
  else
    cat $i | convert svg:- $NEWNAME
  fi
done

# Merge all markdown files into a single markdown file
for i in $( ls $SOURCE_DIR/**/**/*.markdown ); do
  TMP=`cat $i`
  BODY="$BODY$TMP\n\n"
done

echo "$CSS" > $OUTPUT_DIR/style.css

# Convert from markdown to html and swap svg for png references
echo -e "$BODY" | pandoc -f markdown -t html --standalone --toc --section-divs --css=style.css --title-prefix="$TITLE" --strict | sed s/\.svg/\.png/ > $OUTPUT_DIR/index.html

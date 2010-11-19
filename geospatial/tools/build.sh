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
"

DIR=$1
OUTPUT_DIR=$2

mkdir -p $OUTPUT_DIR
# Convert all SVG images to PNG
for i in $( ls $DIR/**/**/*.svg ); do
  BASENAME=`basename -s .svg $i`
  NEWNAME="$OUTPUT_DIR/$BASENAME.png"
  `convert $i $NEWNAME`
done

# Merge all markdown files into an html file and swap SVG references for PNG references
for i in $( ls $DIR/**/**/*.markdown ); do
  TMP=`cat $i`
  BODY="$BODY$TMP\n\n"
done

echo "$CSS" > $OUTPUT_DIR/style.css
echo -e "$BODY" | pandoc -f markdown -t html --standalone --toc --section-divs --css=style.css --title-prefix="$TITLE" --strict | sed s/\.svg/\.png/ > $OUTPUT_DIR/index.html

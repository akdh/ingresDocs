# Ingres Geospatial Documentation #

This is the documentation for everything geospatial in Ingres.

## Building in HTML ##

The documentation is written in Markdown and SVG (for the images). To build the documentation in a single HTML page that uses PNG images use the build script.

    tools/build.sh geospatial /path/to/output/dir

The build script uses has two dependencies:

* ImageMagick (http://www.imagemagick.org/script/index.php) for the convert tool which converts from SVG to PNG
* Pandoc (http://johnmacfarlane.net/pandoc/) for going from Markdown to HTML

# Ingres Geospatial Documentation #

This is the documentation for everything geospatial in Ingres.

## Building in HTML ##

The documentation is written in Markdown and SVG (for the images). To build the documentation in a single HTML page that uses PNG images use the build script.

    tools/build.sh geospatial /path/to/output/dir

The build script has two dependencies:

* ImageMagick (http://www.imagemagick.org/script/index.php) for the convert tool which converts from SVG to PNG
* Pandoc (http://johnmacfarlane.net/pandoc/) for going from Markdown to HTML

Somewhere between version 6.6.1 and 6.6.5 of ImageMagick the order of transformations was reversed. I think the original order of operations (in 6.6.1) is correct, all other programs I've tried use it. The issue is described on the [ImageMagick forum](http://www.imagemagick.org/discourse-server/viewtopic.php?f=3&t=17509). Unfortunately the convert operation is used to produce PNG images from SVG files.

If you are experiencing issues with the conversion from SVG to PNG use `export PATCH_SVG=yes` before running the build tool. This swaps the transformations locally but not globally, however it should fix many (not all) issues.

# Colour scheme #

The following RGB colours and combinations of them are used in the SVG files.

* Black (000000)
* White (FFFFFF)
* Blues
  * 1E7687
  * 0A4B57
  * 70B6C3
* Oranges
  * DB822D
  * 8E4D0F
  * EDB885

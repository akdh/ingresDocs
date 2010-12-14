# Geometry Collection #

Collections can group points, linestrings, and polygons together. MultiPoint, MultiLinestring, and MultiPolygon are geometry collections that are all of the same time.

## Examples ##

Geometry collections can mix singular types.

    * CREATE TABLE collections (id INTEGER PRIMARY KEY, collection GEOMETRYCOLLECTION);\g
    Executing . . .

    * INSERT INTO collections (id, collection) VALUES (1, GEOMCOLLFROMTEXT('GEOMETRYCOLLECTION( POLYGON ((0 0, 10 10, 0 10, 0 0)), POLYGON ((0 0, 10 10, 10 0, 0 0)))'));\g
    Executing . . .

    (1 row)

    * INSERT INTO collections (id, collection) VALUES (2, GEOMCOLLFROMTEXT('GEOMETRYCOLLECTION( POLYGON ((0 0, 10 10, 0 10, 0 0)), POINT (50 50))'));\g
    Executing . . .

    (1 row)

MultiPolygons are collections made up only of polygons.

    * CREATE TABLE polygons (id INTEGER PRIMARY KEY, polygon MULTIPOLYGON);\g                                                                                              
    Executing . . .

    * INSERT INTO polygons (id, polygon) VALUES (1, MPOLYFROMTEXT('MULTIPOLYGON(((0 0, 10 10, 0 10, 0 0)), ((0 0, 10 10, 10 0, 0 0)))'));\g      
    Executing . . .

    (1 row)

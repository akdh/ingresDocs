# IsEmpty #

integer ISEMPTY(g Geometry)

Returns `1` if g contains no points, returns `0` otherwise. Will return `-1` if there is an error.

## Examples ##

g is the intersection of two polygons which have no shared points.

    * SELECT ISEMPTY(INTERSECTION(POLYFROMTEXT('POLYGON((0 0, 0 2, 2 2, 2 0, 0 0))'), POLYFROMTEXT('POLYGON((8 8, 10 8, 10 10, 8 10, 8 8))')));\g
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            1│
    └─────────────┘
    (1 row)

    * SELECT ISEMPTY(GEOMCOLLFROMTEXT('GEOMETRYCOLLECTION EMPTY'));\g
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            1│
    └─────────────┘
    (1 row)

    * SELECT ISEMPTY(LINEFROMTEXT('LINESTRING(0 0, 10 10)'));\g      
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            0│
    └─────────────┘
    (1 row)

# SymDifference #

Geometry SYMDIFFERENCE(g1 Geometry, g2 Geometry)

Alias: ST_SYMDIFFERENCE

Returns an object that contains every point in either one of g1 or g2 but not points are in both g1 and g2. g1 and g2 should have the same dimension. Equivalent to the UNION of the DIFFERENCEs of g1, g2 and g2, g1.

## Examples ##

g1 and g2 do not share any points.

    * SELECT ASTEXT(SYMDIFFERENCE(POLYFROMTEXT('POLYGON((0 0, 10 0, 5 5, 10 10, 0 10, 0 0))'), POLYFROMTEXT('POLYGON((10 1, 6 5, 10 9, 14 5, 10 1))')));\g
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │MULTIPOLYGON (((0 0, 0 10, 10 10, 5 5, 10 0, 0 0)), ((10 1, 6 5, 10 9, 14 5, 10 1)))│
    └────────────────────────────────┘
    (1 row)

![SymDifference](symdifference.svg)

g1 and g2 are the same.

    * SELECT ASTEXT(SYMDIFFERENCE(LINEFROMTEXT('LINESTRING(0 0, 0 10)'), LINEFROMTEXT('LINESTRING(0 0, 0 10)')));\g
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │GEOMETRYCOLLECTION EMPTY        │
    └────────────────────────────────┘
    (1 row)

g1 and g2 share only some points.

    * SELECT ASTEXT(SYMDIFFERENCE(POLYFROMTEXT('POLYGON((0 0, 10 0, 15 5, 10 10, 0 10, 0 0))'), POLYFROMTEXT('POLYGON((10 0, 20 0, 20 10, 10 10, 5 5, 10 0))')));\g
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │MULTIPOLYGON (((10 0, 0 0, 0 10, 10 10, 5 5, 10 0)), ((10 0, 15 5, 10 10, 20 10, 20 0, 10 0)))│
    └────────────────────────────────┘
    (1 row)

![SymDifference](symdifference2.svg)

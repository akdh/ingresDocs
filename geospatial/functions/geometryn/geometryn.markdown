# GeometryN #

Geometry GEOMETRYN(g Geometrycollection, n interger)

Returns the n-th object from g.

## Examples ##

    * SELECT ASTEXT(GEOMETRYN(MLINEFROMTEXT('MULTILINESTRING((1 1, 9 1), (2 2, 8 2))'), 2));\g
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │LINESTRING (2 2, 8 2)           │
    └────────────────────────────────┘
    (1 row)

# Difference #

Geometry DIFFERENCE(g1 Geometry, g2 Geometry)

Returns the part of g1 that does not share any points with g2. g1 and g2 should have the same dimension.

## Examples ##

g2 shares every one of its points with g1, g1 also has some unique points.

    * SELECT ASTEXT(DIFFERENCE(POLYFROMTEXT('POLYGON((0 0, 10 0, 10 10, 0 10, 0 0))'), POLYFROMTEXT('POLYGON((2 2, 2 4, 4 4, 4 2, 2 2))')));\g
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │POLYGON ((0 0, 0 10, 10 10, 10 0, 0 0), (2 2, 4 2, 4 4, 2 4, 2 2))│
    └────────────────────────────────┘
    (1 row)

![DifferenceNormal](difference.svg)

g1 does not share any points with g2.

    * SELECT ASTEXT(DIFFERENCE(POLYFROMTEXT('POLYGON((0 0, 4 0, 4 10, 0 10, 0 0))'), POLYFROMTEXT('POLYGON((6 0, 10 0, 10 10, 6 10, 6 0))')));\g
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │POLYGON ((0 0, 0 10, 4 10, 4 0, 0 0))│
    └────────────────────────────────┘
    (1 row)

![DifferenceSame](difference2.svg)

g1 shares every one of its points with g2.

    * SELECT ASTEXT(DIFFERENCE(POLYFROMTEXT('POLYGON((2 2, 2 8, 8 8, 8 2, 2 2))'), POLYFROMTEXT('POLYGON((0 0, 10 0, 10 10, 0 10, 0 0))')));\g  
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │GEOMETRYCOLLECTION EMPTY        │
    └────────────────────────────────┘
    (1 row)

![DifferenceEmpty](difference3.svg)

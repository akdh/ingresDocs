# Disjoint #

integer DISJOINT(g1 Geometry, g2 Geometry)

Returns `1` if g1 and g2 have no points which they both contain, returns `0` otherwise.

## Example ##

    * SELECT DISJOINT(POLYFROMTEXT('POLYGON((0 10, 10 10, 8 0, 2 0, 0 10))'), POLYFROMTEXT('POLYGON((10 13, 20 13, 18 3, 12 3, 10 13))'));\g
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            1│
    └─────────────┘
    (1 row)

![DisjointTrue](disjoint.svg)

    * SELECT DISJOINT(POLYFROMTEXT('POLYGON((0 10, 10 10, 8 0, 2 0, 0 10))'), POLYFROMTEXT('POLYGON((8 13, 18 13, 16 3, 10 3, 8 13))'));\g  
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            0│
    └─────────────┘
    (1 row)

![DisjointFalse](disjoint2.svg)

# ConvexHull #

Geometry CONVEXHULL(g Geometry)

Returns an object that contains all of g.

## Example ##

    * SELECT ASTEXT(CONVEXHULL(MPOINTFROMTEXT('MULTIPOINT((0 0), (10 1), (9 10), (0 0), (8 8))')));\g
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │POLYGON ((0 0, 9 10, 10 1, 0 0))│
    └────────────────────────────────┘
    (1 row)

![ConvexHull](convexhull.svg)

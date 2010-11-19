# Intersects #

integer INTERSECTS(g1 Geometry, g2 Geometry)

Alias: ST_INTERSECTS

Returns `1` if g1 and g2 have any shared points, returns `0` otherwise. Returns the opposite of DISJOINT.

## Examples ##

    * SELECT INTERSECTS(POLYFROMTEXT('POLYGON((0 10, 10 10, 8 0, 2 0, 0 10))'), POLYFROMTEXT('POLYGON((10 13, 20 13, 18 3, 12 3, 10 13))'));\g
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            0│
    └─────────────┘
    (1 row)

![IntersectsFalse](intersects.svg)

    * SELECT INTERSECTS(POLYFROMTEXT('POLYGON((0 10, 10 10, 8 0, 2 0, 0 10))'), POLYFROMTEXT('POLYGON((8 13, 18 13, 16 3, 10 3, 8 13))'));\g  
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            1│
    └─────────────┘
    (1 row)

![IntersectsTrue](intersects2.svg)

g2 is the intersection of g1 and another polygon.

    * SELECT INTERSECTS(POLYFROMTEXT('POLYGON((0 0, 10 0, 5 10, 0 0))'), INTERSECTION(POLYFROMTEXT('POLYGON((0 0, 10 0, 5 10, 0 0))'), POLYFROMTEXT('POLYGON((0 10, 5 10, 2.5 0, 0 10))')));\g
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            1│
    └─────────────┘
    (1 row)

![IntersectsIntersection](intersects3.svg)

# InteriorRingN #

Linestring INTERIORRINGN(p Polygon, n integer)

Returns the linestring for the n-th interior ring of p. Interior rings are holes in the polygon.

## Examples ##

    * SELECT ASTEXT(INTERIORRINGN(POLYFROMTEXT('POLYGON((2 0, 2 10, 0 10, 10 15, 20 10, 18 10, 18 0, 2 0), (13 0, 13 5, 17 5, 17 0, 13 0), (5 7, 5 10, 8 10, 8 7, 5 7))'),1));\g
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │LINESTRING (13 0, 13 5, 17 5, 17 0, 13 0)│
    └────────────────────────────────┘
    (1 row)
    continue

![InteriorRingN](interiorringn.svg)

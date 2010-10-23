# ExteriorRing #

Linestring EXTERIORRING(p Polygon)

Returns the linestring for the exterior ring of p. The exterior ring is the outside of the polygon.

## Examples ##

    * SELECT ASTEXT(EXTERIORRING(POLYFROMTEXT('POLYGON((0 0, 0 10, 10 10, 10 0, 0 0), (2 2, 2 8, 8 8, 8 2, 2 2))')));\g
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │LINESTRING (0 0, 0 10, 10 10, 10 0, 0 0)│
    └────────────────────────────────┘
    (1 row)

![ExteriorRing](exteriorring.svg)

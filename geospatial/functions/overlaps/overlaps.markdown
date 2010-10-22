# Overlaps #

integer OVERLAPS(g1 Geometry, g2 Geometry)

Returns `1` if g1 and g2 have some points which they share and their intersection is of their dimension. Returns `0` if one of them shares every point with the other the other (CONTAINS) or if they do not share any points (DISJOINT).

## Examples ##

g1 and g2 intersect at a single POINT, which has a lower dimension than g1 and g2.

    * SELECT OVERLAPS(LINEFROMTEXT('LINESTRING(0 0, 10 10)'), LINEFROMTEXT('LINESTRING(0 10, 10 0)'));\g
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            0│
    └─────────────┘
    (1 row)

![OverlapsFalsePoint](overlaps.svg)

g1 and g2 intersect at a LINESTRING, which has the same dimension as g1 and g2.

    * SELECT OVERLAPS(LINEFROMTEXT('LINESTRING(0 10, 6 4)'), LINEFROMTEXT('LINESTRING(4 6, 10 0)'));\g
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            1│
    └─────────────┘
    (1 row)

![OverlapsTrue](overlaps2.svg)

g1 and g2 do not share any points.

    * SELECT OVERLAPS(POLYFROMTEXT('POLYGON((0 0, 10 0, 7 10, 3 10, 0 0))'), POLYFROMTEXT('POLYGON((9 5, 19 5, 16 15, 12 15, 9 5))'));\g
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            0│
    └─────────────┘
    (1 row)
    
![OverlapsFalseDisjoint](overlaps3.svg)

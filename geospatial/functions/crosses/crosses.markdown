# Crosses #

integer CROSSES(g1 Geometry, g2 Geometry)

Returns `1` if g1 and g2 have only some points which they share and their intersection is of a lower dimension than either g1 or g2. Returns `0` if g1 and g2 do not have any points which they share (DISJOINT) or every point in one of them is shared with the other (CONTAINS).

## Example ##

g1 and g2 share some points but each has some unique points. They intersect at a single POINT, which has a lower dimension than LINESTRING.

    * SELECT CROSSES(LINEFROMTEXT('LINESTRING(0 0, 10 10)'), LINEFROMTEXT('LINESTRING(0 10, 10 0)'));\g                                                                                       
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            1│
    └─────────────┘
    (1 row)



![CrossesTrue](crosses.svg)

g2 shares every one of its points with g2.

    * SELECT CROSSES(POLYFROMTEXT('POLYGON((0 0, 0 10, 10 10, 10 0, 0 0))'), LINEFROMTEXT('LINESTRING(1 9, 9 1)'));\g     
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            0│
    └─────────────┘
    (1 row)

![CrossesFalse](crosses2.svg)

g1 and g2 share some points but also have some unique points. They intersect along a LINESTRING which has the same dimension of both g1 and g2.

    * SELECT CROSSES(LINEFROMTEXT('LINESTRING(0 10, 6 4)'), LINEFROMTEXT('LINESTRING(4 6, 10 0)'));\g 
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            0│
    └─────────────┘
    (1 row)

![CrossesFalse](crosses3.svg)

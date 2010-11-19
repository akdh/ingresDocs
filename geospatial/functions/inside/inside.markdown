# Inside #

integer INSIDE(g1 Geometry, g2 Geometry)

Alias: ST_INSIDE

Returns `1` if every point in g1 is shared with g2, returns `0` otherwise.

**???** In what case is INSIDE different from WITHIN. Is INSIDE part of the spec?

## Examples ##

    * SELECT INSIDE(POLYFROMTEXT('POLYGON((0 0, 0 10, 10 10, 10 0, 0 0))'), POLYFROMTEXT('POLYGON((0 0, 0 10, 10 10, 0 0))'));\g      
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            0│
    └─────────────┘
    (1 row)

![InsideFalse](inside.svg)

    * SELECT INSIDE(POINTFROMTEXT('POINT(2 8)'), POLYFROMTEXT('POLYGON((0 0, 0 10, 10 10, 0 0))'));\g  
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            1│
    └─────────────┘
    (1 row)

![InsideTrue](inside2.svg)

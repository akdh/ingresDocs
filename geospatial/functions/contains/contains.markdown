# Contains #

integer CONTAINS(g1 Geometry, g2 Geometry)

Alias: ST_CONTAINS

Returns `1` when g2 is inside g1, returns `0` otherwise.

## Examples ##

    * SELECT CONTAINS(POLYFROMTEXT('POLYGON((0 0,0 10,5 5,10 10,10 0,0 0))'), POLYFROMTEXT('POLYGON((2 2,2 8,3 3,8 8,8 2,2 2))'));\g
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            1│
    └─────────────┘
    (1 row)

![Contains True](contains.svg)

    * SELECT CONTAINS(POLYFROMTEXT('POLYGON((0 0,0 10,5 5,10 10,10 0,0 0))'), POLYFROMTEXT('POLYGON((2 2,2 8,7 7,8 8,8 2,2 2))'));\g
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            0│
    └─────────────┘
    (1 row)

![Contains False](contains2.svg)

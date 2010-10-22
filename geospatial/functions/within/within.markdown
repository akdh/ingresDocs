# Within #

integer WITHIN(g1 Geometry, g2 Geometry)

Returns `1` if every point in g2 is in g1, returns `0` otherwise.

**???** This is the opposite of what the spec says...currently does the same thing as CONTAINS

## Examples ##

    * SELECT WITHIN(POLYFROMTEXT('POLYGON((2 2, 12 2, 12 12, 2 12, 2 2))'), POINTFROMTEXT('POINT(10 5)'));\g
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            1│
    └─────────────┘
    (1 row)

![WithinTrue](within.svg)

    * SELECT WITHIN(POLYFROMTEXT('POLYGON((2 2, 12 2, 12 12, 2 12, 2 2))'), LINEFROMTEXT('LINESTRING(10 5, 20 5)'));\g
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            0│
    └─────────────┘
    (1 row)

![WithinFalse](within2.svg)

# Equals #

integer EQUALS(g1 Geometry, g2 Geometry)

Returns `1` if g1 is the same as g2, returns `0` otherwise.

## Examples ##

    * SELECT EQUALS(POINTFROMTEXT('POINT(7 17)'), POINTFROMTEXT('POINT(1 2)'));\g
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            0│
    └─────────────┘
    (1 row)

    * SELECT EQUALS(POINTFROMTEXT('POINT(7 17)'), POINTFROMTEXT('POINT(7 17)'));\g
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            1│
    └─────────────┘
    (1 row)

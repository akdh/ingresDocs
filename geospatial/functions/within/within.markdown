# Within #

integer WITHIN(g1 Geometry, g2 Geometry)

Alias: ST_WITHIN

Returns `1` if every point in g1 is in g2, returns `0` otherwise.

## Examples ##

g2 is a point that is in g1, g1 also has points not in g2.

    * SELECT WITHIN(POLYFROMTEXT('POLYGON((2 2, 12 2, 12 12, 2 12, 2 2))'), POINTFROMTEXT('POINT(10 5)'));\g
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            0│
    └─────────────┘
    (1 row)

![WithinFalsePoint](within.svg)

g1 shares some points with g2, both g1 and g2 have some points not in common.

    * SELECT WITHIN(LINEFROMTEXT('LINESTRING(10 5, 20 5)'), POLYFROMTEXT('POLYGON((2 2, 12 2, 12 12, 2 12, 2 2))'));\g
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            0│
    └─────────────┘
    (1 row)

![WithinFalseLine](within2.svg)

Every point in g1 is also in g2, g2 has some points not in g1.

    * SELECT WITHIN(LINEFROMTEXT('LINESTRING(2 5, 8 5)'), POLYFROMTEXT('POLYGON((2 2, 12 2, 12 12, 2 12, 2 2))'));\g
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            1│
    └─────────────┘
    (1 row)

![WithinTrueLine](within3.svg)

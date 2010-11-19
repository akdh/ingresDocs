# PointN #

Point POINTN(l Linestring, n integer)

Alias: ST_POINTN

Returns the n-th point from l. 1 is the first point.

## Example ##

    * SELECT ASTEXT(POINTN(LINEFROMTEXT('LINESTRING(0 0, 10 0, 10 10, 0 10)'), 3));\g
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │POINT (10 10)                   │
    └────────────────────────────────┘
    (1 row)

![PointN](pointn.svg)

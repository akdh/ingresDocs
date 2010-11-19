# PointOnSurface #

Point POINTONSURFACE(g Geometry)

Alias: ST_POINTONSURFACE

Returns a point on g.

## Example ##

    * SELECT ASTEXT(POINTONSURFACE(POLYFROMTEXT('POLYGON((10 10, 10 0, 0 10, 10 10))')));\g
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │POINT (7.5 5)                   │
    └────────────────────────────────┘
    (1 row)

![PointOnSurface](pointonsurface.svg)

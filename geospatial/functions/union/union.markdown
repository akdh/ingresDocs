# Union #

Geometry UNION(g1 Geometry, g2 Geometry)

Alias: ST_UNION

Returns an object that covers the area covered by either g1 or g2.

## Example ##

    * select astext(union(polyfromtext('polygon((0 0,10 0,5 10,0 0))'),polyfromtext('polygon((0 10,5 10,2.5 0,0 10))')));\g       
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │POLYGON ((2.5 0, 0 0, 1.6666666666666667 3.333333333333333, 0 10, 5 10, 10 0, 2.5 0))│
    └────────────────────────────────┘
    (1 row)

![Intersection](union.svg)

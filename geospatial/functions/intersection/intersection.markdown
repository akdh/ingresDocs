# Intersection #

Geometry INTERSECTION(g1 Geometry, g2 Geometry)

Returns an object that covers the area covered by both g1 and g2.

## Example ##

    * select astext(intersection(polyfromtext('polygon((0 0,10 0,5 10,0 0))'),polyfromtext('polygon((0 10,5 10,2.5 0,0 10))')));\g
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │POLYGON ((1.6666666666666667 3.333333333333333, 5 10, 2.5 0, 1.6666666666666667 3.333333333333333))│
    └────────────────────────────────┘
    (1 row)


![Intersection](intersection.svg)


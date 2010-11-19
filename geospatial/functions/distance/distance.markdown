# Distance #

float DISTANCE(g1 Geometry, g2 Geometry)

Alias: ST_DISTANCE

Returns the shortest distance between g1 and g2.

## Example ##

    * SELECT DISTANCE(POINTFROMTEXT('POINT(1 0)'), POINTFROMTEXT('POINT(1 5)'));\g
    Executing . . .


    ┌───────────┐
    │col1       │
    ├───────────┤
    │      5.000│
    └───────────┘
    (1 row)

![DistancePoint](distance.svg)

    * SELECT DISTANCE(POLYFROMTEXT('POLYGON((0 0, 1 2, 2 0, 0 0))'), POLYFROMTEXT('POLYGON((3 0, 3 2, 5 0, 3 0))'));\g
    Executing . . .


    ┌───────────┐
    │col1       │
    ├───────────┤
    │      1.000│
    └───────────┘
    (1 row)

![DistancePolygon](distance2.svg)

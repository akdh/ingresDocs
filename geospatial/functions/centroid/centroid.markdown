# Centroid #

Point CENTROID(g Geometry)

Alias: ST_CENTROID

Returns the center of g. Center could be outside g.

## Examples ##

    * SELECT ASTEXT(CENTROID(POLYFROMTEXT('POLYGON((0 0, 10 0, 10 2, 2 2, 2 8, 10 8, 10 10, 0 10, 0 0))')));\g
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │POINT (4.0769230769230766 5)    │
    └────────────────────────────────┘
    (1 row)

![CentroidPolygon](centroid.svg)

    * SELECT ASTEXT(CENTROID(MPOINTFROMTEXT('MULTIPOINT((0 0), (1 1), (0.5 1), (2 0.5), (10 10), (9 9), (8.5 9))')));\g
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │POINT (4.4285714285714288 4.3571428571428568)│
    └────────────────────────────────┘
    (1 row)

![CentroidMultipoint](centroid2.svg)

# Dimension #

integer DIMENSION(g Geometry)

Alias: ST_DIMENSION

Returns the dimension of g. Dimension depends on the geometry type.

* POINT and MULTIPOINT have a dimension of 0
* LINESTRING and MULTILINESTRING have a dimension of 1
* POLYGON and MULTIPOLYGON have a dimension of 2

## Examples ##

    * SELECT DIMENSION(POINTFROMTEXT('POINT(0 10)'));\g
    Executing . . .


    ┌──────┐
    │col1  │
    ├──────┤
    │     0│
    └──────┘
    (1 row)

    * SELECT DIMENSION(MLINEFROMTEXT('MULTILINESTRING((0 0, 5 0, 0 5), (5 5, 0 0))'));\g
    Executing . . .


    ┌──────┐
    │col1  │
    ├──────┤
    │     1│
    └──────┘
    (1 row)


    * SELECT DIMENSION(POLYFROMTEXT('POLYGON((0 0, 1 0, 1 1, 0 1, 0 0))'));\g           
    Executing . . .


    ┌──────┐
    │col1  │
    ├──────┤
    │     2│
    └──────┘
    (1 row)

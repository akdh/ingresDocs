# Length #

float ST_LENGTH(g Geometry)

Returns the length of g.

**Note** You cannot call this function with simply LENGTH, you must use ST_LENGTH. The LENGTH function is defined outside of the geospatial functions. All geospatial functions can be called with `ST_` in front of them, however it is usually more convenient to omit this where possible.

## Examples ##

    * SELECT ST_LENGTH(LINEFROMTEXT('LINESTRING(1 1,1 2,3 2)'));\g
    Executing . . .


    ┌───────────┐
    │col1       │
    ├───────────┤
    │      3.000│
    └───────────┘
    (1 row)

![Length](length.svg)

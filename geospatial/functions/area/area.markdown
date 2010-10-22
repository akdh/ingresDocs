# Area #

float AREA(g Geometry)

Returns the area of g.

## Example ##

    * SELECT AREA(POLYFROMTEXT('POLYGON((0 0,0 10,5 5,10 10, 8 6,10 0,3 3,0 0))'));\g
    Executing . . .


    ┌───────────┐
    │col1       │
    ├───────────┤
    │     50.000│
    └───────────┘
    (1 row)

![Sample polygon](area.svg)

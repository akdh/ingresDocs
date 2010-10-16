# Perimeter #

float PERIMETER(g Geometry)

Returns the length of the perimeter of g.

    * SELECT PERIMETER(POLYFROMTEXT('POLYGON((0 0, 0 20, 15 20, 15 16, 10 16, 10 14, 15 14, 15 0, 0 0))'));\g
    Executing . . .


    ┌───────────┐
    │col1       │
    ├───────────┤
    │     80.000│
    └───────────┘
    (1 row)

![Perimeter](perimeter.svg)

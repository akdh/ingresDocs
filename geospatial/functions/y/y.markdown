# Y #

float Y(p POINT)

Returns the y-coordinate of p.

## Example ##

    * SELECT Y(POINTFROMTEXT('POINT(5 10)'));\g
    Executing . . .


    ┌───────────┐
    │col1       │
    ├───────────┤
    │     10.000│
    └───────────┘
    (1 row)

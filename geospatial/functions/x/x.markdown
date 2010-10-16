# X #

float X(p POINT)

Returns the x-coordinate of p.

## Example ##

    * SELECT X(POINTFROMTEXT('POINT(5 10)'));\g
    Executing . . .


    ┌───────────┐
    │col1       │
    ├───────────┤
    │      5.000│
    └───────────┘
    (1 row)

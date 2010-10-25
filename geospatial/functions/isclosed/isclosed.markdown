# IsClosed #

integer ISCLOSED(g Geometry)

Use for Linestrings. Returns `1` if the first and last points in g are the same, returns `0` otherwise.

## Examples ##

    * SELECT ISCLOSED(LINEFROMTEXT('LINESTRING(0 0, 0 2, 2 2, 2 4, 4 4, 4 6, 6 6, 6 8, 8 8, 8 10, 10 10)'));\g
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            0│
    └─────────────┘
    (1 row)

![IsClosedFalse](isclosed.svg)

    * SELECT ISCLOSED(LINEFROMTEXT('LINESTRING(0 0, 0 10, 10 10, 0 0)'));\g
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            1│
    └─────────────┘
    (1 row)

![IsClosedTrue](isclosed2.svg)

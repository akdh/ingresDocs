# NumPoints #

integer NUMPOINTS(l Linestring)

Alias: ST_NUMPOINTS

Returns the number of points that make up l.

## Examples ##

    * SELECT NUMPOINTS(LINEFROMTEXT('LINESTRING(0 0, 5 5, 0 10, 5 15)'));\g
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            4│
    └─────────────┘
    (1 row)

![NumPoints](numpoints.svg)

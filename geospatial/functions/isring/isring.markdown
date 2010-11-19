# IsRing #

integer ISRING(g Geometry)

Alias: ST_ISRING

Use for Linestrings. Returns `1` if g's start point and end point are the same (ISCLOSED) and g does not cross the same point twice (ISSIMPLE). Returns `0` otherwise.

## Examples ##

g does not cross itself and has the same start and end points.

    * SELECT ISRING(LINEFROMTEXT('LINESTRING(0 5, 5 10, 10 5, 5 0, 0 5)'));\g     
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            1│
    └─────────────┘
    (1 row)

![IsRingTrue](isring.svg)

g crosses itself.

    * SELECT ISRING(LINEFROMTEXT('LINESTRING(0 0, 10 0, 10 10, 5 10, 5 6, 7 6, 7 8, 0 8, 0 0)'));\g
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            0│
    └─────────────┘
    (1 row)

![IsRingFalse](isring2.svg)

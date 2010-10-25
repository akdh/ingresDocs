# IsSimple #

integer ISSIMPLE(g Geometry)

Returns `1` if g does not cross the same point twice, returns `0` if it does. g is simple even if its start and end point are the same. Will return `-1` if there is an error.

**???** Can a 2 dimensional object (eg. polygon) not be simple?

## Examples ##

One line of g touches another point in g.

    * SELECT ISSIMPLE(LINEFROMTEXT('LINESTRING(5 0, 10 10, 10 0, 0 0, 10 10)'));\g
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            0│
    └─────────────┘
    (1 row)

![IsSimpleFalseTangent](issimple.svg)

One line of g crosses over another line.

    * SELECT ISSIMPLE(LINEFROMTEXT('LINESTRING(0 0, 10 10, 10 0, 0 10, 0 0)'));\g
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            0│
    └─────────────┘
    (1 row)

![IsSimpleFalseCross](issimple2.svg)

g does not cross the same point twice.

    * SELECT ISSIMPLE(LINEFROMTEXT('LINESTRING(10 20, 0.5 13.1, 4.1 1.9, 15.9 1.9, 19.5 13.1, 10 20)'));\g
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            1│
    └─────────────┘
    (1 row)

![IsSimpleTrue](issimple3.svg)

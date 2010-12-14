# Boundary #

Geometry BOUNDARY(g Geometry)

Alias: ST_BOUNDARY

Returns the closure of the boundary of g.

## Examples ##

    * SELECT ASTEXT(BOUNDARY(LINEFROMTEXT('LINESTRING(0 0, 10 0, 10 10)')));\g     
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │MULTIPOINT (0 0, 10 10)         │
    └────────────────────────────────┘
    (1 row)


    * SELECT ASTEXT(BOUNDARY(POLYFROMTEXT('POLYGON((0 0, 10 0, 10 10, 0 0))')));\g
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │LINESTRING (0 0, 10 0, 10 10, 0 0)│
    └────────────────────────────────┘
    (1 row)

# NumInteriorRing #

integer NUMINTERIORRING(p Polygon)

Alias: ST_NUMINTERIORRING

Returns the number of interior rings in p. Interior rings are holes in the polygon.

## Example ##

    * SELECT NUMINTERIORRING(POLYFROMTEXT('POLYGON((0 0, 0 10, 10 10, 10 0, 0 0), (2 2, 2 4, 8 4, 8 2, 2 2), (2 6, 2 8, 8 8, 8 6, 2 6))'));\g
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            2│
    └─────────────┘
    (1 row)

![NumInteriorRing](numinteriorring.svg)

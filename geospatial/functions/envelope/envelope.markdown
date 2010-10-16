# Envelope #

Geometry ENVELOPE(g Geometry)

Returns the bounding-box for g.

## Example ##

    * SELECT ASTEXT(ENVELOPE(POLYFROMTEXT('POLYGON((0 0,10 0,5 10,0 0))')));\g
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │POLYGON ((0 0, 10 0, 10 10, 0 10, 0 0))│
    └────────────────────────────────┘
    (1 row)

![Envelope](envelope.svg)

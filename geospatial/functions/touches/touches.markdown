# Touches #

integer TOUCHES(g1 Geometry, g2 Geometry)

Returns `1` if g1 and g2 share one or more points but do not overlap, returns `0` if they overlap or do not share any points.

    * SELECT TOUCHES(POLYFROMTEXT('POLYGON((0 13, 10 13, 10 3, 2 3, 0 13))'), POLYFROMTEXT('POLYGON((10 13, 20 13, 18 3, 10 3, 10 13))'));\g             
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            1│
    └─────────────┘
    (1 row)

![TouchesTrue](touches.svg)

    * SELECT TOUCHES(POLYFROMTEXT('POLYGON((0 13, 10 13, 10 3, 2 3, 0 13))'), POLYFROMTEXT('POLYGON((6 13, 16 13, 14 3, 6 3, 6 13))'));\g   
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            0│
    └─────────────┘
    (1 row)

![TouchesFalse](touches2.svg)

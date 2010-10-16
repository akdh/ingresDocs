# StartPoint #

Point STARTPOINT(l Linestring)

Returns the first point in l.

## Example ##

    * SELECT ASTEXT(STARTPOINT(LINEFROMTEXT('LINESTRING(0 0, 10 0, 10 10, 0 10)')));\g
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │POINT (0 0)                     │
    └────────────────────────────────┘
    (1 row)

![StartPoint](startpoint.svg)

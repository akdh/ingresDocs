# EndPoint #

Point ENDPOINT(l Linestring)

Returns the last point in l.

## Example ##

    * SELECT ASTEXT(ENDPOINT(LINEFROMTEXT('LINESTRING(0 0, 10 0, 10 10, 0 10)')));\g     
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │POINT (0 10)                    │
    └────────────────────────────────┘
    (1 row)

![EndPoint](endpoint.svg)

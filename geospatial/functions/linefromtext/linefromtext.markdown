# LineFromText #

Geometry LINEFROMTEXT(s string [, srid integer])

Returns a linestring that corresponds to the Well Known Text (WKT) in s. The SRID can optionally be specified, it is `-1` by default.

## Example ##

    * SELECT ASTEXT(LINEFROMTEXT('LINESTRING(0 0,2 2,4 0,6 6,8 0,10 10)'));\g 
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │LINESTRING (0 0, 2 2, 4 0, 6 6, 8 0, 10 10)│
    └────────────────────────────────┘
    (1 row)

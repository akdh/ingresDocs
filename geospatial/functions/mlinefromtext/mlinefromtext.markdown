# MLineFromText #

Geometry MLINEFROMTEXT(s string [, srid integer])

Returns a multilinestring object that corresponds to the Well Known Text (WKT) in s. The SRID can optionally be specified, it is `-1` by default.

## Example ##

    * SELECT ASTEXT(MLINEFROMTEXT('MULTILINESTRING((0 0,10 10),(10 0,0 10))'));\g                  
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │MULTILINESTRING ((0 0, 10 10), (10 0, 0 10))│
    └────────────────────────────────┘
    (1 row)

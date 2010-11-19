# MPointFromText #

Geometry MPOINTFROMTEXT(s string [, srid integer])

Returns a multipoint object that corresponds to the Well Known Text (WKT) in s. The SRID can optionally be specified, it is `-1` by default.

## Example ##

    * SELECT ASTEXT(MPOINTFROMTEXT('MULTIPOINT(0 1, 1 2, 2 4, 3 8)'));\g
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │MULTIPOINT (0 1, 1 2, 2 4, 3 8) │
    └────────────────────────────────┘
    (1 row)

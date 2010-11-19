# PointFromText #

Point POINTFROMTEXT(s string [, srid integer])

Alias: ST_POINTFROMTEXT

Returns a point that corresponds to the Well Known Text (WKT) in s. The SRID can optionally be specified, it is `-1` by default.

## Example ##

Retrieve text representation of point after specifying point with text representation.

    * SELECT ASTEXT(POINTFROMTEXT('POINT(1 2)'));\g                                            
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │POINT (1 2)                     │
    └────────────────────────────────┘
    (1 row)

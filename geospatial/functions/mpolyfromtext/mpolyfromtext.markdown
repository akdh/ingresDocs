# MPolyFromText #

Geometry MPOLYFROMTEXT(s string [, srid integer])

Alias: ST_MPOLYFROMTEXT

Returns a multipolygon object that corresponds to the Well Known Text (WKT) in s. The SRID can optionally be specified, it is `-1` by default.

## Example ##

    * SELECT ASTEXT(MPOLYFROMTEXT('MULTIPOLYGON(((0 0,0 10,10 0,0 0)),((0 0,10 0,10 10,0 0)))'));\g
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │MULTIPOLYGON (((0 0, 0 10, 10 0, 0 0)), ((0 0, 10 0, 10 10, 0 0)))│
    └────────────────────────────────┘
    (1 row)

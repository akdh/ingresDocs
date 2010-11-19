# PolyFromText #

Geometry POLYFROMTEXT(s string [, srid integer])

Returns a polygon that corresponds to the Well Known Text (WKT) in s. The SRID can optionally be specified, it is `-1` by default.

## Example ##

    * SELECT ASTEXT(POLYFROMTEXT('POLYGON((0 0, 0 10, 10 10, 10 0, 0 0))'));\g
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │POLYGON ((0 0, 0 10, 10 10, 10 0, 0 0))│
    └────────────────────────────────┘
    (1 row)

# GeomCollFromText #

Geometry GEOMCOLLFROMTEXT(s string [, srid integer])

Returns a geometry collection that corresponds to the Well Known Text (WKT) in s. The SRID can optionally be specified, it is `-1` by default.

## Example ##

    * SELECT ASTEXT(GEOMCOLLFROMTEXT('GEOMETRYCOLLECTION(LINESTRING(0 0, 0 10), POLYGON((2 2, 4 2, 4 4, 2 4, 2 2)))'));\g
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │GEOMETRYCOLLECTION (LINESTRING (0 0, 0 10), POLYGON ((2 2, 4 2, 4 4, 2 4, 2 2)))│
    └────────────────────────────────┘
    (1 row)

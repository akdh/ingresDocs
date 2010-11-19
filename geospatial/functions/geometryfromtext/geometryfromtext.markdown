# GeometryFromText #

Geometry GEOMETRYFROMTEXT(s string [, srid integer])

Alias: GEOMFROMTEXT, ST_GEOMETRYFROMTEXT, ST_GEOMFROMTEXT

Returns a geometry object that corresponds to the Well Known Text (WKT) in s. The SRID can optionally be specified, it is `-1` by default.

**???** What are the advantages to using the type specific *FROMTEXT functions?

## Examples ##

    * SELECT ASTEXT(GEOMFROMTEXT('MULTIPOINT(0 1, 1 2, 3 5, 8 13)'));\g        
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │MULTIPOINT (0 1, 1 2, 3 5, 8 13)│
    └────────────────────────────────┘
    (1 row)

SRID of point when it is not specified.

    * SELECT SRID(GEOMFROMTEXT('POINT(1 2)'));\g                                 
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │           -1│
    └─────────────┘
    (1 row)

SRID of point when it is specified.

    * SELECT SRID(GEOMFROMTEXT('POINT(1 2)', 4955));\g
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │         4955│
    └─────────────┘
    (1 row)

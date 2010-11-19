# GeometryFromWKB #

Geometry GEOMETRYFROMWKB(b binary [, srid integer])

Alias: GEOMFROMWKB, ST_GEOMETRYFROMWKB, ST_GEOMFROMWKB

Returns a geometry object that corresponds to the Well Known Binary (WKB) representation of the object given in b. The srid argument can be used to specify the object's SRID, the srid can be left unspecified (SRID will return `-1`).

## Examples ##

First specify the point using POINTFROMTEXT, then get the binary representation using ASBINARY, then specify the point using GEOMFROMWKB, then output the point as text using ASTEXT.

    * SELECT ASTEXT(GEOMFROMWKB(ASBINARY(POINTFROMTEXT('POINT(1 2)'))));\g
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │POINT (1 2)                     │
    └────────────────────────────────┘
    (1 row)

SRID of a point when it is not specified.

    * SELECT SRID(GEOMFROMWKB(ASBINARY(POINTFROMTEXT('POINT(1 2)'))));\g  
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │           -1│
    └─────────────┘
    (1 row)

SRID of a point when it is specified.

    * SELECT SRID(GEOMFROMWKB(ASBINARY(POINTFROMTEXT('POINT(1 2)')), 4955));\g
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │         4955│
    └─────────────┘
    (1 row)

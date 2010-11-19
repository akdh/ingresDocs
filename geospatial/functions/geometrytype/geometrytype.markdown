# GeometryType #

string GEOMETRYTYPE(g Geometry)

Alias: ST_GEOMETRYTYPE

Returns the type of g.

## Example ##

    * SELECT GEOMETRYTYPE(POLYFROMTEXT('POLYGON((0 0, 0 20, 15 20, 15 0, 0 0))'));\g                                  
    Executing . . .


    ┌──────────────────────────────┐
    │col1                          │
    ├──────────────────────────────┤
    │Polygon                       │
    └──────────────────────────────┘
    (1 row)

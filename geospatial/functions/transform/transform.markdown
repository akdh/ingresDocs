# Transform #

Geometry TRANSFORM(g Geometry, srid integer)

Alias: ST_TRANSFORM

Transforms g from one spatial reference system to another. It does not change the SRID of g, it only changes the coordinates of g. Both the SRID being transformed from and to must be in the spatial_ref_sys table.

## Examples ##

Transforms g from 2805 to 4326, SRID of g is not changed.

    * SELECT SRID(TRANSFORM(POINTFROMTEXT('POINT(49 3)', 2805), 4326));\g
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │         2805│
    └─────────────┘
    (1 row)

    * SELECT ASTEXT(TRANSFORM(POINTFROMTEXT('POINT(49 3)', 2805), 4326));\g        
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │POINT (-73.6508648486344413 34.2444245779162628)│
    └────────────────────────────────┘
    (1 row)

Transforms g from 2805 to 4326. Changes SRID of g as well by getting g in WKB and passing the binary and SRID to GEOMFROMWKB.

    * SELECT SRID(GEOMFROMWKB(ASBINARY(TRANSFORM(POINTFROMTEXT('POINT(49 3)', 2805), 4326)), 4326));\g
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │         4326│
    └─────────────┘
    (1 row)

Transforms g from 2805 to 4326 and back to 2805. SRID of g is still 4326.

    * SELECT ASTEXTROUND(TRANSFORM(GEOMFROMWKB(ASBINARY(TRANSFORM(POINTFROMTEXT('POINT(49 3)', 2805), 4326)), 4326), 2805), 0);\g
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │POINT (49 3)                    │
    └────────────────────────────────┘
    (1 row)

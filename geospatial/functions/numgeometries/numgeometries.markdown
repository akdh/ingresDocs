# NumGeometries #

integer NUMGEOMETRIES(g Geometrycollection)

Alias: ST_NUMGEOMETRIES

Returns the number of objects in g.

## Examples ##

    * SELECT NUMGEOMETRIES(MPOINTFROMTEXT('MULTIPOINT(1 1, 2 2, 3 3)'));\g       
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            3│
    └─────────────┘
    (1 row)

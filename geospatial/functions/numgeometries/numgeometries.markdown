# NumGeometries #

integer NUMGEOMETRIES(g Geometrycollection)

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

# AsBinary #

binary ASBINARY(g Geometry)

Alias: ST_ASBINARY

Returns g in Well Known Binary (WKB).

## Example ##

    * SELECT ASBINARY(POINTFROMTEXT('POINT(1 5)'));\g 
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │\001\001\000\000\000\000\000\000\000\000\000??\000\000\000\000\000\000\024@           │
    └────────────────────────────────┘
    (1 row)

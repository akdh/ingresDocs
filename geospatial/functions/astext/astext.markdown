# AsText #

string ASTEXT(g Geometry)

Returns g in Well Known Text (WKT).

## Example ##

    * SELECT ASTEXT(LINEFROMTEXT('LINESTRING(0 0, 2 2, 0 4, 6 6, 0 8, 10 10)'));\g
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │LINESTRING (0 0, 2 2, 0 4, 6 6, 0 8, 10 10)│
    └────────────────────────────────┘
    (1 row)

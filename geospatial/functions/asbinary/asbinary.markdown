# AsBinary #

binary ASBINARY(g Geometry)

Returns g in Well Known Binary (WKB).

**???** Why are the results of just outputting g and ASBINARY(g) different?

**???** How do I get to hex from the result of ASBINARY.

## Example ##

    * SELECT ASBINARY(POINTFROMTEXT('POINT(1 5)'));\g 
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │\001\001\000\000\000\000\000\000\000\000\000??\000\000\000\000\000\000\024@           │
    └────────────────────────────────┘
    (1 row)

# AsSVG (not implemented) #

string ASSVG(g Geometry)

Alias: ST_ASSVG

Returns a string with one or two SVG attribute name and value pairs in the form of: `attribute="value"`.

Which attribute is returned depends on the type of g.

* POINT - cx and cy attributes that can be used in a circle element
* LINE - d attribute that can be used in a path element
* POLY - points attribute that can be used in a polygon element
* MULTI/COLLECTIONS - have the same attributes as their singular counterparts but are separated with semicolons (;)

ASSVG gives full precision, to control precision use SVGROUND(g Geometry, n integer) - Not documented.

## Examples ##

    * SELECT ASSVG(POLYFROMTEXT('POLYGON((0 0, 0 10, 10 10, 10 0, 0 0))'));\g
    Executing . . .


    ┌───────────┐
    │col1       │
    ├───────────┤
    │points="0 0,0 10,10 10,10 0,0 0"│
    └───────────┘
    (1 row)

    * SELECT ASSVG(MPOINTFROMTEXT('MULTIPOINT((0 0),(1 2),(2 4),(4 8))'));\g
    Executing . . .


    ┌───────────┐
    │col1       │
    ├───────────┤
    │cx="0" cy="0";cx="1" cy="2";cx="2" cy="4";cx="4" cy="8"│
    └───────────┘
    (1 row)

    * SELECT ASSVG(LINEFROMTEXT('LINESTRING(0 0, 10 0, 10 10, 0 10)'));\g
    Executing . . .


    ┌───────────┐
    │col1       │
    ├───────────┤
    │d="M0 0 L 10 0 L 10 10 L 0 10"│
    └───────────┘
    (1 row)

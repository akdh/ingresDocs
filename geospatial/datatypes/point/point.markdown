# Point #

This datatype is used to represents points. The simplest point is a X, Y coordinate. However points can also have a Z and/or a M coordinate. Z is used for representing points in 3D space while M has no geometric representation. M could be used, for example, to represent the "cost" of the point. Points can also have a SRID.

**???** How is XYM specified? The "M" in POINT M seems to ignored.

**???** Are there Z and M functions that do something similar to the X and Y functions?

## Examples ##

Using X, Y coordinates to represent houses and calculate the distance from a point to each house.

    * CREATE TABLE houses ( id INTEGER PRIMARY KEY, location POINT NOT NULL );\g
    Executing . . .

    * INSERT INTO houses (id, location) VALUES (1, POINTFROMTEXT('POINT(0 0)'));\g
    Executing . . .

    (1 row)

    * INSERT INTO houses (id, location) VALUES (2, POINTFROMTEXT('POINT(5 10)'));\g
    Executing . . .

    (1 row)

    * SELECT DISTANCE(location, POINTFROMTEXT('POINT(4 4)')) FROM houses;\g
    Executing . . .


    ┌───────────┐
    │col1       │
    ├───────────┤
    │      5.657│
    │      6.083│
    └───────────┘
    (2 rows)

Using X, Y, Z coordinates.

    * SELECT ASTEXT(POINTFROMTEXT('POINT(1 2 3)'));\g
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │POINT Z (1 2 3)                 │
    └────────────────────────────────┘
    (1 row)
    continue

Using X, Y, Z, M coordinates.

    * SELECT ASTEXT(POINTFROMTEXT('POINT(1 2 3 100)'));\g
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │POINT Z (1 2 3)                 │
    └────────────────────────────────┘
    (1 row)
    continue

Using X, Y, M coordinates.

    * SELECT ASTEXT(POINTFROMTEXT('POINT M (1 2 100)'));\g  
    Executing . . .


    ┌────────────────────────────────┐
    │col1                            │
    ├────────────────────────────────┤
    │POINT Z (1 2 100)               │
    └────────────────────────────────┘
    (1 row)

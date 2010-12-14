# Point #

Points have a X and a Y coordinate and optionally a SRID.

## Examples ##

Using X, Y coordinates to represent houses.

    * CREATE TABLE houses ( id INTEGER PRIMARY KEY, location POINT NOT NULL );\g
    Executing . . .

    * INSERT INTO houses (id, location) VALUES (1, POINTFROMTEXT('POINT(0 0)'));\g
    Executing . . .

    (1 row)

    * INSERT INTO houses (id, location) VALUES (2, POINTFROMTEXT('POINT(5 10)'));\g
    Executing . . .

    (1 row)

Calculate the distance from a point (4, 4) to each house.

    * SELECT DISTANCE(location, POINTFROMTEXT('POINT(4 4)')) FROM houses;\g
    Executing . . .


    ┌───────────┐
    │col1       │
    ├───────────┤
    │      5.657│
    │      6.083│
    └───────────┘
    (2 rows)

![Points](point.svg)

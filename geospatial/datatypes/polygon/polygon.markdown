# Polygon #

Polygons are sets of points that form an area, optionally with an SSID.

## Examples ##

Using polygons to represent the property owned.

    * CREATE TABLE properties (id INTEGER PRIMARY KEY, area POLYGON NOT NULL, owner_id INTEGER NOT NULL);\g
    Executing . . .

    * INSERT INTO properties (id, area, owner_id) VALUES (1, POLYFROMTEXT('POLYGON((0 10, 1 10, 1 1, 10 1, 10 0, 0 0, 0 10))'), 1);\g
    Executing . . .

    (1 row)

    * INSERT INTO properties (id, area, owner_id) VALUES (2, POLYFROMTEXT('POLYGON((8 8, 10 8, 10 10, 8 10, 8 8))'), 1);\g           
    Executing . . .

    (1 row)

    * INSERT INTO properties (id, area, owner_id) VALUES (3, POLYFROMTEXT('POLYGON((1 10, 8 10, 8 8, 10 8, 10 4, 1 4, 1 10), (2 9, 7 9, 7 5, 2 5, 2 9))'), 2);\g
    Executing . . .

    (1 row)

    * INSERT INTO properties (id, area, owner_id) VALUES (4, POLYFROMTEXT('POLYGON((1 1, 10 1, 10 4, 1 4, 1 1))'), 3);\g 
    Executing . . .

    (1 row)

How much fencing must each owner buy to cover their property (where neighbouring properties are double-fenced).

    * SELECT SUM(PERIMETER(area)), owner_id FROM properties GROUP BY owner_id;\g    
    Executing . . .


    ┌───────────┬─────────────┐
    │col1       │owner_id     │
    ├───────────┼─────────────┤
    │     48.000│            1│
    │     48.000│            2│
    │     24.000│            3│
    └───────────┴─────────────┘
    (3 rows)

![Properties](polygon.svg)

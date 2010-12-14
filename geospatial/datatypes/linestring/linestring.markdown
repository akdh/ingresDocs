# Linestring #

Linestrings are sets of joined points, optionally with an SSID.

## Examples ##

Using linestrings to represent the path of travel from one point to another.

    * CREATE TABLE paths ( id INTEGER PRIMARY KEY, path LINESTRING NOT NULL );\g 
    Executing . . .

    * INSERT INTO paths (id, path) VALUES (1, LINEFROMTEXT('LINESTRING(0 0, 10 0, 10 10)'));\g  
    Executing . . .

    (1 row)

    * INSERT INTO paths (id, path) VALUES (2, LINEFROMTEXT('LINESTRING(0 0, 10 10)'));\g
    Executing . . .

    (1 row)

    * INSERT INTO paths (id, path) VALUES (3, LINEFROMTEXT('LINESTRING(0 0, 10 0)'));\g 
    Executing . . .

    (1 row)

Length of paths that start at point (0, 0) and end at point (10, 10).

    * SELECT id, ST_LENGTH(path) FROM paths WHERE EQUALS(STARTPOINT(path), POINTFROMTEXT('POINT(0 0)')) = 1 AND EQUALS(ENDPOINT(path), POINTFROMTEXT('POINT(10 10)')) = 1;\g
    Executing . . .


    ┌─────────────┬───────────┐
    │id           │col2       │
    ├─────────────┼───────────┤
    │            1│     20.000│
    │            2│     14.142│
    └─────────────┴───────────┘
    (2 rows)

![Paths](linestring.svg)

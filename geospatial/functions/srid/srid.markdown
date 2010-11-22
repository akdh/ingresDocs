# SRID #

integer SRID(g Geometry)

Alias: ST_SRID

Returns the Spatial Reference Identifier (SRID) of g, returns `-1` if the SRID has not been specified.

There are many different ways to take points on the Earth and represent them on a flat surface. Each spatial reference system describes a different method of accomplishing this.

<http://spatialreference.org/> lists many spatial reference systems.

## Examples ##

Get all the available spatial reference systems (some results omitted).

    * select (srid) from spatial_ref_sys;\g
    Executing . . .


    ┌─────────────┐
    │srid         │
    ├─────────────┤
    │         2000│
    │         2001│
    │         2002│
    │     ...     │
    │        32760│
    │        32761│
    │        32766│
    └─────────────┘
    (3748 rows)

Point with SRID specified.

    * SELECT SRID(POINTFROMTEXT('POINT(49 3)', 4326));\g 
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │         4326│
    └─────────────┘
    (1 row)

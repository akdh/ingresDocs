# Relate #

integer RELATE(g1 Geometry, g2 Geometry, matrix string)

Alias: ST_RELATE

Returns `1` if g1 and g2 relate in the way specified by matrix, returns `0` otherwise.

matrix is a string 9 characters long, each character specified the desired dimension of the intersection between two objects.

The 9 sets of intersecting objects are:

<table>
  <tr>
    <td>interior of g1 and interior of g2</td>
    <td>interior of g1 and boundary of g2</td>
    <td>interior of g1 and exterior of g2</td>
  </tr>
  <tr>
    <td>boundary of g1 and interior of g2</td>
    <td>boundary of g1 and boundary of g2</td>
    <td>boundary of g1 and exterior of g2</td>
  </tr>
  <tr>
    <td>exterior of g1 and interior of g2</td>
    <td>exterior of g1 and boundary of g2</td>
    <td>exterior of g1 and exterior of g2</td>
  </tr>
</table>

The characters is the string are read left-to-right, top-to-bottom into the corresponding table. For example, the forth character corresponds to the second row in the first column (boundary of g1 and interior of g2).

If g1 and g2 are two diamonds.

![Diamonds](relate.svg)

The interior of g1 is (dimension 2):

![Interior](relate2.svg)

The boundary of g1 is (dimension 1):

![Boundary](relate3.svg)

The exterior of g1 is (dimension 2):

![Exterior](relate4.svg)

So, the intersection of the boundary of g1 and interior of g2 is (dimension 1):

![BoundaryInterior](relate5.svg)

For each of the 9 tests the desired dimension can be specified to be 0, 1, 2, * (any), F (empty), or T (non-empty).

## Examples ##

Are g1 and g2 disjoint? Use the matrix FF\*FF\*\*\*\*.

If g1 and g2 were disjoint.

* The interior of g1 would not intersect with the interior or boundary of g2, it would intersect completely with the exterior of g2 (FF*).
* The boundary of g1 would not intersect with the interior or boundary of g2, it would intersect completely with the exterior of g2 (FF*).
* The exterior of g1 would intersect with the interior, boundary, and exterior of g2 (\*\*\*).

g1 and g2 are disjoint.

    * SELECT RELATE(POLYFROMTEXT('POLYGON((0 0, 2 0, 2 2, 0 2, 0 0))'), POLYFROMTEXT('POLYGON((4 4, 4 6, 6 6, 6 4, 4 4))'), 'FF*FF****');\g 
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            1│
    └─────────────┘
    (1 row)

![Disjoint](relate6.svg)

g1 and g2 not are disjoint.

    * SELECT RELATE(POLYFROMTEXT('POLYGON((0 0, 4 0, 4 4, 0 4, 0 0))'), POLYFROMTEXT('POLYGON((2 2, 2 6, 6 6, 6 2, 2 2))'), 'FF*FF****');\g 
    Executing . . .


    ┌─────────────┐
    │col1         │
    ├─────────────┤
    │            0│
    └─────────────┘
    (1 row)

![NotDisjoint](relate7.svg)

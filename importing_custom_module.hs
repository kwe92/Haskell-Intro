import Geometry.Cube qualified as Cube
import Geometry.Cuboid qualified as Cuboid
import Geometry.Sphere qualified as Sphere

-- Quailified imports

--   - useful when modules have functions or objects with the same name
--   - requires you to prefix the function or object with a fully qualified name or alais
--   - while Prelude (standard library imports) will not need a prefix if a name is shared with an imported module

sphereArea = Sphere.area 5

sphereVolume = Sphere.volume 4

cubeArea = Cube.area 4

cubeVolume = Cube.volume 10

cuboidArea = Cuboid.area 12 32 54

cuboidVolume = Cuboid.volume 20 30 40

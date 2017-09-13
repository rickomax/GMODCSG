# GMODCSG

GMODCSG is an attemp to use live CSG (constructible solid geometry) to GMOD
It still pretty buggy, as it's just a test. Feel free to modify the code as you wish, giving credits to the original authors bellow:

Class.lua:
-Copyright 2012 Two Lives Left Pty. Ltd.
-Licensed under the Apache License, Version 2.0
-http://www.apache.org/licenses/LICENSE-2.0

CSG.JS:
-Copyright (c) 2011 Evan Wallace (http://madebyevan.com/)
-Licensed under the MIT license.
-https://opensource.org/licenses/mit-license.php

CSG.JS - LUA port. Original code:
-Toibas Teleman
-https://github.com/tnlogy/csg.js

At the moment, to test the code:

*Copy the contents of this repository over your "lua" folder on your
GMOD installation directory.
*Start a new Sandbox Game.
*Opening the Tool Menu -> Entities -> Fun + Games -> CSG
*Put as many CSG cube on the scene as you wish
*Opening the context tool, you can right click a CSG brush and modify the properties:
  -Pos - Brush Position
  -Angles - Brush Rotation
  -Size - Brush Size (bounds)
  -GlobalSize - Brush Size Multiplier
  -Additive - If this brush is a CSG addition or subtraction
*Also on the context menu, there is a button "Rebuild" on the CSG Window. Clicking it will build the actual mesh from CSG brushes


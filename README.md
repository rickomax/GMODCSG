# GMODCSG

GMODCSG is an attempt to use live CSG (constructible solid geometry) in GMOD<br/><br/>
It still pretty buggy, as it's just a test.<br/>
Feel free to modify the code as you wish, giving credits to the original authors bellow:
<br/><br/>
Class.lua:<br/>
-Copyright 2012 Two Lives Left Pty. Ltd.<br/>
-Licensed under the Apache License, Version 2.0<br/>
-http://www.apache.org/licenses/LICENSE-2.0<br/><br/>
CSG.JS:<br/>
-Copyright (c) 2011 Evan Wallace (http://madebyevan.com/)<br/>
-Licensed under the MIT license.<br/>
-https://opensource.org/licenses/mit-license.php<br/><br/>
CSG.JS - LUA port by:<br/>
-Tobias Teleman<br/>
-https://github.com/tnlogy/csg.js<br/><br/>
Testing the code:<br/><br/>
*Copy the contents of this repository over your "lua" folder on your
GMOD installation directory.<br/>
*Start a new Sandbox Game.<br/>
*Opening the Tool Menu -> Entities -> Fun + Games -> CSG<br/>
*Put as many CSG cube on the scene as you wish<br/>
*Opening the context tool, you can right click a CSG brush and modify the properties:<br/>
  -Pos - Brush Position<br/>
  -Angles - Brush Rotation<br/>
  -Size - Brush Size (bounds)<br/>
  -SizeMultiplier - Brush Size Multiplier<br/>
  -Additive - If this brush is a CSG addition or subtraction<br/>
*Also on the context menu, there is a button "Rebuild" on the CSG Window. Clicking it will build the actual mesh from CSG brushes

Known issues (most important ones):
*Depending on the complexicity of the CSG operators, GMOD may crash due to an excessive stack operation
*Internal subtraction intersected faces are flipped (seems easy to be fixed)
*CSG.JS normals are incorrect
*Brush sizes smaller or equal to 0 may crash GMOD
*CSG brush shadows must be disabled
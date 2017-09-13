# GMODCSG

GMODCSG is an attempt to use live CSG (constructible solid geometry) into GMOD<br/><br/>
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

CSG.JS - LUA port. Original code:<br/>
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
  -GlobalSize - Brush Size Multiplier<br/>
  -Additive - If this brush is a CSG addition or subtraction<br/>
*Also on the context menu, there is a button "Rebuild" on the CSG Window. Clicking it will build the actual mesh from CSG brushes


include("class.lua")

--todo: all this can be converted to an entity, to allow collisions?
CSGBuilder = class()

function CSGBuilder:Rebuild()
	local shape
	for kent, vent in pairs(ents.FindByClass("csg")) do
		local matrix = vent:GetFullMatrix()
		local shapeClone = vent.shape:clone(matrix)
		if (shape == nil) then
			shape = shapeClone
		else
			if (vent:GetAdditive()) then
				shape = shape:union(shapeClone)
			else
				shape = shape:subtract(shapeClone)
			end
		end
	end
	local color = Color(255,255,255,255)
	self.points, self.vertices, self.tmin, self.tmax = shape:toMesh(color)
	self.mesh = Mesh()
	self.mesh:BuildFromTriangles(self.vertices)	
end

function CSGBuilder:Draw()
	local matrix = Matrix()	
	matrix:Identity()
	matrix:Scale(Vector(1.0, 1.0, 1.0))
	cam.PushModelMatrix(matrix)
	render.SetMaterial(self.material)
	self.mesh:Draw()
	cam.PopModelMatrix()
end

function CSGBuilder:OpenMenu()
	--todo: add a common context menu instead of a frame
	self.frame = vgui.Create("DFrame")
	self.frame:SetSize(320, 100)
	self.frame:SetPos(0, 48)
	self.frame:SetTitle("CGS Builder") 
	self.frame:SetDraggable(true)
	self.frame:SetSizable(false)
	self.frame:ShowCloseButton(true)
	self.frame:MakePopup()
	local button = vgui.Create("DButton", self.frame) 
	button:SetText("Rebuild")					
	button:SetPos(0, 32)					
	button:SetSize(320, 30)					
	button.DoClick = function()				
		self:Rebuild()	
	end
end

function CSGBuilder:CloseMenu()
	self.frame:Close()
end

function CSGBuilder:init()	
	self.mesh = Mesh()
	self.material = Material("phoenix_storms/stripes") --todo: first suitable material I found, yeah, there may be better ones
	
	local csgBuilderSelf = self
	
	hook.Add("OnContextMenuOpen", "contextmenuopen", function()
		csgBuilderSelf:OpenMenu()
	end)
	
	hook.Add("OnContextMenuClose", "contextmenuclose", function()
		csgBuilderSelf:CloseMenu()
	end)
	
	hook.Add("PostDrawOpaqueRenderables", "CSGBuilder", function()
		csgBuilderSelf:Draw()
	end)
	
	CSGBuilder.instance = self
end

CSGBuilder()
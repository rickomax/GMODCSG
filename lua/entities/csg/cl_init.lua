include("shared.lua")
include("csgbuilder.lua")

local wireframeMaterial = Material("editor/wireframe")

function ENT:Draw()
	cam.PushModelMatrix(self.matrix)
	render.SetColorMaterial()
	self.mesh:Draw()
	render.SetMaterial(wireframeMaterial)
	self.mesh:Draw()
	cam.PopModelMatrix()
end

include("shared.lua")
include("csgbuilder.lua")

local wireframeMaterial = Material("editor/wireframe")

function ENT:Draw()
	cam.PushModelMatrix(self.translationRotationMatrix)
	render.SetColorMaterial()
	self.mesh:Draw()
	render.SetMaterial(wireframeMaterial)
	self.mesh:Draw()
	cam.PopModelMatrix()
end

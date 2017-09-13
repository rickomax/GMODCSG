AddCSLuaFile("cl_init.lua")  
AddCSLuaFile("shared.lua")  

include "shared.lua"

function ENT:SpawnFunction(ply, tr, ClassName)
	if (!tr.Hit) then return end
	local ent = ents.Create(ClassName)
	ent:Spawn()
	ent:Activate()
	return ent
end
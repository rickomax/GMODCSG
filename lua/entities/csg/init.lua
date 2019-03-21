AddCSLuaFile("cl_init.lua")  
AddCSLuaFile("shared.lua")  

include "shared.lua"

function ENT:SpawnFunction(ply, tr, ClassName)
	if ( !tr.Hit ) then return end
	local SpawnPos = tr.HitPos + tr.HitNormal * 16
	local ent = ents.Create( ClassName )
	ent:SetPos( SpawnPos )
	ent:Spawn()
	ent:Activate()
	return ent
end

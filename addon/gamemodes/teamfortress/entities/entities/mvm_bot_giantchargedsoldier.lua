if (!IsMounted("tf")) then return end
if SERVER then AddCSLuaFile() end

ENT.Base = "mvm_bot"
ENT.PZClass = "giantsoldiercharged"
ENT.Spawnable = false
ENT.AdminOnly = true
ENT.IsBoss = true
ENT.PrintName		= "Giant Charged Soldier"
ENT.Category		= "TF2: MVM Bots"

list.Set( "NPC", "mvm_bot_giantchargedsoldier", {
	Name = ENT.PrintName,
	Class = "mvm_bot_giantchargedsoldier",
	Category = ENT.Category,
	AdminOnly = true
} )
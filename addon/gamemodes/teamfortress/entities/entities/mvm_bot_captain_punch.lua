if (!IsMounted("tf")) then return end
if SERVER then AddCSLuaFile() end

ENT.Base = "mvm_bot"
ENT.PZClass = "captain_punch"
ENT.Spawnable = false 
ENT.AdminOnly = true
ENT.IsBoss = true
ENT.Difficulty = 3
ENT.Items = {"War Head","Fists of Steel"}
ENT.PrintName		= "Captain Punch"
ENT.Category		= "TF2: MVM Bots"


list.Set( "NPC", "mvm_bot_captain_punch", {
	Name = ENT.PrintName,
	Class = "mvm_bot_captain_punch"	,
	Category = ENT.Category,
	AdminOnly = true
} )
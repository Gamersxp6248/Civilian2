if (!IsMounted("tf")) then return end
if SERVER then AddCSLuaFile() end

ENT.Base = "mvm_bot"
ENT.PZClass = "giantheavyheater"
ENT.Spawnable = false
ENT.AdminOnly = true
ENT.IsBoss = true
ENT.PrintName		= "Giant Heater Heavy"
ENT.Category		= "TF2: MVM Bots"
ENT.PreferredIcon = "hud/leaderboard_class_heavy_heater"
list.Set( "NPC", "mvm_bot_giantheavyheater", {
	Name = ENT.PrintName,
	Class = "mvm_bot_giantheavyheater",
	Category = ENT.Category,
	AdminOnly = true
} )
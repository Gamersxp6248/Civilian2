AddCSLuaFile()

PrecacheParticleSystem( "halloween_boss_summon" );
PrecacheParticleSystem( "halloween_boss_axe_hit_world" );
PrecacheParticleSystem( "halloween_boss_injured" );
PrecacheParticleSystem( "halloween_boss_death" );
PrecacheParticleSystem( "halloween_boss_foot_impact" );
PrecacheParticleSystem( "halloween_boss_eye_glow" );
ENT.Base 			= "base_nextbot"
ENT.Spawnable		= false
ENT.Model = "models/bots/boss_bot/boss_bot.mdl"
ENT.AttackDelay = 50 
ENT.AttackDamage = 30
ENT.AttackRange = 300
ENT.item1AttackDelay2 = CurTime() + 1.1	
ENT.CrybabyMode = false
function ENT:Initialize()

	if CLIENT then

		killicon.Add( "headtaker", "backpack/weapons/c_models/c_headtaker/c_headtaker", Color( 255, 255, 255, 255 ) )
	
	end
	self:SetModel( self.Model )
	self:AddFlags(FL_OBJECT)
	local seq = "spawn"
	timer.Simple(0.1, function()
		self.Ready = true
		self:EmitSound("Building_Sentrygun.Built")
		self:SetCycle(0)
		self:SetSequence("test")
		self:SetPlaybackRate(1)
		if SERVER then
			self:EmitSound("MVM.TankEngineLoop",95,70,0.2)
			self:EmitSound("mvm/giant_heavy/giant_heavy_loop.wav",65,50,0.2)
			timer.Create("Laugh"..self:EntIndex(), 3, 0, function()
				if (self.Ready) then
					self:EmitSound("ambient/levels/prison/radio_random"..math.random(1,15)..".wav",95,100,1)
					timer.Adjust("Laugh"..self:EntIndex(),math.random(1,5),nil,nil)
				end
			end)
		end
	end)
	self.Ready = false
	self.LoseTargetDist	= 3600	-- How far the enemy has to be before we lose them
	self.SearchRadius 	= 2500	-- How far to search for enemies
	self:SetHealth(8000)
	self:SetSolid(SOLID_BBOX)
	self:SetCollisionGroup(COLLISION_GROUP_NPC)
	if SERVER then
		self:SetBloodColor(DONT_BLEED)
	end
end
function ENT:OnRemove()
	if (IsValid(self.bullseye)) then
		self.bullseye:Remove()
	end
	self:StopSound("MVM.TankEngineLoop")
	for k,v in ipairs(player.GetAll()) do
		if (v.IsITFromHHH) then
			v:RemovePlayerState(PLAYERSTATE_MARKED)
			v.IsITFromHHH = false
		end
	end
end

function ENT:FireAnimationEvent( pos, ang, event, name )
	if (event == 6004 or event == 7001) then
		timer.Simple(0.01, function()
			self:EmitSound("MVM.GiantScoutStep")
		end)
	end
end
----------------------------------------------------
-- ENT:Get/SetEnemy()
-- Simple functions used in keeping our enemy saved
----------------------------------------------------
function ENT:SetEnemy(ent)
	if (self.CrybabyMode) then
		self.CrybabyMode = false
	end
	self.Enemy = ent
end
function ENT:GetEnemy()
	return self.Enemy
end

hook.Add("PlayerDeath","RemoveITOnPlayerDeath",function(ply,inflictor,attacker)
	if (ply.IsITFromHHH) then
		ply.IsITFromHHH = false
	end
end)
hook.Add("EntityTakeDamage","RemoveITFromitem1Hit",function(target,dmginfo)
	local att = dmginfo:GetAttacker()
	if (target:IsTFPlayer() and !target:IsNextBot() and (dmginfo:IsDamageType(DMG_CLUB) or dmginfo:IsDamageType(DMG_SLASH)) and att.IsITFromHHH) then
		att:RemovePlayerState(PLAYERSTATE_MARKED)
		att.IsITFromHHH = false
		for k,v in ipairs(ents.FindByClass("boss_alpha")) do
			if (IsValid(v)) then
				v:SetEnemy(target)
			end
		end
	end
end)

----------------------------------------------------
-- ENT:HaveEnemy()
-- Returns true if we have a enemy
----------------------------------------------------
function ENT:HaveEnemy()
	-- If our current enemy is valid
	if ( self:GetEnemy() and IsValid(self:GetEnemy()) ) then
		-- If the enemy is too far
		if ( self:GetRangeTo(self:GetEnemy():GetPos()) > self.LoseTargetDist ) then
			-- If the enemy is lost then call FindEnemy() to look for a new one
			-- FindEnemy() will return true if an enemy is found, making this function return true
			if (self:GetEnemy():IsPlayer()) then
				self:GetEnemy():RemovePlayerState(PLAYERSTATE_MARKED)
				self:GetEnemy().IsITFromHHH = false
			end
			return self:FindEnemy()
		-- If the enemy is dead( we have to check if its a player before we use Alive() )
		elseif ( self:GetEnemy():IsTFPlayer() and (GAMEMODE:EntityTeam(self:GetEnemy()) == TEAM_SPECTATOR or GAMEMODE:EntityTeam(self:GetEnemy()) == TEAM_FRIENDLY or self:GetEnemy():Health() < 0 or self:GetEnemy():IsFlagSet(FL_NOTARGET)) ) then
			return self:FindEnemy()		-- Return false if the search finds nothing
		end	
		-- The enemy is neither too far nor too dead so we can return true
		return true
	else
		-- The enemy isn't valid so lets look for a new one
		return self:FindEnemy()
	end
end

----------------------------------------------------
-- ENT:FindEnemy()
-- Returns true and sets our enemy if we find one
----------------------------------------------------
function ENT:FindEnemy()
	if not self.Ready then return false end
	-- Search around us for entities
	-- This can be done any way you want eg. ents.FindInCone() to replicate eyesight
	local _ents = ents.FindInSphere( self:GetPos(), self.SearchRadius )
	-- Here we loop through every entity the above search finds and see if it's the one we want
	for k,v in ipairs( _ents ) do
		if ( ( v:IsTFPlayer() and !v:IsNextBot()) and GAMEMODE:EntityTeam(v) != TEAM_SPECTATOR and GAMEMODE:EntityTeam(v) != TEAM_FRIENDLY and v:Health() > 1 and !v:IsFlagSet(FL_NOTARGET) ) then
			if SERVER then
				for k,v in ipairs(ents.GetAll()) do
					if v:IsNPC() then
						v:AddEntityRelationship(self,D_HT,99)
					end
				end
			end
			-- We found one so lets set it as our enemy and return true
			self:SetEnemy(v)
			if (v:IsNPC()) then
				v:SetEnemy(self.bullseye)
			elseif (v:IsNextBot()) then
				v:SetEnemy(self)
			end
			if (v:IsPlayer() and !v.IsITFromHHH) then
				v.IsITFromHHH = true
			end
			//v:AddPlayerState(PLAYERSTATE_MARKED)
			return true
		end
	end	
	-- We found nothing so we will set our enemy as nil (nothing) and return false
	if (self.CrybabyMode) then
		self.CrybabyMode = false
	end
	self:SetEnemy(nil)
	return false
end

----------------------------------------------------
-- ENT:RunBehaviour()
-- This is where the meat of our AI is
----------------------------------------------------
function ENT:RunBehaviour()
	-- This function is called when the entity is first spawned. It acts as a giant loop that will run as long as the NPC exists
	while ( true ) do
		-- Lets use the above mentioned functions to see if we have/can find a enemy
		if self.Ready then 
		
			if ( self:HaveEnemy() ) then

				-- Now that we have an enemy, the code in this block will run
				self.loco:SetDesiredSpeed( 0 )
				self.loco:SetAcceleration(200)				-- Now once the above function is finished doing what it needs to do, the code will loop back to the start
				-- unless you put stuff after the if statement. Then that will be run before it loops
			
			else

				if (math.random(1,800) == 1) then

					-- Since we can't find an enemy, lets wander
					-- Its the same code used in Garry's test bot
					self.loco:SetDesiredSpeed( 0 )
					self.loco:SetAcceleration(200)
					self:MoveToPos( self:GetPos() + Vector( math.Rand( -1, 1 ), math.Rand( -1, 1 ), 0 ) * 800 ) -- Walk to a random place within about 400 units (yielding)


					coroutine.wait(2)
				end

			end

			coroutine.wait(0.1)
		else
			-- At this point in the code the bot has stopped chasing the player or finished walking to a random spot
			-- Using this next function we are going to wait 2 seconds until we go ahead and repeat it 
			coroutine.wait(0.1)
		end
		
	end

end	

----------------------------------------------------
-- ENT:ChaseEnemy()
-- Works similarly to Garry's MoveToPos function
--  except it will constantly follow the
--  position of the enemy until there no longer
--  is one.
----------------------------------------------------
function ENT:Think()
	if (IsValid(self:GetEnemy()) and self.Ready) then
		if (math.random(1,1800) == 1) then
			self.CrybabyMode = true
		end
		local targetheadpos,targetheadang = self:GetEnemy():GetBonePosition(1) -- Get the position/angle of the head.
		self.EyeAngle = (targetheadpos - self:EyePos()):Angle() -- And finally, we snap our aim to the head of the target.
	end
	if (SERVER and !self:HaveEnemy()) then
		self.EyeAngle = self:GetAngles()
	end
	if SERVER then

		if (self:GetCycle() == 1) then
			self:SetCycle(0)
		end
		self:BodyMoveXY()

	end
	if (IsValid(self:GetEnemy()) and self.Ready) then
		if (math.random(1,1800) == 1) then
			self.CrybabyMode = true
		end
	end
	if (IsValid(self:GetEnemy()) and self:GetEnemy():Health() < 1) then
		self:SetEnemy(nil)
	end
	if (IsValid(self:GetEnemy()) and self.Ready) then
		if (self:GetEnemy():GetPos():Distance(self:GetPos()) < 100 and self:GetEnemy():Health() > 0) then
			self.loco:SetDesiredSpeed( 0 )
			self.loco:SetAcceleration(200)
		elseif (self:GetEnemy():GetPos():Distance(self:GetPos()) > 100 and self:GetEnemy():Health() > 0) then
			self.loco:SetDesiredSpeed( 0 )
			self.loco:SetAcceleration(200)
		end
	elseif (IsValid(self:GetEnemy()) and (self:GetEnemy():Health() < 1) and self.Ready) then
		self:SetEnemy(nil)
	end
	self:NextThink(CurTime())
	return true
end

function ENT:HandleStuck()

	--
	-- Clear the stuck status
	--
	self.loco:ClearStuck()
	if (math.random(1,4) == 1) then
		if (self:HaveEnemy()) then
			self:SetPos(self:GetEnemy():GetPos() + Vector(0,0,10))
		end	
	else
		self.Enemy = nil
		self:FindEnemy()
	end
end

function ENT:ChaseEnemy( options )

	local options = options or {}
	local path = Path( "Follow" )
	path:SetMinLookAheadDistance( options.lookahead or 300 )
	path:SetGoalTolerance( options.tolerance or 20 )
	path:Compute( self, self:GetEnemy():GetPos() )		-- Compute the path towards the enemies position

	if ( !path:IsValid() ) then return "failed" end

	while ( path:IsValid() and self:HaveEnemy() ) do

		if ( path:GetAge() > 0.1 ) then					-- Since we are following the player we have to constantly remake the path
			path:Compute(self, self:GetEnemy():GetPos())-- Compute the path towards the enemy's position again
		end
		path:Update( self )								-- This function moves the bot along the path
		
		if ( options.draw ) then path:Draw() end
		-- If we're stuck, then call the HandleStuck function and abandon
		if ( self.loco:IsStuck() ) then
			self:HandleStuck()
			return "stuck"
		end

		coroutine.yield()

	end

	return "ok"

end
function ENT:OnInjured( dmginfo )
	if (dmginfo:IsDamageType(DMG_BULLET)) then
		ParticleEffect( "bot_impact_light", dmginfo:GetDamagePosition(), self:GetAngles() )
		self:EmitSound("MVM_Tank.BulletImpact")
	end
end
function ENT:OnKilled( dmginfo )

	hook.Call( "OnNPCKilled", GAMEMODE, self, dmginfo:GetAttacker(), dmginfo:GetInflictor() )
	self.Ready = false
	self:PrecacheGibs()
	self:EmitSound("MVM.GiantCommonExplodes")
	ParticleEffect("asplode_hoodoo_shockwave", self:GetPos() + Vector(0,0,35), self:GetAngles())
	ParticleEffect("asplode_hoodoo_shockwave", self:GetPos() + Vector(0,0,35), self:GetAngles())
	ParticleEffect("asplode_hoodoo_shockwave", self:GetPos() + Vector(0,0,35), self:GetAngles())
	ParticleEffect("asplode_hoodoo_shockwave", self:GetPos() + Vector(0,0,35), self:GetAngles())

	ParticleEffect("cinefx_goldrush_flash", self:GetPos(), self:GetAngles())
	ParticleEffect("fireSmoke_Collumn_mvmAcres", self:GetPos(), Angle())
	ParticleEffect("fluidSmokeExpl_ring_mvm", self:GetPos() + Vector(50,50,25), self:GetAngles())
	ParticleEffect("fluidSmokeExpl_ring_mvm", self:GetPos() + Vector(-50,-50,25), self:GetAngles())
	ParticleEffect("fluidSmokeExpl_ring_mvm", self:GetPos() + Vector(-50,50,25), self:GetAngles())
	ParticleEffect("fluidSmokeExpl_ring_mvm", self:GetPos() + Vector(50,-50,25), self:GetAngles())

	ParticleEffect("fireSmoke_Collumn_mvmAcres_sm", self:GetPos() + Vector(50,50,25), self:GetAngles())
	ParticleEffect("fireSmoke_Collumn_mvmAcres_sm", self:GetPos() + Vector(-50,-50,25), self:GetAngles())
	ParticleEffect("fireSmoke_Collumn_mvmAcres_sm", self:GetPos() + Vector(-50,50,25), self:GetAngles())
	ParticleEffect("fireSmoke_Collumn_mvmAcres_sm", self:GetPos() + Vector(50,-50,25), self:GetAngles())
	timer.Simple(0.1, function()
				
		if (!IsValid(self)) then return end

		local pos = self:GetPos()
		self:GibBreakServer(dmginfo:GetDamageForce() * 2)
		self:Remove()

	end)
end

list.Set( "NPC", "boss_bot", {
	Name = "Undentified Machine Type 1",
	Class = "boss_bot",
	Category = "TF2: Raid"
})
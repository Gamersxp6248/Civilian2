AddCSLuaFile()
SWEP.Base = "weapon_base"
SWEP.Category = "Half-Life 2 (Scripted)" 
SWEP.PrintName = "SMG1"
SWEP.Author = "Daisreich"

SWEP.Slot = 0
SWEP.SlotPos = 0

SWEP.Spawnable = true
 
--SWEP.ViewModel = Model( "models/v_models/v_huntingrifle.mdl" )
SWEP.ViewModel = Model( "models/weapons/c_smg1.mdl" )
SWEP.WorldModel = "models/weapons/w_smg1.mdl"
SWEP.UseHands = false
SWEP.HoldType = "smg"
SWEP.Primary.Delay = 0.062
SWEP.Primary.ClipSize = 45  -- How much bullets are in the mag
SWEP.Primary.DefaultClip = 128 -- How much bullets preloaded when spawned
SWEP.Primary.Damage = 8
SWEP.Primary.TakeAmmo = 1
SWEP.Primary.Spread = 0.7
SWEP.Primary.NumberofShots = 1
SWEP.Primary.Ammo = "SMG1" 
SWEP.Secondary.Ammo = "SMG1_Grenade"
SWEP.Primary.Recoil = 0.15
SWEP.Primary.Automatic = true
SWEP.Secondary.Automatic = true
SWEP.DeployAfterPickup = false
SWEP.HitDistance = 48
SWEP.ShootSound = Sound("Weapon_SMG1.NPC_Single")
SWEP.ViewModelFOV = 54
SWEP.ViewModelFlip = false
function SWEP:Deploy()
	self:SetWeaponHoldType( self.HoldType ) 
		local vm = self:GetOwner():GetViewModel()
		if SERVER then
			self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("draw")))
		end
		timer.Stop("Idle"..self.Owner:EntIndex())
		timer.Stop("Idle2"..self.Owner:EntIndex())
		local vm = self:GetOwner():GetViewModel()
		timer.Create("Idle"..self.Owner:EntIndex(), vm:SequenceDuration(vm:LookupSequence("draw")) , 1, function()
			self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("idle")))
			timer.Create("Idle2"..self.Owner:EntIndex(), vm:SequenceDuration(vm:LookupSequence("idle")) , 0, function()
				self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("idle")))
			end)
		end)
	return true
end 

local phys_pushscale = GetConVar( "phys_pushscale" )

function SWEP:DealDamage()

end

function SWEP:Think()

	local vm = self.Owner:GetViewModel()
	local curtime = CurTime()

	local meleetime = self:GetNextMeleeAttack()

	if ( meleetime > 0 && CurTime() > meleetime ) then

		self:DealDamage()

		self:SetNextMeleeAttack( 0 )

	end
end


function SWEP:Holster()

	self:SetNextMeleeAttack( 0 )

	return true

end

function SWEP:SetupDataTables()

	self:NetworkVar( "Float", 0, "NextMeleeAttack" )
	self:NetworkVar( "Float", 1, "NextIdle" )
	self:NetworkVar( "Int", 2, "Combo" )

end

function SWEP:Initialize()
	self:SetWeaponHoldType( self.HoldType )
end 

function SWEP:Holster()

	timer.Stop("Idle2"..self.Owner:EntIndex())

	return true

end

function SWEP:Initialize()
	self:SetWeaponHoldType( self.HoldType )
end 

function SWEP:PrimaryAttack()
	if ( !self:CanPrimaryAttack() ) then return end
	 
	local vm = self:GetOwner():GetViewModel()
	local bullet = {} 
	bullet.Num = self.Primary.NumberofShots 
	bullet.Src = self.Owner:GetShootPos() 
	bullet.Dir = self.Owner:GetAimVector() 
	bullet.Spread = Vector( self.Primary.Spread * 0.1 , self.Primary.Spread * 0.1, 0)
	bullet.Tracer = 1
	bullet.Force = self.Primary.Force 
	bullet.Damage = self.Primary.Damage 
	bullet.AmmoType = self.Primary.Ammo 
	 
	local rnda = self.Primary.Recoil * -1 
	local rndb = self.Primary.Recoil * math.random(-1, 1) 
	  
	self:ShootEffects()
	 
	self.Owner:FireBullets( bullet ) 
		self:EmitSound(self.ShootSound, 65,100)	
		self.Owner:ViewPunch( Angle( rnda,0,0 ) ) 
		self:TakePrimaryAmmo(self.Primary.TakeAmmo) 
		self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("fire03")))
		self:SetNextPrimaryFire( CurTime() + self.Primary.Delay ) 
		timer.Stop("Idle"..self.Owner:EntIndex())
		timer.Stop("Idle2"..self.Owner:EntIndex())
		local vm = self:GetOwner():GetViewModel()
		timer.Create("Idle"..self.Owner:EntIndex(), vm:SequenceDuration(vm:LookupSequence(vm:LookupSequence("fire03"))) , 1, function()
			self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("idle")))
			timer.Create("Idle2"..self.Owner:EntIndex(), vm:SequenceDuration(vm:LookupSequence("idle")) , 0, function()
				self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("idle")))
			end)
		end)
	
end 
function SWEP:SecondaryAttack()
	if ( self:Ammo2() <= 0 ) then return end
	local vm = self:GetOwner():GetViewModel()
	self:SetNextSecondaryFire( CurTime() + 1 )
	self.Owner:DoAnimationEvent(ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW)
	self.Owner:RemoveAmmo( 1, self.Weapon:GetSecondaryAmmoType() )
		self:EmitSound("Weapon_AR2.Double")
		self:SendWeaponAnim(ACT_VM_SECONDARYATTACK)
		self.Owner:GetViewModel():SetPlaybackRate(1)
		local vecAiming = self.Owner:GetAimVector()//GetAutoaimVector( AUTOAIM_2DEGREES );

		local vecVelocity = vecAiming * 1000
		if SERVER then
			local grenade = ents.Create("grenade_ar2")
			grenade:SetPos(self:GetPos() + Vector(0,-7,62))
			grenade:SetAngles(self.Owner:EyeAngles())
			
			
			grenade:SetSaveValue( "m_flRadius", 10 )
			grenade:SetSaveValue( "m_flSpeed", vecVelocity:Length() )
			grenade:SetSaveValue( "m_vecAbsVelocity", vecVelocity )
			grenade:SetOwner(self.Owner)
			
			grenade:Spawn()
			local vel = self.Owner:GetAimVector():Angle()
			vel.p = vel.p + -7
			vel = vel:Forward() * 1100 * (grenade.Mass or 10)
		end
end 

function SWEP:Reload()
		local vm = self:GetOwner():GetViewModel()
		local reload = "reload"
		if (self:Clip1() < 1) then
			reload = 'reload'
			self:DefaultReload(vm:GetSequenceActivity(vm:LookupSequence("reload")))
		else
			self:DefaultReload(vm:GetSequenceActivity(vm:LookupSequence("reload")))
		end
		self:EmitSound("Weapon_SMG1.NPC_Reload")
		if SERVER then
			if (string.find(self:GetClass(),"smg") or string.find(self:GetClass(),"m4a1")) then
				self.Owner:DoAnimationEvent( ACT_HL2MP_GESTURE_RELOAD_SMG1,true,true )
				umsg.Start("PlaySMGNormalWeaponWorldReload")
					umsg.Entity(self)	
				umsg.End()
			end
		end
		timer.Stop("Idle"..self.Owner:EntIndex())
		timer.Stop("Idle2"..self.Owner:EntIndex())
		timer.Create("Idle"..self.Owner:EntIndex(), vm:SequenceDuration(vm:LookupSequence(reload)) , 1, function()
			self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("idle")))
			timer.Create("Idle2"..self.Owner:EntIndex(), vm:SequenceDuration(vm:LookupSequence("idle")) , 0, function()
				self:SendWeaponAnim(vm:GetSequenceActivity(vm:LookupSequence("idle")))
			end)
		end)
end
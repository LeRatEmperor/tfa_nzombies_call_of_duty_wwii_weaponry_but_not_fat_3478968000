AddCSLuaFile()

DEFINE_BASECLASS("weapon_uh_base_gun")
SWEP.Base = "weapon_bo3_base_gun"

SWEP.PrintName = "Argus"
SWEP.Category = "Black Ops III"
SWEP.SubCategory = ""
SWEP.IconLetter = "u"

SWEP.Slot = 3 -- The slot the weapon will appear in when switching weapons, add 1 to get the actual slot (e.g. a value of 1 translates to weapon slot 2, the pistol slots)

SWEP.Spawnable = true -- Set this to true to make your weapon appear in the spawnmenu, set to false to hide the template

-- Appearance

SWEP.UseHands = false
SWEP.ViewModelFlip = false
SWEP.ViewModelFOV = 65
SWEP.ViewModel		= "models/loyalists/blackops3/cp/prec/v_shot_prec.mdl"
SWEP.WorldModel		= "models/loyalists/blackops3/cp/prec/w_shot_prec.mdl"
SWEP.LoweredPos = Vector(2.95, -3.057, -4.119)
SWEP.LoweredAng = Vector(-13.131, 33.537, -29.906)

SWEP.UseQCReloadEvents = false
SWEP.UseReloadTable    = true

SWEP.HoldType = "shotgun"
SWEP.PassiveAnim = "passive"
SWEP.ZoomFov = 20

SWEP.FireModes = {
	{
		name = "Pump-Action"
	}
}

SWEP.Primary.Sound          = Sound("CW_BLACKOPS3_ARGUS_FIRE")
SWEP.Primary.ClipSize       = 10
SWEP.Primary.Ammo           = "12 Gauge"
SWEP.Primary.DefaultClip    = 120
SWEP.Primary.MinDamage      = 30
SWEP.Primary.MaxDamage      = 40
SWEP.Primary.Automatic      = false
SWEP.Primary.TakeAmmo       = 1
SWEP.Primary.Force          = 6
SWEP.Primary.Spread         = 0.5
SWEP.Primary.Delay          = 1.
SWEP.Primary.NumberofShots  = 8
SWEP.Primary.MinRecoil      = -1.0
SWEP.Primary.MaxRecoil      = -1.5
SWEP.TwoHanded				= true
SWEP.ReloadSpeed = 1
SWEP.Chambering				= false
SWEP.NoShell				= true
SWEP.AnimatedSprint			= false
SWEP.PumpDelay = 0.2

-- Custom configurators

SWEP.MuzzleFlashType = "particle"
SWEP.MuzzleFlashParticle = "muzzleflash_m3"
SWEP.MuzzleFlashLightColor = Vector(0, 200, 255)
SWEP.MuzzleFlashLightSize = 128

SWEP.MeleeDamage    = 50      -- Damage dealt by melee attack
SWEP.MeleeRange     = 64      -- Range of melee trace (Source units)
SWEP.MeleeDelay     = 0.6     -- Minimum time between melee attacks
SWEP.MeleeForce     = 300     -- Knockback force on hit
SWEP.MeleeHitDelay  = 0.15    -- Seconds after melee start to perform hit trace
SWEP.MeleeViewPunch = Angle(-5, 0, 0)  -- Camera punch on melee

SWEP.MeleeSound     = "weapons/blackops3/cloth/riot_shield_swing_cloth_00.wav"      -- Swing sound (leave empty for none)
SWEP.MeleeHitSound  = {"weapons/blackops3/rifle_butt/rifle_hit_00.wav", "weapons/blackops3/rifle_butt/rifle_hit_00.wav"}      -- Sound on hit
SWEP.MeleeMissSound = "nil"      -- Sound on miss

SWEP.MeleeInterruptReload = true

SWEP.IronSightsPos = Vector(-9.6159, 0.4704, 1.3889)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.SwayPosition = 2.0

SWEP.AlternativePos = Vector(0, 0, 0) -- Shifts gun right, back, and down
SWEP.AlternativeAng = Angle(0, 0, 0)   -- Tilts it

SWEP.Animations = {
	["shoot"] = "base_fire",
	["reload"] = "base_reload",
	["reload_empty"] = "base_reload_empty",
	["sprint_idle"] = "base_sprint_loop",
	["sprint_in"] = "base_sprint_in",
	["sprint_out"] = "base_sprint_out",
	["iron_fire"] = "base_fire_ads",
	["idle"] = "base_idle",
	["deploy"] = "base_draw",
	["melee"] = "base_melee",
	["inspect"] = "base_inspect",
	["rechamber"] = "base_rechamber",
	["rechamber_ads"] = "base_rechamber_ads",
	["mantle"] = "base_mantle_over",
}

SWEP.AnimSounds = {
    ["reload"] = {
        {time = 0.2, sound = "Weapon_BLACKOPS3_ARGUS.Lever_Open"},
        {time = 0.4, sound = "Weapon_BLACKOPS3_ARGUS.Wheel"},
        {time = 0.6, sound = "Weapon_BLACKOPS3_ARGUS.Magout"},
        {time = 1.6, sound = "Weapon_BLACKOPS3_ARGUS.Magin"},
        {time = 2.2, sound = "Weapon_BLACKOPS3_ARGUS.Lever_Close"},
    },
    ["reload_empty"] = {
        {time = 0.2, sound = "Weapon_BLACKOPS3_ARGUS.Lever_Open"},
        {time = 0.4, sound = "Weapon_BLACKOPS3_ARGUS.Wheel"},
        {time = 0.6, sound = "Weapon_BLACKOPS3_ARGUS.Magout"},
        {time = 1.6, sound = "Weapon_BLACKOPS3_ARGUS.Magin"},
        {time = 2.2, sound = "Weapon_BLACKOPS3_ARGUS.Lever_Close"},
    },
    ["rechamber"] = {
        {time = 0.1, sound = "Weapon_BLACKOPS3_ARGUS.Wheel"},
        {time = 0.15, sound = "Weapon_BLACKOPS3_ARGUS.Lever_Open"},
        {time = 0.35, sound = "Weapon_BLACKOPS3_ARGUS.Lever_Close"},
        {time = 0.4, sound = "Weapon_BLACKOPS3_ARGUS.Wheel_Close"},
    },
    ["rechamber_ads"] = {
        {time = 0.1, sound = "Weapon_BLACKOPS3_ARGUS.Wheel"},
        {time = 0.15, sound = "Weapon_BLACKOPS3_ARGUS.Lever_Open"},
        {time = 0.35, sound = "Weapon_BLACKOPS3_ARGUS.Lever_Close"},
        {time = 0.4, sound = "Weapon_BLACKOPS3_ARGUS.Wheel_Close"},
    },
}

function SWEP:PostShoot()
    local ct = CurTime()
    local pumpDelay = self.PumpDelay or 0.4

    -- Ensure fire+sprint block lasts AT LEAST pumpDelay long
    -- but don't shorten a longer Primary.Delay
    self:SetNextPrimaryFire(math.max(self:GetNextPrimaryFire(), ct + pumpDelay))
    self:SetNextSecondaryFire(math.max(self:GetNextSecondaryFire(), ct + pumpDelay))

    timer.Simple(pumpDelay, function()
        if !IsValid(self) or !IsValid(self.Owner) or !IsValid(self.Owner:GetActiveWeapon()) or self.Owner:GetActiveWeapon() != self then return end

        local animKey = self:GetUHBool("Zooming") and "rechamber_ads" or "rechamber"
        self:EasySendWeaponAnim(animKey, ACT_SHOTGUN_PUMP)
    end)
end

function SWEP:Deploy()
    BaseClass.Deploy(self)

	self:SetHoldType( self.HoldType )

    if self.Animations and self.Animations["deploy"] then
        local vm = self.Owner:GetViewModel()
        if IsValid(vm) then
            self:EasySendWeaponAnim("deploy", ACT_VM_DRAW)
            local dur = vm:SequenceDuration()
            self:SetNextPrimaryFire(CurTime() + dur)
            self:SetNextSecondaryFire(CurTime() + dur)
            self.NextReload = CurTime() + dur
            self._nextIdlePlay = nil
            self._deployEndTime = CurTime() + dur
            self:SetNWFloat("DeployTime", 0)
        end
    end

    -- Reset melee state
    self._meleeActive = nil
    self._meleeHitTime = nil
    self._meleeHitDone = nil
    self._meleeEndTime = nil
    self._nextMelee = nil

    -- Reset mantle state
    self._mantleActive = nil
    self._mantleEndTime = nil
    self._lastBO3IsVaulting = false
    self._lastBO3IsMantling = false

    return false
end

if CLIENT then
	local WorldModel = ClientsideModel(SWEP.WorldModel)
	WorldModel:SetSkin(1)
	WorldModel:SetNoDraw(true)

	function SWEP:DrawWorldModel()
		local _Owner = self:GetOwner()
		if IsValid(_Owner) then
			local offsetVec = Vector(0, -2, -1)
			local offsetAng = Angle(180, 90, 0)
			local boneid = _Owner:LookupBone("ValveBiped.Bip01_R_Hand")
			if not boneid then return end
			local matrix = _Owner:GetBoneMatrix(boneid)
			if not matrix then return end
			local newPos, newAng = LocalToWorld(offsetVec, offsetAng, matrix:GetTranslation(), matrix:GetAngles())
			WorldModel:SetPos(newPos)
			WorldModel:SetAngles(newAng)
			WorldModel:SetupBones()
		else
			WorldModel:SetPos(self:GetPos())
			WorldModel:SetAngles(self:GetAngles())
		end
		WorldModel:DrawModel()
	end
end
SWEP.Base = "tfa_codww2_base"
SWEP.Category = "nZR: WWII Kate"
SWEP.SubCategory = "Special"
SWEP.Spawnable = TFA_BASE_VERSION and TFA_BASE_VERSION >= 4.7
SWEP.AdminSpawnable = true
SWEP.UseHands = true
SWEP.Purpose = "Fires bolts that can kill an enemy with shots that hit high torso and above."
SWEP.Instructions = "Bolt flies straight for 1500HUs at 2800HU/s"
SWEP.Manufacturer = nil
SWEP.Type_Displayed = "Crossbow"
SWEP.Author = "Olli, Fox, Mav"
SWEP.Slot = 4
SWEP.PrintName = "Crossbow"
SWEP.DrawCrosshair = true
SWEP.DrawCrosshairIronSights = false

--[Model]--
SWEP.ViewModel			= "models/weapons/tfa_codww2/crossbow/c_crossbow.mdl"
SWEP.ViewModelFOV = 65
SWEP.WorldModel			= "models/weapons/tfa_codww2/crossbow/w_crossbow.mdl"
SWEP.HoldType = "rpg"
SWEP.CameraAttachmentOffsets = {}
SWEP.CameraAttachmentScale = 2
SWEP.MuzzleAttachment = "1"
SWEP.VMPos = Vector(0, 0, 0)
SWEP.VMAng = Vector(0, 0, 0)
SWEP.VMPos_Additive = true

SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
        Pos = {
        Up = -5.,
        Right = 1,
        Forward = 13.8,
        },
        Ang = {
		Up = 180,
        Right = 190,
        Forward = 0
        },
		Scale = 1.1
}

--[NZombies]--
SWEP.NZPaPName = "Round Tables"
SWEP.Ispackapunched = false

function SWEP:OnPaP()
self.Ispackapunched = true
self.MuzzleFlashEffect = "muz_pap"

self.Primary_TFA.ClipSize = 6
self.Primary_TFA.Projectile = "bo3_ww_zmbbow"
self.Primary_TFA.Damage = 1750
self.Primary_TFA.NumShots = 1
self.Primary_TFA.RPM = 270
self.Primary_TFA.DefaultClip  = 66
self.Primary_TFA.MaxAmmo = 60
self.FireModes = {
    "2Burst"
}  
self.Primary_TFA.Automatic = false
self:ClearStatCache()
return true
end

--[Gun Related]--
SWEP.Primary.Sound = "TFA_CODWW2_CROSSBOW.Shoot"
SWEP.Primary.Sound_DryFire = "TFA_CODWW2_DRYFIRE.LMG"
SWEP.Primary.Sound_Blocked = "TFA_CODWW2_DRYFIRE.LMG"
SWEP.Primary.Ammo = "XBowBolt"
SWEP.Primary.Automatic = false
SWEP.Primary.RPM = 160
SWEP.Primary.RPM_Displayed = 25
SWEP.Primary.RPM_Semi = nil
SWEP.NZHeadShotMultiplier = 2
SWEP.Primary.Force = 300
SWEP.Primary.RPM_Burst = nil
SWEP.Primary.Damage = 900
SWEP.Primary.Knockback = 0 
SWEP.Primary.NumShots = 1
SWEP.Primary.AmmoConsumption = 1
SWEP.Primary.ClipSize = 1
SWEP.Primary.ClipSize_Ext = 3
SWEP.Primary.DefaultClip = 31

--[Max Ammo Code]--
function SWEP:NZMaxAmmo()
    if CLIENT then return end

    self:GetOwner():SetAmmo(self.Primary.MaxAmmo, self:GetPrimaryAmmoType())
    self:SetClip1(self.Primary.ClipSize)
end

SWEP.Primary.MaxAmmo = 30

SWEP.Primary.DryFireDelay = 0.5
SWEP.DisableChambering = true
SWEP.FlashlightAttachment = 0
SWEP.FiresUnderwater = false
SWEP.MuzzleFlashEnabled = false

--[Firemode]--
SWEP.Primary.BurstDelay = nil
SWEP.DisableBurstFire = true
SWEP.SelectiveFire = false
SWEP.OnlyBurstFire = false
SWEP.BurstFireCount = nil
SWEP.DefaultFireMode = ""
SWEP.FireModeName = "Single Fire"

--[LowAmmo]--
SWEP.FireSoundAffectedByClipSize = false
SWEP.LowAmmoSoundThreshold = 0.33 --0.33
SWEP.LowAmmoSound = nil
SWEP.LastAmmoSound = nil

--[Range]--
SWEP.Primary.DisplayFalloff = false
SWEP.Primary.RangeFalloffLUT = {
	bezier = false, -- Whenever to use Bezier or not to interpolate points?
	-- you probably always want it to be set to true
	range_func = "linear", -- function to spline range
	-- "linear" for linear splining.
	-- Possible values are "quintic", "cubic", "cosine", "sinusine", "linear" or your own function
	units = "meters", -- possible values are "inches", "inch", "hammer", "hu" (are all equal)
	-- everything else is considered to be meters
	lut = { -- providing zero point is not required
		-- without zero point it is considered to be as {range = 0, damage = 1}
		{range = 200, damage = 1},
	}
}

--[Recoil]--
SWEP.ViewModelPunchPitchMultiplier = 0.5 --0.5
SWEP.ViewModelPunchPitchMultiplier_IronSights = 0.09 --0.09

SWEP.ViewModelPunch_MaxVertialOffset				= 3 --3
SWEP.ViewModelPunch_MaxVertialOffset_IronSights		= 1.95 --1.95
SWEP.ViewModelPunch_VertialMultiplier				= 1 --1
SWEP.ViewModelPunch_VertialMultiplier_IronSights	= 0.25 --0.25

SWEP.ViewModelPunchYawMultiplier = 0.6 --0.6
SWEP.ViewModelPunchYawMultiplier_IronSights = 0.25 --0.25

SWEP.ChangeStateRecoilMultiplier = 1.3 --1.3
SWEP.CrouchRecoilMultiplier = 0.55 --0.65
SWEP.JumpRecoilMultiplier = 2.0 --1.3
SWEP.WallRecoilMultiplier = 1.1 --1.1

--[Spread Related]--
SWEP.Primary.Spread		  = .03
SWEP.Primary.IronAccuracy = .005
SWEP.IronRecoilMultiplier = 0.8

SWEP.Primary.KickUp				= 0.6
SWEP.Primary.KickDown 			= 0.5
SWEP.Primary.KickHorizontal		= 0.1
SWEP.Primary.StaticRecoilFactor = 0.3

SWEP.Primary.SpreadMultiplierMax = 5
SWEP.Primary.SpreadIncrement = 5
SWEP.Primary.SpreadRecovery = 3

SWEP.ChangeStateAccuracyMultiplier = 1.5 --1.5
SWEP.CrouchAccuracyMultiplier = 1.0 --0.5
SWEP.JumpAccuracyMultiplier = 1.0 --2
SWEP.WalkAccuracyMultiplier = 1.0 --1.35

--[Bash]--
SWEP.Secondary.BashDamage = 35
SWEP.Secondary.BashSound = Sound("TFA_CODWW2_MELEE.SwingLrg")
SWEP.Secondary.BashHitSound = Sound("TFA_CODWW2_MELEE.Hit")
SWEP.Secondary.BashHitSound_Flesh = Sound("TFA_CODWW2_MELEE.HitPlr")
SWEP.Secondary.BashLength = 60
SWEP.Secondary.BashDelay = 0.2
SWEP.Secondary.BashDamageType = DMG_CLUB
SWEP.Secondary.BashInterrupt = true

--[Iron Sights]--
SWEP.IronBobMult 	 = 0.065
SWEP.IronBobMultWalk = 0.065
SWEP.data = {}
SWEP.data.ironsights = 1
SWEP.IronInSound = "TFA_CODWW2_LNCHR.AdsUp"
SWEP.IronOutSound = "TFA_CODWW2_LNCHR.AdsDown"
SWEP.Secondary.IronFOV = 75
SWEP.IronSightsPos = Vector(-3.495, -1, 1.14)
SWEP.IronSightsAng = Vector(-0.4, 0, 0)
SWEP.IronSightsPos_NYDAR = Vector(-3.495, -1, 0.96)
SWEP.IronSightsAng_NYDAR = Vector(0, 0, 0)
SWEP.IronSightsPos_ACOG = Vector(-3.486, -3, 0.403)
SWEP.IronSightsAng_ACOG = Vector(0, 0, 0)
SWEP.IronSightTime = 0.3

--[Shells]--
SWEP.LuaShellEject = false
SWEP.LuaShellEffect = "ShellEject"
SWEP.LuaShellModel = "models/entities/tfa_codww2/shells/fx_762.mdl"
SWEP.LuaShellScale = 0
SWEP.LuaShellEjectDelay = 0
SWEP.ShellAttachment = "0"
SWEP.EjectionSmokeEnabled = false

--[Jamming]-- RPG
SWEP.CanJam = false
SWEP.JamChance = 0.00
SWEP.JamFactor = 0.00

--[Projectile]--
SWEP.Primary.Projectile			= "codww2_bolt_default" -- Entity to shoot
SWEP.Primary.Projectile_Exp		= "codww2_bolt_exp" -- Entity to shoot
SWEP.Primary.ProjectileVelocity = 2800 -- Entity to shoot's velocity
SWEP.Primary.ProjectileModel    = "models/weapons/tfa_codww2/crossbow/crossbow_proj.mdl" -- Entity to shoot's model

--[Misc]--
SWEP.AmmoTypeStrings = {XBowBolt = "Bolts"}
SWEP.FireModeSound = "TFA_CODWW2_GEN.Switch"
SWEP.Primary.PickupSound = "TFA_CODWW2_PICKUP.Grenade"
SWEP.InspectPos = Vector(10, -4, -2)
SWEP.InspectAng = Vector(24, 42, 16)
SWEP.MoveSpeed = 1
SWEP.IronSightsMoveSpeed = SWEP.MoveSpeed * 0.8
SWEP.SafetyPos = Vector(1, -1, -0.5)
SWEP.SafetyAng = Vector(-20, 35, -25)
SWEP.TracerCount = 0

--[DInventory2]--
SWEP.DInv2_GridSizeX = 2
SWEP.DInv2_GridSizeY = 3
SWEP.DInv2_Volume = nil
SWEP.DInv2_Mass = 4

--[Tables]--
SWEP.StatusLengthOverride = {
    [ACT_VM_RELOAD] = 20 / 30,
	["reload_ext"] = 40 / 30,
}

SWEP.SequenceLengthOverride = {
}

SWEP.SequenceRateOverride = {
	["sprint_loop"] = 30 / 30,
}

SWEP.SprintAnimation = {
	["in"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "sprint_in", --Number for act, String/Number for sequence
		["value_empty"] = "sprint_in_empty",
	},
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "sprint_loop", --Number for act, String/Number for sequence
		["value_empty"] = "sprint_loop_empty",
		["is_idle"] = true
	},
	["out"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "sprint_out", --Number for act, String/Number for sequence
		["value_empty"] = "sprint_out_empty",
	}
}

SWEP.EventTable = {
[ACT_VM_DRAW_DEPLOYED] = {
{ ["time"] = 15 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_CROSSBOW.FPO") },
},
[ACT_VM_DRAW] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_LNCHR.Raise") },
},
[ACT_VM_HOLSTER] = {
{ ["time"] = 2 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_LNCHR.Holster") },
},
[ACT_VM_RELOAD] = {
{ ["time"] = 15 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_CROSSBOW.BoltIn") },
{ ["time"] = 30 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_CROSSBOW.Charge") },
},
["reload_ext"] = {
{ ["time"] = 15 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_CROSSBOW.BoltIn") },
{ ["time"] = 30 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_CROSSBOW.Charge") },
},
["inspect"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_CROSSBOW.Inspect1") },
{ ["time"] = 35 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_CROSSBOW.Inspect2") },
},
["inspect_empty"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_CROSSBOW.Inspect1") },
{ ["time"] = 35 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_CROSSBOW.Inspect2") },
},
["inspect_epic"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_CROSSBOW.EpicInspect1") },
{ ["time"] = 120 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_CROSSBOW.EpicInspect2") },
},
}

--[Shit]--
SWEP.AllowViewAttachment = true --Allow the view to sway based on weapon attachment while reloading or drawing, IF THE CLIENT HAS IT ENABLED IN THEIR CONVARS.
SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_ANI -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_HYBRID -- ANI = mdl, HYBRID = lua but continue idle, Lua = stop mdl animation
SWEP.Idle_Mode = TFA.Enum.IDLE_BOTH --TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA
SWEP.Idle_Blend = 0.25 --Start an idle this far early into the end of a transition
SWEP.Idle_Smooth = 0.05 --Start an idle this far early into the end of another animation
SWEP.SprintBobMult = 1

--[Attachments]--
SWEP.ViewModelBoneMods = {
	["tag_charm_base"] = { scale = Vector(1, 1, 1), pos = Vector(1.5, 0, 0.5), angle = Angle(0, 0, 0) }
}

SWEP.VElements = {
	["sight_nydar"] = { type = "Model", model = "models/weapons/tfa_codww2/crossbow/c_crossbow_reflex.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["sight_nydar_lens"] = (TFA.CODWW2 and TFA.CODWW2.GetHoloSightReticle) and TFA.CODWW2.GetHoloSightReticle("sight_nydar") or nil,
	["scope_acog"] = { type = "Model", model = "models/weapons/tfa_codww2/crossbow/c_crossbow_4x.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	-- default bolt
	["clip_default"] = { type = "Model", model = "models/weapons/tfa_codww2/crossbow/c_crossbow_clip.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	-- explosive bolt
	["clip_exp"] = { type = "Model", model = "models/weapons/tfa_codww2/crossbow/c_crossbow_exp.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	-- fast reload
	["clip_fast"] = { type = "Model", model = "models/weapons/tfa_codww2/crossbow/c_crossbow_fast.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["sight_default"] = { type = "Model", model = "models/weapons/tfa_codww2/crossbow/c_crossbow_sight.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["charm_default"] = { type = "Model", model = "models/weapons/tfa_codww2/bar/c_bar_charm.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {[0] = 1} },
}
SWEP.WElements = {
	["clip_default"] = { type = "Model", model = "models/weapons/tfa_codww2/crossbow/w_crossbow_clip.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["clip_exp"] = { type = "Model", model = "models/weapons/tfa_codww2/crossbow/w_crossbow_exp.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["clip_fast"] = { type = "Model", model = "models/weapons/tfa_codww2/crossbow/w_crossbow_fast.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["sight_nydar"] = { type = "Model", model = "models/weapons/tfa_codww2/crossbow/w_crossbow_reflex.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["scope_acog"] = { type = "Model", model = "models/weapons/tfa_codww2/crossbow/w_crossbow_4x.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["sight_default"] = { type = "Model", model = "models/weapons/tfa_codww2/crossbow/w_crossbow_sight.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
}
SWEP.Attachments = {
	[2] = {atts = {"tfa_codww2_nydar", "tfa_codww2_4x"}, order = 2},
	[3] = {atts = {"tfa_codww2_fast_bolt", "tfa_codww2_exp_bolt"}, order = 3},
	[4] = {atts = {"tfa_codww2_tribolt", "tfa_codww2_quickreload"}, order = 4},
}

-- model overwrite 
SWEP.MagModel_tri = "models/weapons/tfa_codww2/crossbow/c_crossbow_clip_tribolt.mdl"
SWEP.MagModel_tri_exp = "models/weapons/tfa_codww2/crossbow/c_crossbow_exp_tribolt.mdl"
SWEP.MagModel_tri_fast = "models/weapons/tfa_codww2/crossbow/c_crossbow_fast_tribolt.mdl"
SWEP.W_MagModel_tri = "models/weapons/tfa_codww2/crossbow/w_crossbow_clip_tribolt.mdl"
SWEP.W_MagModel_tri_exp = "models/weapons/tfa_codww2/crossbow/w_crossbow_exp_tribolt.mdl"
SWEP.W_MagModel_tri_fast = "models/weapons/tfa_codww2/crossbow/w_crossbow_fast_tribolt.mdl"

SWEP.AttachmentDependencies     = {}
SWEP.AttachmentExclusions       = {}
SWEP.AttachmentTableOverride    = {}
SWEP.AttachmentIconOverride     = {}

--[Projectile Spread]--
DEFINE_BASECLASS( SWEP.Base )

function SWEP:PostSpawnProjectile(ent)
	if self:GetIronSights() then
		aimcone = 0.35
	else
		aimcone = 3
	end
	
	local dir
	local ang = self:GetOwner():GetAimVector():Angle()
	ang:RotateAroundAxis(ang:Right(), -aimcone / 2 + math.Rand(0, aimcone))
	ang:RotateAroundAxis(ang:Up(), -aimcone / 2 + math.Rand(0, aimcone))
	dir = ang:Forward()
	
	ent:SetVelocity(dir * self:GetStat("Primary.ProjectileVelocity"))
	local phys = ent:GetPhysicsObject()

	if IsValid(phys) then
		phys:SetVelocity(dir * self:GetStat("Primary.ProjectileVelocity"))
	end
end

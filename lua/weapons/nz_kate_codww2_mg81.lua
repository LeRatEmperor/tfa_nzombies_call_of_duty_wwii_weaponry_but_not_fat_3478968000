SWEP.Base = "tfa_codww2_base"
SWEP.Category = "nZR: WWII Kate"
SWEP.SubCategory = "Light Machine Guns"
SWEP.Spawnable = TFA_BASE_VERSION and TFA_BASE_VERSION >= 4.7
SWEP.AdminSpawnable = true
SWEP.UseHands = true
SWEP.Manufacturer = "Mauser"
SWEP.Type_Displayed = "Light Machine Gun"
SWEP.Purpose = "Full-auto LMG with moderate recoil and fast fire rate. Fastest aim down sight in class."
SWEP.Author = "Olli, Fox, Mav"
SWEP.Slot = 3
SWEP.PrintName = "MG 81"
SWEP.DrawCrosshair = true
SWEP.DrawCrosshairIronSights = false

--[Model]--
SWEP.ViewModel			= "models/weapons/tfa_codww2/mg81/c_mg81.mdl"
SWEP.ViewModelFOV = 65
SWEP.WorldModel			= "models/weapons/tfa_codww2/mg81/w_mg81.mdl"
SWEP.HoldType = "ar2"
SWEP.CameraAttachmentOffsets = {}
SWEP.CameraAttachmentScale = 2
SWEP.MuzzleAttachment = "1"
SWEP.VMPos = Vector(0, -1.5, 0)
SWEP.VMAng = Vector(0, 0, 0)
SWEP.VMPos_Additive = true

SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
        Pos = {
        Up = -5.75,
        Right = 1,
        Forward = 14.9,
        },
        Ang = {
		Up = 180,
        Right = 190,
        Forward = 0
        },
		Scale = 1.1
}

--[NZombies]--
SWEP.NZPaPName = "Heavy Artillery"
SWEP.Ispackapunched = false

function SWEP:OnPaP()
self.Ispackapunched = true
self.MuzzleFlashEffect = "muz_pap"

self.Primary_TFA.ClipSize = 120
self.Primary_TFA.Damage = 900
self.Primary_TFA.Projectile = "wavy_grenade"
self.Primary_TFA.ProjectileVelocity = 100000
self.Primary_TFA.NumShots = 1
self.Primary_TFA.RPM = 501
self.Primary_TFA.DefaultClip  = 1320
self.Primary_TFA.MaxAmmo = 1200
self.Primary_TFA.Automatic = true
self:ClearStatCache()
return true
end

--[Gun Related]--
SWEP.Primary.Sound = "TFA_CODWW2_STG44.Blast"
SWEP.Primary.SoundLyr1 = "TFA_CODWW2_FG42.Snap"
SWEP.Primary.SoundLyr2 = "TFA_CODWW2_MG15.Thump"
SWEP.Primary.SoundLyr3 = "TFA_CODWW2_MG42.Super_Dist"
SWEP.Primary.SoundLyr4 = "TFA_CODWW2_LEWIS.NPC_shot_01"
SWEP.Primary.SoundLyr5 = "TFA_CODWW2_FG42.Sub"
SWEP.Primary.SoundEchoTable = {
	[0] = Sound("TFA_CODWW2_TAIL.Int"),
	[256] = Sound("TFA_CODWW2_FG42.Ext")
}
SWEP.Primary.Sound_DryFire = "TFA_CODWW2_DRYFIRE.LMG"
SWEP.Primary.Sound_Blocked = "TFA_CODWW2_DRYFIRE.LMG"
SWEP.Primary.Ammo = "ar2"
SWEP.Primary.Automatic = true
SWEP.Primary.RPM = 491
SWEP.NZHeadShotMultiplier = 2
SWEP.Primary.RPM_Semi = nil
SWEP.Primary.RPM_Burst = nil
SWEP.Primary.RPM_Rapid = 540
SWEP.Primary.Damage = 300
SWEP.Primary.Knockback = 0
SWEP.Primary.NumShots = 1
SWEP.Primary.AmmoConsumption = 1
SWEP.Primary.ClipSize = 60
SWEP.Primary.ClipSize_Ext = 90
SWEP.Primary.DefaultClip = 660

--[Max Ammo Code]--
function SWEP:NZMaxAmmo()
    if CLIENT then return end

    self:GetOwner():SetAmmo(self.Primary.MaxAmmo, self:GetPrimaryAmmoType())
    self:SetClip1(self.Primary.ClipSize)
end

SWEP.Primary.MaxAmmo = 600

SWEP.Primary.DryFireDelay = 0.35
SWEP.DisableChambering = true
SWEP.FlashlightAttachment = 0
SWEP.FiresUnderwater = false
SWEP.MuzzleFlashEffect = "tfa_muzzleflash_rifle"

--[Firemode]--
SWEP.Primary.BurstDelay = nil
SWEP.DisableBurstFire = true
SWEP.SelectiveFire = false
SWEP.OnlyBurstFire = false
SWEP.BurstFireCount = nil
SWEP.DefaultFireMode = ""
SWEP.FireModeName = nil

--[Range]--
SWEP.Primary.DisplayFalloff = true
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
		{range = 150, damage = 1},
		{range = 200, damage = 0.88},
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
SWEP.CrouchRecoilMultiplier = 0.65 --0.65
SWEP.JumpRecoilMultiplier = 2.65 --1.3
SWEP.WallRecoilMultiplier = 1.1 --1.1

--[Spread Related]--
SWEP.Primary.Spread		  = .03
SWEP.Primary.IronAccuracy = .01
SWEP.IronRecoilMultiplier = 0.5

SWEP.Primary.KickUp				= 0.3
SWEP.Primary.KickDown 			= 0.2
SWEP.Primary.KickHorizontal		= 0.2
SWEP.Primary.StaticRecoilFactor = 0.5

SWEP.Primary.SpreadMultiplierMax = 5
SWEP.Primary.SpreadIncrement = 0.75
SWEP.Primary.SpreadRecovery = 4.5

SWEP.ChangeStateAccuracyMultiplier = 1.5 --1.5
SWEP.CrouchAccuracyMultiplier = 0.65 --0.5
SWEP.JumpAccuracyMultiplier = 2.0 --2
SWEP.WalkAccuracyMultiplier = 1.35 --1.35

--[Bash]--
SWEP.Secondary.BashDamage = 35
SWEP.Secondary.BashSound = Sound("TFA_CODWW2_MELEE.SwingLrg")
SWEP.Secondary.BashHitSound = Sound("TFA_CODWW2_MELEE.Hit")
SWEP.Secondary.BashHitSound_Flesh = Sound("TFA_CODWW2_MELEE.HitPlr")
SWEP.Secondary.BashLength = 50
SWEP.Secondary.BashDelay = 0.2
SWEP.Secondary.BashDamageType = DMG_CLUB
SWEP.Secondary.BashInterrupt = true

--[Iron Sights]--
SWEP.IronBobMult 	 = 0.065
SWEP.IronBobMultWalk = 0.065
SWEP.data = {}
SWEP.data.ironsights = 1
SWEP.IronInSound = "TFA_CODWW2_GEN.AdsUp"
SWEP.IronOutSound = "TFA_CODWW2_GEN.AdsDown"
SWEP.Secondary.IronFOV = 70
SWEP.IronSightsPos = Vector(-3.595, -3, -0.11)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.IronSightsPos_NYDAR = Vector(-3.595, -3, 0.14)
SWEP.IronSightsAng_NYDAR = Vector(0, 0, 0)
SWEP.IronSightsPos_ACOG = Vector(-3.589, -5, 0.405)
SWEP.IronSightsAng_ACOG = Vector(0, 0, 0)
SWEP.IronSightTime = 0.35

--[Shells]--
SWEP.LuaShellEject = true
SWEP.LuaShellEffect = "ShellEject"
SWEP.LuaShellModel = "models/entities/tfa_codww2/shells/fx_556.mdl"
SWEP.LuaShellSound = "TFA_CODWW2_SHELLS.Large"
SWEP.LuaShellScale = 1.1
SWEP.LuaShellEjectDelay = 0
SWEP.ShellAttachment = "0"
SWEP.EjectionSmokeEnabled = true

--[Jamming]-- LMG
SWEP.CanJam = true
SWEP.JamChance = 0.02
SWEP.JamFactor = 0.03

--[Misc]--
SWEP.AmmoTypeStrings = {["ar2"] = "7.92×57mm Mauser"}
SWEP.FireModeSound = "TFA_CODWW2_GEN.Switch"
SWEP.Primary.PickupSound = "TFA_CODWW2_PICKUP.Ammo"
SWEP.InspectPos = Vector(10, -4, -2)
SWEP.InspectAng = Vector(24, 42, 16)
SWEP.MoveSpeed = 0.88
SWEP.IronSightsMoveSpeed = SWEP.MoveSpeed * 0.8
SWEP.SafetyPos = Vector(1, -1, -0.5)
SWEP.SafetyAng = Vector(-20, 35, -25)
SWEP.TracerCount = 5

--[DInventory2]--
SWEP.DInv2_GridSizeX = 2
SWEP.DInv2_GridSizeY = 4
SWEP.DInv2_Volume = nil
SWEP.DInv2_Mass = 10

--[Tables]--
SWEP.StatusLengthOverride = {
    [ACT_VM_RELOAD] = 110 / 30,
	[ACT_VM_RELOAD_EMPTY] = 110 / 30,
	["reload_knife"] = 110 / 30,
	["reload_knife_empty"] = 110 / 30,
}

SWEP.SequenceLengthOverride = {
	[ACT_VM_DRAW_DEPLOYED] = 45 / 30,
	[ACT_VM_DRAW] = 30 / 30,
	[ACT_VM_DRAW_EMPTY] = 30 / 30,
	[ACT_VM_RELOAD] = 190 / 30,
	[ACT_VM_RELOAD_EMPTY] = 215 / 30,
	["reload_knife"] = 190 / 30,
	["reload_knife_empty"] = 215 / 30,
}

SWEP.SequenceRateOverride = {
	["sprint_in"] = 25 / 30,
	["sprint_loop"] = 25 / 30,
}

SWEP.SprintAnimation = {
	["in"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "sprint_in", --Number for act, String/Number for sequence
	},
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "sprint_loop", --Number for act, String/Number for sequence
		["is_idle"] = true
	},
	["out"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "sprint_out", --Number for act, String/Number for sequence
	}
}

SWEP.EventTable = {
[ACT_VM_DRAW_DEPLOYED] = {
{time = 1 / 30, type = "lua", value = function(self) self.Bodygroups_V[1] = math.Clamp(self:Clip1(),0,16) end},
{ ["time"] = 5 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MG81.FPO") },
},
[ACT_VM_DRAW] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_LRG.Raise") },
{time = 1 / 30, type = "lua", value = function(self) self.Bodygroups_V[1] = math.Clamp(self:Clip1(),0,16) end},
},
[ACT_VM_HOLSTER] = {
{ ["time"] = 2 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_LRG.Holster") },
},
[ACT_VM_PRIMARYATTACK] = {
{time = 1 / 30, type = "lua", value = function(self) self.Bodygroups_V[1] = math.Clamp(self:Clip1(),0,16) end},
},
[ACT_VM_IDLE_EMPTY] = {
{time = 1 / 30, type = "lua", value = function(self) self.Bodygroups_V[1] = math.Clamp(self:Clip1(),0,16) end},
{time = 1 / 30, type = "lua", value = function(self) self.Bodygroups_V[2] = math.Clamp(self:Clip1(),0,6) end},
},
[ACT_VM_PRIMARYATTACK_1] = {
{time = 1 / 30, type = "lua", value = function(self) self.Bodygroups_V[1] = math.Clamp(self:Clip1(),0,16) end},
},
[ACT_VM_RELOAD] = {
{ ["time"] = 20 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MG81.TacOpen") },
{time = 80 / 30, type = "lua", value = function(self) self.Bodygroups_V[1] = math.Clamp( math.Round( (self:Clip1() + self:Ammo1()) ),0,16) end},
{ ["time"] = 60 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MG81.TacBeltIn") },
{ ["time"] = 130 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MG81.TacClose") },
},
[ACT_VM_RELOAD_EMPTY] = {
{ ["time"] = 20 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MG81.Open") },
{time = 80 / 30, type = "lua", value = function(self) self.Bodygroups_V[1] = math.Clamp( math.Round( (self:Clip1() + self:Ammo1()) ),0,16) end},
{ ["time"] = 85 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MG81.BeltIn") },
{ ["time"] = 135 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MG81.Close") },
{ ["time"] = 165 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MG81.Charge") },
},
["inspect"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MG81.Inspect1") },
{ ["time"] = 105 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MG81.Inspect2") },
},
["inspect_epic"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MG81.EpicInspect1") },
{ ["time"] = 80 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MG81.EpicInspect2") },
},
["draw_first_knife"] = {
{ ["time"] = 5 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_BREDA.FPO") },
},
["draw_knife"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_LRG.Raise") },
{time = 1 / 30, type = "lua", value = function(self) self.Bodygroups_V[2] = math.Clamp(self:Clip1(),0,6) end},
},
["holster_knife"] = {
{ ["time"] = 2 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_LRG.Holster") },
{time = 1 / 30, type = "lua", value = function(self) self.Bodygroups_V[2] = math.Clamp(self:Clip1(),0,6) end},
},
["idle_knife_empty"] = {
{time = 1 / 30, type = "lua", value = function(self) self.Bodygroups_V[2] = math.Clamp(self:Clip1(),0,6) end},
{time = 1 / 30, type = "lua", value = function(self) self.Bodygroups_V[1] = math.Clamp(self:Clip1(),0,16) end},
},
["fire_knife"] = {
{time = 1 / 30, type = "lua", value = function(self) self.Bodygroups_V[2] = math.Clamp(self:Clip1(),0,6) end},
},
["fire_knife_ads"] = {
{time = 1 / 30, type = "lua", value = function(self) self.Bodygroups_V[2] = math.Clamp(self:Clip1(),0,6) end},
},
["reload_knife"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MG81.ExtTacOpen") },
{ ["time"] = 40 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MG81.ExtTacMagOut") },
{time = 55 / 30, type = "lua", value = function(self) self.Bodygroups_V[2] = math.Clamp( math.Round( (self:Clip1() + self:Ammo1()) ),0,6) end},
{ ["time"] = 100 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MG81.ExtTacMagIn") },
{ ["time"] = 145 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MG81.ExtTacClose") },
},
["reload_knife_empty"] = {
{ ["time"] = 5 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MG81.ExtOpen") },
{ ["time"] = 60 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MG81.ExtMagOut") },
{time = 55 / 30, type = "lua", value = function(self) self.Bodygroups_V[2] = math.Clamp( math.Round( (self:Clip1() + self:Ammo1()) ),0,6) end},
{ ["time"] = 100 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MG81.ExtMagIn") },
{ ["time"] = 135 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MG81.ExtClose") },
{ ["time"] = 170 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MG81.ExtCharge") },
},
["inspect_knife"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MG81.Inspect1") },
{ ["time"] = 65 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MG81.Inspect2") },
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
}

SWEP.VElements = {
	["sight_nydar"] = { type = "Model", model = "models/weapons/tfa_codww2/mg81/c_mg81_reflex.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["sight_nydar_lens"] = (TFA.CODWW2 and TFA.CODWW2.GetHoloSightReticle) and TFA.CODWW2.GetHoloSightReticle("sight_nydar") or nil,
	["scope_acog"] = { type = "Model", model = "models/weapons/tfa_codww2/mg81/c_mg81_4x.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["clip_default"] = { type = "Model", model = "models/weapons/tfa_codww2/mg81/c_mg81_clip.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["ext_clip"] = { type = "Model", model = "models/weapons/tfa_codww2/mg81/c_mg81_clip_ext.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["bipod_default"] = { type = "Model", model = "models/weapons/tfa_codww2/mg81/c_mg81_bipod.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["charm_default"] = { type = "Model", model = "models/weapons/tfa_codww2/mg81/c_mg81_charm.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["sight_default"] = { type = "Model", model = "models/weapons/tfa_codww2/mg81/c_mg81_sight.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
}
SWEP.WElements = {
	["bipod_default"] = { type = "Model", model = "models/weapons/tfa_codww2/mg81/w_mg81_bipod.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["sight_nydar"] = { type = "Model", model = "models/weapons/tfa_codww2/mg81/w_mg81_reflex.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["scope_acog"] = { type = "Model", model = "models/weapons/tfa_codww2/mg81/w_mg81_4x.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["sight_default"] = { type = "Model", model = "models/weapons/tfa_codww2/mg81/w_mg81_sight.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
}
SWEP.Attachments = {
	[2] = {atts = {"tfa_codww2_nydar", "tfa_codww2_4x"}, order = 2},
	[3] = {atts = {"tfa_codww2_xmag_lmg"}, order = 3},
	[4] = {atts = {"tfa_codww2_rifling", "tfa_codww2_steadyaim"}, order = 4},
	[5] = {atts = {"tfa_codww2_stock", "tfa_codww2_quickdraw", "tfa_codww2_grip"}, order = 5},
	[6] = {atts = {"tfa_codww2_rapidfire", "tfa_codww2_fmj"}, order = 6},
}

SWEP.AttachmentDependencies     = {}
SWEP.AttachmentExclusions       = {}
SWEP.AttachmentTableOverride    = {}
SWEP.AttachmentIconOverride     = {}

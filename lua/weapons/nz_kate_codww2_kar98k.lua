SWEP.Base = "tfa_codww2_base"
SWEP.Category = "nZR: WWII Kate Spawn Weapons"
SWEP.SubCategory = "Snipers"
SWEP.Spawnable = TFA_BASE_VERSION and TFA_BASE_VERSION >= 4.7
SWEP.AdminSpawnable = true
SWEP.UseHands = true
SWEP.Manufacturer = "Mauser"
SWEP.Type_Displayed = "Sniper Rifle"
SWEP.Purpose = "Bolt-action sniper rifle with built-in suppressor that offers one shot kill to torso and above."
SWEP.Author = "Olli, Fox, Mav"
SWEP.Slot = 4
SWEP.PrintName = "Kar98k"
SWEP.DrawCrosshair = true
SWEP.DrawCrosshairIronSights = false

--[Model]--
SWEP.ViewModel			= "models/weapons/tfa_codww2/kar98k/c_kar98k.mdl"
SWEP.ViewModelFOV = 65
SWEP.WorldModel			= "models/weapons/tfa_codww2/kar98k/w_kar98k.mdl"
SWEP.HoldType = "ar2"
SWEP.CameraAttachmentOffsets = {}
SWEP.CameraAttachmentScale = 2
SWEP.MuzzleAttachment = "1"
SWEP.VMPos = Vector(0, -1.5, 0)
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
SWEP.NZPaPName = "Langer Schuss"
SWEP.Ispackapunched = false

function SWEP:OnPaP()
self.Ispackapunched = true
self.MuzzleFlashEffect = "muz_pap"

self.Primary_TFA.ClipSize = 10
self.Primary_TFA.Damage = 3500
self.Primary_TFA.NumShots = 2
self.Primary_TFA.RPM = 260
self.Primary_TFA.DefaultClip  = 110
self.Primary_TFA.MaxAmmo = 100
self.Primary_TFA.Automatic = false
self:ClearStatCache()
return true
end

--[Gun Related]--
SWEP.Primary.Sound = "TFA_CODWW2_KAR98K.Punch.Delay"
SWEP.Primary.SoundLyr1 = "TFA_CODWW2_BREN.Trigger"
SWEP.Primary.SoundLyr2 = "TFA_CODWW2_KAR98K.Boom.Delay"
SWEP.Primary.SoundLyr3 = "TFA_CODWW2_KAR98K.Trans.Delay"
SWEP.Primary.SoundLyr4 = "TFA_CODWW2_KAR98K.Trans"
SWEP.Primary.SoundEchoTable = {
	[0] = Sound("TFA_CODWW2_TAIL.Int"),
	[256] = Sound("TFA_CODWW2_KAR98K.Ext")
}
SWEP.Primary.Sound_DryFire = "TFA_CODWW2_DRYFIRE.SNP"
SWEP.Primary.Sound_Blocked = "TFA_CODWW2_DRYFIRE.SNP"
SWEP.Primary.Ammo = "SniperPenetratedRound"
SWEP.Primary.Automatic = false
SWEP.Primary.RPM = 250
SWEP.Primary.RPM_Semi = nil
SWEP.Primary.RPM_Burst = nil
SWEP.NZHeadShotMultiplier = 2
SWEP.Primary.RPM_Displayed = 48
SWEP.Primary.RPM_Rapid = 600
SWEP.Primary.RPM_Displayed_Rapid = 50
SWEP.Primary.Damage = 75
SWEP.Primary.Knockback = 0
SWEP.Primary.NumShots = 1
SWEP.Primary.AmmoConsumption = 1
SWEP.Primary.ClipSize = 5
SWEP.Primary.ClipSize_Ext = 7
SWEP.Primary.DefaultClip = 55

--[Max Ammo Code]--
function SWEP:NZMaxAmmo()
    if CLIENT then return end

    self:GetOwner():SetAmmo(self.Primary.MaxAmmo, self:GetPrimaryAmmoType())
    self:SetClip1(self.Primary.ClipSize)
end

SWEP.Primary.MaxAmmo = 50

SWEP.Primary.DryFireDelay = 0.5
SWEP.DisableChambering = true
SWEP.FlashlightAttachment = 0
SWEP.FiresUnderwater = false

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
SWEP.CrouchRecoilMultiplier = 0.65 --0.65
SWEP.JumpRecoilMultiplier = 2.0 --1.3
SWEP.WallRecoilMultiplier = 1.35 --1.1

--[Spread Related]--
SWEP.Primary.Spread		  = 0.05
SWEP.Primary.IronAccuracy = 0.0001
SWEP.IronRecoilMultiplier = 0.5

SWEP.Primary.KickUp				= 1.0
SWEP.Primary.KickDown 			= 1.0
SWEP.Primary.KickHorizontal		= 0.3
SWEP.Primary.StaticRecoilFactor = 0.4

SWEP.Primary.SpreadMultiplierMax = 4
SWEP.Primary.SpreadIncrement = 1.5
SWEP.Primary.SpreadRecovery = 3

SWEP.ChangeStateAccuracyMultiplier = 1.5 --1.5
SWEP.CrouchAccuracyMultiplier = 1.0 --0.5
SWEP.JumpAccuracyMultiplier = 2.0 --2
SWEP.WalkAccuracyMultiplier = 1.5 --1.35

--[Bash]--
SWEP.Secondary.BashDamage = 35
SWEP.Secondary.BashSound = Sound("TFA_CODWW2_MELEE.SwingRfl")
SWEP.Secondary.BashHitSound = Sound("TFA_CODWW2_MELEE.Hit")
SWEP.Secondary.BashHitSound_Flesh = Sound("TFA_CODWW2_MELEE.HitPlr")
SWEP.Secondary.BashLength = 55
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
SWEP.Secondary.IronFOV = 65
SWEP.IronSightsPos = Vector(-4.6, -4.5, 1.33)
SWEP.IronSightsAng = Vector(0.1, 0, 0)
SWEP.IronSightsPos_7X = Vector(-4.6065, -4.5, 0.0785)
SWEP.IronSightsAng_7X = Vector(0, 0, 0)
SWEP.IronSightsPos_ACOG = Vector(-4.15, -7, 0.83)
SWEP.IronSightsAng_ACOG = Vector(0, 0, 0)
SWEP.IronSightTime = 0.4

--[Shells]--
SWEP.LuaShellEject = false
SWEP.LuaShellEffect = "ShellEject"
SWEP.LuaShellModel = "models/entities/tfa_codww2/shells/fx_556.mdl"
SWEP.LuaShellSound = "TFA_CODWW2_SHELLS.Large"
SWEP.LuaShellScale = 1.2
SWEP.LuaShellEjectDelay = 0
SWEP.ShellAttachment = "0"
SWEP.EjectionSmokeEnabled = false

--[Jamming]-- Sniper
SWEP.CanJam = true
SWEP.JamChance = 0.05
SWEP.JamFactor = 0.10

--[Misc]--
SWEP.AmmoTypeStrings = {sniperpenetratedround = "7.92×57mm Mauser"}
SWEP.FireModeSound = "TFA_CODWW2_GEN.Switch"
SWEP.Primary.PickupSound = "TFA_CODWW2_PICKUP.Ammo"
SWEP.InspectPos = Vector(10, -4, -2)
SWEP.InspectAng = Vector(24, 42, 16)
SWEP.MoveSpeed = 0.92
SWEP.IronSightsMoveSpeed = SWEP.MoveSpeed * 0.8
SWEP.SafetyPos = Vector(-1, -2, -0.5)
SWEP.SafetyAng = Vector(-15, 25, -20)
SWEP.TracerCount = 1

--[DInventory2]--
SWEP.DInv2_GridSizeX = 2
SWEP.DInv2_GridSizeY = 4
SWEP.DInv2_Volume = nil
SWEP.DInv2_Mass = 8

--[Animations]--
SWEP.Animations = {
	["reload_ext"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ,
		["value"] = "reload_ext"
	},
	["reload_ext_empty"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ,
		["value"] = "reload_ext_empty"
	},
}

SWEP.PumpAction = { -- Pump/bolt animations
	["type"] = TFA.Enum.ANIMATION_ACT,
	["value"] = ACT_VM_PULLBACK_HIGH,
	["value_is"] = ACT_VM_PULLBACK_LOW,
}

--[Tables]--
SWEP.StatusLengthOverride = {
	[ACT_VM_RELOAD] = 70 / 30,
	[ACT_VM_RELOAD_EMPTY] = 70 / 30,
	["reload_ext"] = 70 / 30,
	["reload_ext_empty"] = 90 / 30,
}

SWEP.SequenceLengthOverride = {
	[ACT_VM_PULLBACK_HIGH] = 35 / 30,
	[ACT_VM_PULLBACK_LOW] = 35 / 30,
	[ACT_VM_DRAW_DEPLOYED] = 40 / 30,
	[ACT_VM_RELOAD] = 100 / 30,
	[ACT_VM_RELOAD_EMPTY] = 100 / 30,
	[ACT_VM_DRAW] = 25 / 30,
	[ACT_VM_DRAW_EMPTY] = 25 / 30,
	["melee"] = 40 / 30,
	["melee_empty"] = 40 / 30,
	["reload_ext"] = 100 / 30,
}

SWEP.SequenceRateOverride = {
	["sprint_in"] = 25 / 30,
	["sprint_loop"] = 25 / 30,
	[ACT_VM_PULLBACK_HIGH] = 35 / 30,
	[ACT_VM_PULLBACK_LOW] = 35 / 30,
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
{ ["time"] = 10 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_KAR98K.FPO") },
},
[ACT_VM_DRAW] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_RIFLE.Raise") },
},
[ACT_VM_HOLSTER] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_RIFLE.Holster") },
},
[ACT_VM_DRAW_EMPTY] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_RIFLE.Raise") },
},
[ACT_VM_HOLSTER_EMPTY] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_RIFLE.Holster") },
},
[ACT_VM_PULLBACK_HIGH] = {
{ ["time"] = 5 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_KAR98K.CycleOpen") },
{ ["time"] = 15 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_KAR98K.CycleClose") },
{ ["time"] = 10 / 30, ["type"] = "lua", value = function(self) self:EventShell() end, client = true, server = true},
},
[ACT_VM_PULLBACK_LOW] = {
{ ["time"] = 5 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_KAR98K.CycleAdsOpen") },
{ ["time"] = 15 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_KAR98K.CycleAdsClose") },
{ ["time"] = 10 / 30, ["type"] = "lua", value = function(self) self:EventShell() end, client = true, server = true},
},
[ACT_VM_RELOAD] = {
{ ["time"] = 5 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_KAR98K.TacOpen") },
{ ["time"] = 55 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_KAR98K.TacClipin") },
{ ["time"] = 70 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_KAR98K.TacClose") },
},
[ACT_VM_RELOAD_EMPTY] = {
{ ["time"] = 5 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_KAR98K.EmptyOpen") },
{ ["time"] = 55 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_KAR98K.EmptyClipin") },
{ ["time"] = 75 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_KAR98K.EmptyClose") },
},
["reload_ext"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_KAR98K.TacExtMagout") },
{ ["time"] = 65 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_KAR98K.TacExtMagin") },
},
["reload_ext_empty"] = {
{ ["time"] = 5 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_KAR98K.EmptyExtOpen") },
{ ["time"] = 40 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_KAR98K.EmptyExtMagout") },
{ ["time"] = 85 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_KAR98K.EmptyExtMagin") },
{ ["time"] = 100 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_KAR98K.EmptyExtClose") },
},
[ACT_VM_FIDGET] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_KAR98K.Inspect1") },
{ ["time"] = 50 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_KAR98K.Inspect2") },
},
["inspect_empty"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_KAR98K.Inspect1") },
{ ["time"] = 50 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_KAR98K.Inspect2") },
},
}

--[Shit]--
SWEP.AllowViewAttachment = true --Allow the view to sway based on weapon attachment while reloading or drawing, IF THE CLIENT HAS IT ENABLED IN THEIR CONVARS.
SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_ANI -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_HYBRID -- ANI = mdl, HYBRID = lua but continue idle, Lua = stop mdl animation
SWEP.Idle_Mode = TFA.Enum.IDLE_BOTH --TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA
SWEP.Idle_Blend = 0.25 --Start an idle this far early into the end of a transition
SWEP.Idle_Smooth = 0.05 --Start an idle this far early into the end of another animation
SWEP.SprintBobMult = 0

--[Attachments]--
SWEP.ViewModelBoneMods = {
}

SWEP.VElements = {
	["scope_default"] = { type = "Model", model = "models/weapons/tfa_codww2/kar98k/c_kar98k_scope.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["scope_acog"] = { type = "Model", model = "models/weapons/tfa_codww2/kar98k/c_kar98k_4x.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["clip_default"] = { type = "Model", model = "models/weapons/tfa_codww2/kar98k/c_kar98k_clip.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["ext_clip"] = { type = "Model", model = "models/weapons/tfa_codww2/kar98k/c_kar98k_clip_ext.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["receiver_default"] = { type = "Model", model = "models/weapons/tfa_codww2/kar98k/c_kar98k_receiver.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["barrel_default"] = { type = "Model", model = "models/weapons/tfa_codww2/kar98k/c_kar98k_barrel.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["charm_default"] = { type = "Model", model = "models/weapons/tfa_codww2/kar98k/c_kar98k_charm.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["stock_default"] = { type = "Model", model = "models/weapons/tfa_codww2/kar98k/c_kar98k_stock.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["sight_default"] = { type = "Model", model = "models/weapons/tfa_codww2/kar98k/c_kar98k_sight.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
}
SWEP.WElements = {
	["scope_default"] = { type = "Model", model = "models/weapons/tfa_codww2/kar98k/w_kar98k_scope.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["scope_acog"] = { type = "Model", model = "models/weapons/tfa_codww2/kar98k/w_kar98k_4x.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["clip_default"] = { type = "Model", model = "models/weapons/tfa_codww2/kar98k/w_kar98k_clip.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["ext_clip"] = { type = "Model", model = "models/weapons/tfa_codww2/kar98k/w_kar98k_clip_ext.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["receiver_default"] = { type = "Model", model = "models/weapons/tfa_codww2/kar98k/w_kar98k_receiver.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["barrel_default"] = { type = "Model", model = "models/weapons/tfa_codww2/kar98k/w_kar98k_barrel.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["stock_default"] = { type = "Model", model = "models/weapons/tfa_codww2/kar98k/w_kar98k_stock.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
}
SWEP.Attachments = {
	[2] = {atts = {"tfa_codww2_xmag", "tfa_codww2_ballistic"}, order = 2},
	[3] = {atts = {"tfa_codww2_rapidfire_sg", "tfa_codww2_fmj"}, order = 3},
}

SWEP.AttachmentDependencies     = {}
SWEP.AttachmentExclusions       = {}
SWEP.AttachmentTableOverride    = {}
SWEP.AttachmentIconOverride     = {}

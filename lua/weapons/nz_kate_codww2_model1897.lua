SWEP.Base = "tfa_codww2_base"
SWEP.Category = "nZR: WWII Kate"
SWEP.SubCategory = "Shotguns"
SWEP.Spawnable = TFA_BASE_VERSION and TFA_BASE_VERSION >= 4.7
SWEP.AdminSpawnable = true
SWEP.UseHands = true
SWEP.Manufacturer = "Winchester"
SWEP.Type_Displayed = "Shotgun"
SWEP.Purpose = "Pump-action shotgun with high damage that delivers one hit kills in close quarters."
SWEP.Author = "Olli, Fox, Mav"
SWEP.Slot = 3
SWEP.PrintName = "Combat Shotgun"
SWEP.DrawCrosshair = true
SWEP.DrawCrosshairIronSights = false

--[NZombies]--
SWEP.NZPaPName = "Close Quarters Casualty"
SWEP.Ispackapunched = false

function SWEP:OnPaP()
self.Ispackapunched = true
self.MuzzleFlashEffect = "muz_pap"

self.Primary_TFA.ClipSize = 14
self.Primary_TFA.Damage = 330
self.Primary_TFA.NumShots = 8
self.Primary_TFA.RPM = 230
self.Primary_TFA.DefaultClip  = 154
self.Primary_TFA.MaxAmmo = 140
self.LoopedReloadInsertAmount = 2
self.Primary_TFA.Automatic = false
self:ClearStatCache()
return true
end

--[Model]--
SWEP.ViewModel			= "models/weapons/tfa_codww2/model1897/c_model1897.mdl"
SWEP.ViewModelFOV = 65
SWEP.WorldModel			= "models/weapons/tfa_codww2/model1897/w_model1897.mdl"
SWEP.HoldType = "shotgun"
SWEP.CameraAttachmentOffsets = {}
SWEP.CameraAttachmentScale = 2
SWEP.MuzzleAttachment = "1"
SWEP.VMPos = Vector(0, -1.5, 0)
SWEP.VMAng = Vector(0, 0, 0)
SWEP.VMPos_Additive = true

SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
        Pos = {
        Up = -4.5,
        Right = 1,
        Forward = 16.8,
        },
        Ang = {
		Up = 180,
        Right = 190,
        Forward = 0
        },
		Scale = 1.1
}

--[Gun Related]--
SWEP.Primary.Sound = "TFA_CODWW2_SHGN.GenHigh"
SWEP.Primary.SoundLyr1 = "TFA_CODWW2_WALTHER.Low"
SWEP.Primary.SoundLyr2 = "TFA_CODWW2_M97.ThickTrans"
SWEP.Primary.SoundLyr3 = "TFA_CODWW2_SVT.Lfe"
SWEP.Primary.SoundLyr4 = "TFA_CODWW2_PLAYER.Sub.extra_long"
SWEP.Primary.SoundEchoTable = {
	[0] = Sound("TFA_CODWW2_TAIL.Int"),
	[256] = Sound("TFA_CODWW2_M1897.Ext")
}
SWEP.Primary.Sound_DryFire = "TFA_CODWW2_DRYFIRE.SG"
SWEP.Primary.Sound_Blocked = "TFA_CODWW2_DRYFIRE.SG"
SWEP.Primary.Ammo = "buckshot"
SWEP.Primary.Automatic = false
SWEP.Primary.RPM = 220
SWEP.Primary.RPM_Semi = nil
SWEP.Primary.RPM_Burst = nil
SWEP.Primary.RPM_Displayed = 58
SWEP.NZHeadShotMultiplier = 2
SWEP.Primary.RPM_Rapid = 500
SWEP.Primary.RPM_Displayed_Rapid = 85
SWEP.Primary.Damage = 110
SWEP.Primary.Knockback = 0
SWEP.Primary.NumShots = 8
SWEP.Primary.NumShots_Incen = 14
SWEP.Primary.AmmoConsumption = 1
SWEP.Primary.ClipSize = 7
SWEP.Primary.ClipSize_Ext = 10
SWEP.Primary.DefaultClip = 77

--[Max Ammo Code]--
function SWEP:NZMaxAmmo()
    if CLIENT then return end

    self:GetOwner():SetAmmo(self.Primary.MaxAmmo, self:GetPrimaryAmmoType())
    self:SetClip1(self.Primary.ClipSize)
end

SWEP.Primary.MaxAmmo = 70

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
SWEP.DefaultFireMode = "1"
SWEP.FireModeName = nil

--[LowAmmo]--
SWEP.FireSoundAffectedByClipSize = true
SWEP.LowAmmoSoundThreshold = 0.33 --0.33
SWEP.LowAmmoSound = "TFA.LowAmmo.Shotgun"
SWEP.LastAmmoSound = "TFA.LowAmmo.Shotgun_Dry"

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
		{range = 12, damage = 1},
		{range = 15, damage = 0.75},
		{range = 20, damage = 0.75},
		{range = 22, damage = 0.55},
	}
}

--[Shotgun]--
SWEP.Shotgun = true
SWEP.ShotgunEmptyAnim = true
SWEP.ShotgunEmptyAnim_Shell = true
SWEP.ShotgunStartAnimShell = true

--[Recoil]--
SWEP.ViewModelPunchPitchMultiplier = 0.65 --0.5
SWEP.ViewModelPunchPitchMultiplier_IronSights = 0.09 --0.09

SWEP.ViewModelPunch_MaxVertialOffset				= 3 --3
SWEP.ViewModelPunch_MaxVertialOffset_IronSights		= 1.95 --1.95
SWEP.ViewModelPunch_VertialMultiplier				= 1.5 --1
SWEP.ViewModelPunch_VertialMultiplier_IronSights	= 0.25 --0.25

SWEP.ViewModelPunchYawMultiplier = 0.6 --0.6
SWEP.ViewModelPunchYawMultiplier_IronSights = 0.25 --0.25

SWEP.ChangeStateRecoilMultiplier = 1.3 --1.3
SWEP.CrouchRecoilMultiplier = 0.9 --0.65
SWEP.JumpRecoilMultiplier = 2.65 --1.3
SWEP.WallRecoilMultiplier = 1.25 --1.1

--[Spread Related]--
SWEP.Primary.Spread		  = .075
SWEP.Primary.IronAccuracy = .075
SWEP.IronRecoilMultiplier = 0.8

SWEP.Primary.KickUp				= 1.2
SWEP.Primary.KickDown 			= 1.0
SWEP.Primary.KickHorizontal		= 0.5
SWEP.Primary.StaticRecoilFactor = 0.4

SWEP.Primary.SpreadMultiplierMax = 3
SWEP.Primary.SpreadIncrement = 2
SWEP.Primary.SpreadRecovery = 2

SWEP.ChangeStateAccuracyMultiplier = 1.5 --1.5
SWEP.CrouchAccuracyMultiplier = 1.0 --0.5
SWEP.JumpAccuracyMultiplier = 1.5 --2
SWEP.WalkAccuracyMultiplier = 1.35 --1.35

--[Bash]--
SWEP.Secondary.BashDamage = 35
SWEP.Secondary.BashSound = Sound("TFA_CODWW2_MELEE.SwingRfl")
SWEP.Secondary.BashHitSound = Sound("TFA_CODWW2_MELEE.Hit")
SWEP.Secondary.BashHitSound_Flesh = Sound("TFA_CODWW2_MELEE.HitPlr")
SWEP.Secondary.BashLength = 54
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
SWEP.Secondary.IronFOV = 75
SWEP.IronSightsPos = Vector(-3.345, -2, 1.3)
SWEP.IronSightsAng = Vector(0.6, 0, 0)
SWEP.IronSightsPos_NYDAR = Vector(-3.345, -2, 0.915)
SWEP.IronSightsAng_NYDAR = Vector(0, 0, 0)
SWEP.IronSightTime = 0.3

--[Shells]--
SWEP.LuaShellEject = false
SWEP.LuaShellEffect = "ShellEject"
SWEP.LuaShellModel = "models/entities/tfa_codww2/shells/fx_12gauge.mdl"
SWEP.LuaShellSound = "TFA_CODWW2_SHELLS.Shotgun"
SWEP.LuaShellScale = 1.2
SWEP.LuaShellEjectDelay = 0
SWEP.ShellAttachment = "0"
SWEP.EjectionSmokeEnabled = false

--[Jamming]-- Pump
SWEP.CanJam = true
SWEP.JamChance = 0.03
SWEP.JamFactor = 0.15

--[Misc]--
SWEP.AmmoTypeStrings = {["buckshot"] = "12 Gauge"}
SWEP.FireModeSound = "TFA_CODWW2_GEN.Switch"
SWEP.Primary.PickupSound = "TFA_CODWW2_PICKUP.Ammo"
SWEP.InspectPos = Vector(10, -7, -2)
SWEP.InspectAng = Vector(24, 42, 16)
SWEP.MoveSpeed = 0.95
SWEP.IronSightsMoveSpeed = SWEP.MoveSpeed * 0.8
SWEP.SafetyPos = Vector(3.2, -2, -1)
SWEP.SafetyAng = Vector(-17.5, 41.5, -20)
SWEP.TracerCount = 1

--[DInventory2]--
SWEP.DInv2_GridSizeX = 2
SWEP.DInv2_GridSizeY = 3
SWEP.DInv2_Volume = nil
SWEP.DInv2_Mass = 7

--[Animations]--
SWEP.Animations = {
	["rechamber_dragon"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ,
		["value"] = "rechamber_dragon"
	},
	["reload_start_dragon"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ,
		["value"] = "reload_start_dragon"
	},
	["reload_start_dragon_empty"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ,
		["value"] = "reload_start_dragon_empty"
	},
	["reload_loop_dragon"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ,
		["value"] = "reload_loop_dragon"
	},
	["reload_end_dragon"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ,
		["value"] = "reload_end_dragon"
	},
}

SWEP.PumpAction = { -- Pump/bolt animations
	["type"] = TFA.Enum.ANIMATION_ACT,
	["value"] = ACT_VM_PULLBACK_HIGH,
	["value_is"] = ACT_VM_PULLBACK_LOW,
}

--[Tables]--
SWEP.StatusLengthOverride = {
	["reload_start_dragon"] = 30 / 30,
	["reload_start_dragon_empty"] = 25 / 30,
	["reload_loop_dragon"] = 5 / 30,
}

SWEP.SequenceLengthOverride = {
	[ACT_VM_PULLBACK_HIGH] = 20 / 30,
	["reload_start_dragon"] = 42 / 30,
	["reload_start_dragon_empty"] = 40 / 30,
	["reload_loop_dragon"] = 15 / 30,
}

SWEP.SequenceRateOverride = {
	[ACT_SHOTGUN_RELOAD_START] = 40 / 30,
	[ACT_VM_RELOAD_EMPTY] = 40 / 30,
	[ACT_VM_RELOAD] = 40 / 30,
	[ACT_SHOTGUN_RELOAD_FINISH] = 40 / 30,
	["reload_start_dragon"] = 45 / 30,
	["reload_loop_dragon"] = 40 / 30,
	["reload_start_dragon_empty"] = 45 / 30,
	["sprint_in"] = 25 / 30,
	["sprint_loop"] = 25 / 30,
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
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.FPOFoley") },
{ ["time"] = 10 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.FPOGrab") },
{ ["time"] = 25 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.FPOCharge") },
},
[ACT_VM_DRAW] = {
{ ["time"] = 5 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.Draw") },
},
[ACT_VM_DRAW_EMPTY] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.Draw") },
},
[ACT_VM_HOLSTER] = {
{ ["time"] = 2 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MED.Holster") },
},
[ACT_VM_HOLSTER_EMPTY] = {
{ ["time"] = 2 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MED.Holster") },
},
[ACT_VM_PULLBACK_HIGH] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.Rack") },
{ ["time"] = 5 / 30, ["type"] = "lua", value = function(self) self:EventShell() end, client = true, server = true},
},
[ACT_VM_PULLBACK_LOW] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.Rack") },
{ ["time"] = 5 / 30, ["type"] = "lua", value = function(self) self:EventShell() end, client = true, server = true},
},
[ACT_SHOTGUN_RELOAD_START] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.ADSFoley") },
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.ShellStart") },
{ ["time"] = 30 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.ShellIn") },
},
[ACT_VM_RELOAD_EMPTY] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.ADSFoley") },
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.ShellStart") },
{ ["time"] = 30 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.ShellIn") },
},
[ACT_VM_RELOAD] = {
{ ["time"] = 5 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.ShellIn") },
},
[ACT_SHOTGUN_RELOAD_FINISH] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.EndStart") },
{ ["time"] = 10 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.EndPump") },
{ ["time"] = 15 / 30, ["type"] = "lua", value = function(self) self:EventShell() end, client = true, server = true},
},
[ACT_VM_FIDGET] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.Inspect1") },
{ ["time"] = 50 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.Inspect2") },
},
["inspect_empty"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.Inspect1") },
{ ["time"] = 50 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.Inspect2") },
},
["reload_start_dragon_empty"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.DRGStart") },
{ ["time"] = 30 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.DRGClose") },
},
["reload_start_dragon"] = {
{ ["time"] = 25 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.ShellIn") },
},
["reload_loop_dragon"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.ShellIn") },
},
["reload_end_dragon"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.ADSFoley") },
},
["rechamber_dragon"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.Rack") },
{ ["time"] = 4 / 30, ["type"] = "lua", value = function(self) self:EventShell() end, client = true, server = true},
{ ["time"] = 12 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.Rack") },
{ ["time"] = 15 / 30, ["type"] = "lua", value = function(self) self:EventShell() end, client = true, server = true},
{ ["time"] = 24 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.Rack") },
{ ["time"] = 27 / 30, ["type"] = "lua", value = function(self) self:EventShell() end, client = true, server = true},
{ ["time"] = 36 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.Rack") },
{ ["time"] = 39 / 30, ["type"] = "lua", value = function(self) self:EventShell() end, client = true, server = true},
{ ["time"] = 49 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.Rack") },
{ ["time"] = 51 / 30, ["type"] = "lua", value = function(self) self:EventShell() end, client = true, server = true},
{ ["time"] = 62 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.Rack") },
{ ["time"] = 63 / 30, ["type"] = "lua", value = function(self) self:EventShell() end, client = true, server = true},
{ ["time"] = 74 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M1897.Rack") },
{ ["time"] = 75 / 30, ["type"] = "lua", value = function(self) self:EventShell() end, client = true, server = true},
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
	["sight_nydar"] = { type = "Model", model = "models/weapons/tfa_codww2/model1897/c_model1897_reflex.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["sight_nydar_lens"] = (TFA.CODWW2 and TFA.CODWW2.GetHoloSightReticle) and TFA.CODWW2.GetHoloSightReticle("sight_nydar") or nil,
	["clip_default"] = { type = "Model", model = "models/weapons/tfa_codww2/model1897/c_model1897_clip.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["ext_clip"] = { type = "Model", model = "models/weapons/tfa_codww2/model1897/c_model1897_clip_ext.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["receiver_default"] = { type = "Model", model = "models/weapons/tfa_codww2/model1897/c_model1897_receiver.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["barrel_default"] = { type = "Model", model = "models/weapons/tfa_codww2/model1897/c_model1897_barrel.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["charm_default"] = { type = "Model", model = "models/weapons/tfa_codww2/model1897/c_model1897_charm.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["sight_default"] = { type = "Model", model = "models/weapons/tfa_codww2/model1897/c_model1897_sight.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["stock_default"] = { type = "Model", model = "models/weapons/tfa_codww2/model1897/c_model1897_stock.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["shell_default"] = { type = "Model", model = "models/weapons/tfa_codww2/model1897/c_model1897_shell_incen.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["shell_incen"] = { type = "Model", model = "models/weapons/tfa_codww2/model1897/c_model1897_shell.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
}
SWEP.WElements = {
	["clip_default"] = { type = "Model", model = "models/weapons/tfa_codww2/model1897/w_model1897_clip.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["ext_clip"] = { type = "Model", model = "models/weapons/tfa_codww2/model1897/w_model1897_clip_ext.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["receiver_default"] = { type = "Model", model = "models/weapons/tfa_codww2/model1897/w_model1897_receiver.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["barrel_default"] = { type = "Model", model = "models/weapons/tfa_codww2/model1897/w_model1897_barrel.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["sight_default"] = { type = "Model", model = "models/weapons/tfa_codww2/model1897/w_model1897_sight.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["stock_default"] = { type = "Model", model = "models/weapons/tfa_codww2/model1897/w_model1897_stock.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["sight_nydar"] = { type = "Model", model = "models/weapons/tfa_codww2/model1897/w_model1897_reflex.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
}
SWEP.Attachments = {
	[2] = {atts = {"tfa_codww2_nydar"}, order = 2},
	[3] = {atts = {"tfa_codww2_xmag_noani"}, order = 3},
	[4] = {atts = {"tfa_codww2_rifling", "tfa_codww2_steadyaim"}, order = 4},
	[5] = {atts = {"tfa_codww2_stock", "tfa_codww2_quickdraw", "tfa_codww2_grip"}, order = 5},
	[6] = {atts = {"tfa_codww2_rapidfire_sg", "tfa_codww2_incenshells"}, order = 6},
}

SWEP.AttachmentDependencies		= {}
SWEP.AttachmentExclusions		= {}
SWEP.AttachmentTableOverride	= {}
SWEP.AttachmentIconOverride		= {}

--[Firebullets]-- please send help
DEFINE_BASECLASS( SWEP.Base )

local function PlayChosenAnimation(self, typev, tanim, ...)
	local fnName = typev == TFA.Enum.ANIMATION_SEQ and "SendViewModelSeq" or "SendViewModelAnim"
	local a, b = self[fnName](self, tanim, ...)
	return a, b, typev
end

SWEP.PlayChosenAnimation = PlayChosenAnimation

function SWEP:SetupDataTables()
	BaseClass.SetupDataTables(self)
	
	self:NetworkVarTFA("Int", "ShellsInitial")
	self:NetworkVarTFA("Int", "ShellsMax")
	self:NetworkVarTFA("Int", "ShellsMaxEnd")
end

function SWEP:Initialize()
	BaseClass.Initialize(self)

	self:SetShellsInitial(0)
	self:SetShellsMax(7)
	self:SetShellsMaxEnd(8)
end

function SWEP:ChooseReloadAnim()
	local self2 = self:GetTable()
	if not self:VMIV() then return false, 0 end

	if self.AttachmentCache["tfa_codww2_incenshells"] and IsFirstTimePredicted() then
		self:SetShellsInitial(math.Approach(self:GetShellsInitial(), self:GetShellsMaxEnd(), 1))
	end
	
	if self.AttachmentCache["tfa_codww2_incenshells"] and self:GetShellsInitial() == (self:GetShellsMax() - 1) and IsFirstTimePredicted() then
		self:SetReloadLoopCancel(true)
	end
	
	local typev, tanim
	if self:GetActivityEnabled(ACT_VM_RELOAD_SILENCED) and self:GetSilenced() then
        typev, tanim = self:ChooseAnimation("reload_silenced")
    elseif self:GetActivityEnabled(ACT_VM_RELOAD_EMPTY) and (self:Clip1() == 0 or self:IsJammed())and not self.Shotgun then
        if self:GetShellsInitial() < self:GetShellsMax() and self.AttachmentCache["tfa_codww2_incenshells"] then
            typev, tanim = self:ChooseAnimation("reload_ext_empty")
        else
            typev, tanim = self:ChooseAnimation("reload_empty")
        end
    else
        if self:GetShellsInitial() < self:GetShellsMax() and self.AttachmentCache["tfa_codww2_incenshells"] then
			typev, tanim = self:ChooseAnimation("reload_loop_dragon")
        else
            typev, tanim = self:ChooseAnimation("reload")
        end
    end

	local fac = 1

	if self:GetStatL("LoopedReload") and self:GetStatL("LoopedReloadInsertTime") then
		fac = self:GetStatL("LoopedReloadInsertTime")
	end

	self:SetAnimCycle(self2.ViewModelFlip and 0 or 1)
	self2.AnimCycle = self:GetAnimCycle()

	return PlayChosenAnimation(self, typev, tanim, fac, fac ~= 1)
end

function SWEP:ChooseShotgunReloadAnim()
    if not self:VMIV() then return false, 0 end
	
    local typev, tanim
    if self:GetActivityEnabled(ACT_VM_RELOAD_SILENCED) and self:GetSilenced() then
        typev, tanim = self:ChooseAnimation("reload_silenced")
	elseif self:GetActivityEnabled(ACT_VM_RELOAD_EMPTY) and self.ShotgunEmptyAnim and (self:Clip1() == 0 or self:IsJammed()) then
        if self:GetShellsInitial() < self:GetShellsMax() and self.AttachmentCache["tfa_codww2_incenshells"] then
            typev, tanim = self:ChooseAnimation("reload_start_dragon_empty")
        else
            typev, tanim = self:ChooseAnimation("reload_empty")
        end
	else
        if self:GetShellsInitial() < self:GetShellsMax() and self.AttachmentCache["tfa_codww2_incenshells"] then
            typev, tanim = self:ChooseAnimation("reload_start_dragon")
        else
            typev, tanim = self:ChooseAnimation("reload_shotgun_start")
        end
    end

	return PlayChosenAnimation(self, typev, tanim)
end

function SWEP:ChooseShotgunPumpAnim()
	if not self:VMIV() then return false, 0 end

	if self.AttachmentCache["tfa_codww2_incenshells"] and IsFirstTimePredicted() then
		self:SetShellsInitial(math.Approach(self:GetShellsInitial(), self:GetShellsMaxEnd(), 1))
	end
	
	local typev, tanim
	if self:GetShellsInitial() <= 7 and self.AttachmentCache["tfa_codww2_incenshells"] and self:GetStat("Animations." .. "reload_end_dragon") then
		typev, tanim = self:ChooseAnimation("reload_end_dragon")
	else
		typev, tanim = self:ChooseAnimation("reload_shotgun_finish")
	end

	return PlayChosenAnimation(self, typev, tanim)
end
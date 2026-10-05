SWEP.Base = "tfa_codww2_base"
SWEP.Category = "nZR: WWII Kate"
SWEP.SubCategory = "Shotguns"
SWEP.Spawnable = TFA_BASE_VERSION and TFA_BASE_VERSION >= 4.7
SWEP.AdminSpawnable = true
SWEP.UseHands = true
SWEP.Manufacturer = "Sauer & Sohn"
SWEP.Type_Displayed = "Shotgun"
SWEP.Purpose = "Dual barrel shotgun that delivers two quick wide-spread shells."
SWEP.Author = "Olli, Fox, Mav"
SWEP.Slot = 3
SWEP.PrintName = "M30 Luftwaffe Drilling"
SWEP.DrawCrosshair = true
SWEP.DrawCrosshairIronSights = false

--[NZombies]--
SWEP.NZPaPName = "Langer Stock"
SWEP.Ispackapunched = false

function SWEP:OnPaP()
self.Ispackapunched = true
self.MuzzleFlashEffect = "muz_pap"

self.Primary_TFA.ClipSize = 4
self.Primary_TFA.Damage = 375
self.Primary_TFA.NumShots = 8
self.Primary_TFA.RPM = 160
self.Primary_TFA.DefaultClip  = 44
self.Primary_TFA.MaxAmmo = 40
self.FireModes = {
    "2Burst"
}  
self.Primary_TFA.Automatic = false
self:ClearStatCache()
return true
end

--[Model]--
SWEP.ViewModel			= "models/weapons/tfa_codww2/m30/c_m30.mdl"
SWEP.ViewModelFOV = 65
SWEP.WorldModel			= "models/weapons/tfa_codww2/m30/w_m30.mdl"
SWEP.HoldType = "shotgun"
SWEP.CameraAttachmentOffsets = {}
SWEP.CameraAttachmentScale = 2
SWEP.MuzzleAttachment = "1"
SWEP.VMPos = Vector(0, -1.75, 0)
SWEP.VMAng = Vector(0, 0, 0)
SWEP.VMPos_Additive = true

SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
        Pos = {
        Up = -4.6,
        Right = 1,
        Forward = 13.5,
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
SWEP.Primary.SoundLyr1 = "TFA_CODWW2_SHGN.HighSnap"
SWEP.Primary.SoundLyr2 = "TFA_CODWW2_SHGN.GenBlast"
SWEP.Primary.SoundLyr3 = "TFA_CODWW2_SHGN.DeepBlast"
SWEP.Primary.SoundLyr4 = "TFA_CODWW2_SHGN.MidBlast"
SWEP.Primary.SoundLyr5 = "TFA_CODWW2_SHGN.Lfe"
SWEP.Primary.SoundLyr6 = "TFA_CODWW2_PLAYER.Sub.extra_short"
SWEP.Primary.SoundEchoTable = {
	[0] = Sound("TFA_CODWW2_TAIL.Int"),
	[256] = Sound("TFA_CODWW2_M30.Ext")
}
SWEP.Primary.Sound_DryFire = "TFA_CODWW2_DRYFIRE.SG"
SWEP.Primary.Sound_Blocked = "TFA_CODWW2_DRYFIRE.SG"
SWEP.Primary.Ammo = "buckshot"
SWEP.Primary.Automatic = false
SWEP.Primary.RPM = 150
SWEP.NZHeadShotMultiplier = 2
SWEP.Primary.RPM_Semi = nil
SWEP.Primary.RPM_Burst = nil
SWEP.Primary.RPM_Rapid = 160
SWEP.Primary.Damage = 125
SWEP.Primary.Knockback = 0
SWEP.Primary.NumShots = 8
SWEP.Primary.NumShots_Incen = 14
SWEP.Primary.AmmoConsumption = 1
SWEP.Primary.ClipSize = 2
SWEP.Primary.DefaultClip = 42

--[Max Ammo Code]--
function SWEP:NZMaxAmmo()
    if CLIENT then return end

    self:GetOwner():SetAmmo(self.Primary.MaxAmmo, self:GetPrimaryAmmoType())
    self:SetClip1(self.Primary.ClipSize)
end

SWEP.Primary.MaxAmmo = 40

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
SWEP.FireSoundAffectedByClipSize = false
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
		{range = 20, damage = 1.0},
		{range = 22, damage = 0.4},
	}
}

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
SWEP.Primary.Spread		  = .05
SWEP.Primary.IronAccuracy = .05
SWEP.IronRecoilMultiplier = 0.7

SWEP.Primary.KickUp				= 1.0
SWEP.Primary.KickDown 			= 1.0
SWEP.Primary.KickHorizontal		= 0.4
SWEP.Primary.StaticRecoilFactor = 0.4

SWEP.Primary.SpreadMultiplierMax = 3
SWEP.Primary.SpreadIncrement = 2
SWEP.Primary.SpreadRecovery = 3

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
SWEP.IronSightsPos = Vector(-3.245, -1, 1.28)
SWEP.IronSightsAng = Vector(0.4, 0, 0)
SWEP.IronSightsPos_NYDAR = Vector(-3.244, -1, 0.12)
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

--[Tables]--
SWEP.StatusLengthOverride = {
	["reload"] = 65 / 30,
	["reload_empty"] = 90 / 30,
	["reload_rifle"] = 65 / 30,
}

SWEP.SequenceLengthOverride = {
	["reload"] = 95 / 30,
	["reload_empty"] = 120 / 30,
	["reload_rifle"] = 95 / 30,
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
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M30.FPO") },
},
[ACT_VM_DRAW] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M30.Draw") },
},
[ACT_VM_HOLSTER] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MED.Holster") },
},
[ACT_VM_RELOAD] = {
{ ["time"] = 10 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M30.TacOpen") },
{ ["time"] = 25 / 30, ["type"] = "lua", value = function(self) self:EventShell() end, client = true, server = true},
{ ["time"] = 50 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M30.TacInsert") },
{ ["time"] = 75 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M30.TacClose") },
},
[ACT_VM_RELOAD_EMPTY] = {
{ ["time"] = 10 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M30.EmptyOpen") },
{ ["time"] = 25 / 30, ["type"] = "lua", value = function(self) self:EventShell() end, client = true, server = true},
{ ["time"] = 25 / 30, ["type"] = "lua", value = function(self) self:EventShell() end, client = true, server = true},
{ ["time"] = 50 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M30.EmptyInsert") },
{ ["time"] = 100 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M30.EmptyClose") },
},
["reload_rifle"] = {
{ ["time"] = 10 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M30.RifleOpen") },
{ ["time"] = 50 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M30.RifleChamber") },
{ ["time"] = 75 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M30.RifleClose") },
},
[ACT_VM_FIDGET] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M30.Inspect1") },
{ ["time"] = 40 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M30.Inspect2") },
},
["inspect_rifle"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M30.Inspect1") },
{ ["time"] = 40 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M30.Inspect2") },
},
["idle_to_rifle"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M30.SwitchOn") },
},
["rifle_to_idle"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_M30.SwitchOFF") },
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
	["sight_nydar"] = { type = "Model", model = "models/weapons/tfa_codww2/m30/c_m30_reflex.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["sight_nydar_lens"] = (TFA.CODWW2 and TFA.CODWW2.GetHoloSightReticle) and TFA.CODWW2.GetHoloSightReticle("sight_nydar") or nil,
	["shell_default"] = { type = "Model", model = "models/weapons/tfa_codww2/m30/c_m30_clip.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["shell_incen"] = { type = "Model", model = "models/weapons/tfa_codww2/m30/c_m30_clip_incen.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["receiver_default"] = { type = "Model", model = "models/weapons/tfa_codww2/m30/c_m30_receiver.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["barrel_default"] = { type = "Model", model = "models/weapons/tfa_codww2/m30/c_m30_barrel.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["charm_default"] = { type = "Model", model = "models/weapons/tfa_codww2/m30/c_m30_charm.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["stock_default"] = { type = "Model", model = "models/weapons/tfa_codww2/m30/c_m30_stock.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["sights_default"] = { type = "Model", model = "models/weapons/tfa_codww2/m30/c_m30_sight.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
}
SWEP.WElements = {
	["receiver_default"] = { type = "Model", model = "models/weapons/tfa_codww2/m30/w_m30_receiver.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["barrel_default"] = { type = "Model", model = "models/weapons/tfa_codww2/m30/w_m30_barrel.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["stock_default"] = { type = "Model", model = "models/weapons/tfa_codww2/m30/w_m30_stock.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["sight_nydar"] = { type = "Model", model = "models/weapons/tfa_codww2/m30/w_m30_reflex.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["sights_default"] = { type = "Model", model = "models/weapons/tfa_codww2/m30/w_m30_sight.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
}
SWEP.Attachments = {
	[2] = {atts = {"tfa_codww2_nydar"}, order = 2},
	[4] = {atts = {"tfa_codww2_rifling", "tfa_codww2_steadyaim"}, order = 4},
	[5] = {atts = {"tfa_codww2_stock", "tfa_codww2_quickdraw", "tfa_codww2_grip"}, order = 5},
	[6] = {atts = {"tfa_codww2_rapidfire", "tfa_codww2_incenshells", "tfa_codww2_riflebullet"}, order = 6},
}

SWEP.AttachmentDependencies     = {}
SWEP.AttachmentExclusions       = {}
SWEP.AttachmentTableOverride    = {}
SWEP.AttachmentIconOverride     = {}

--[M30]-- (credit to dbot and cso)
DEFINE_BASECLASS( SWEP.Base )

SWEP.Secondary.ClipSize = 1
SWEP.Secondary.DefaultClip = 0
SWEP.Secondary.AmmoConsumption = 1
SWEP.Secondary.Ammo = "SniperPenetratedRound"
SWEP.Secondary.Sound = "TFA_CODWW2_WALTHER.High"
SWEP.Secondary.Damage = 108

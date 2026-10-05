SWEP.Base = "tfa_codww2_base"
SWEP.Category = "nZR: WWII Kate"
SWEP.SubCategory = "Submachine Guns"
SWEP.Spawnable = TFA_BASE_VERSION and TFA_BASE_VERSION >= 4.7
SWEP.AdminSpawnable = true
SWEP.UseHands = true
SWEP.Manufacturer = "MAS"
SWEP.Type_Displayed = "Submachine Gun"
SWEP.Purpose = "Automatic SMG with a large magazine and modest damage. Fastest aim down sight in class."
SWEP.Author = "Olli, Fox, Mav"
SWEP.Slot = 2
SWEP.PrintName = "M-38"
SWEP.DrawCrosshair = true
SWEP.DrawCrosshairIronSights = false

--[Model]--
SWEP.ViewModel			= "models/weapons/tfa_codww2/mas38/c_mas38.mdl"
SWEP.ViewModelFOV = 65
SWEP.WorldModel			= "models/weapons/tfa_codww2/mas38/w_mas38.mdl"
SWEP.HoldType = "rpg"
SWEP.CameraAttachmentOffsets = {}
SWEP.CameraAttachmentScale = 2
SWEP.MuzzleAttachment = "1"
SWEP.MuzzleAttachmentSilenced = "2"
SWEP.VMPos = Vector(0, -1, 0)
SWEP.VMAng = Vector(0, 0, 0)
SWEP.VMPos_Additive = true

SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
        Pos = {
        Up = -4,
        Right = 1,
        Forward = 16,
        },
        Ang = {
		Up = 180,
        Right = 190,
        Forward = 0
        },
		Scale = 1.1
}

--[NZombies]--
SWEP.NZPaPName = "MAS-SIVE SCHLONG"
SWEP.Ispackapunched = false

function SWEP:OnPaP()
self.Ispackapunched = true
self.MuzzleFlashEffect = "muz_pap"

self.Primary_TFA.ClipSize = 60
self.Primary_TFA.Damage = 207
self.Primary_TFA.NumShots = 2
self.Primary_TFA.RPM = 699
self.Primary_TFA.DefaultClip  = 660
self.Primary_TFA.MaxAmmo = 600
self.Primary_TFA.Automatic = true
self:ClearStatCache()
return true
end

--[Gun Related]--
SWEP.Primary.Sound = "TFA_CODWW2_MP28.Ext"
SWEP.Primary.SoundLyr1 = "TFA_CODWW2_MP28.NPC.Shot"
SWEP.Primary.SoundLyr2 = "TFA_CODWW2_STG44.Punch"
SWEP.Primary.SoundLyr3 = "TFA_CODWW2_EJECT.SMG"
SWEP.Primary.SilencedSound = "TFA_CODWW2_SUPP.SMG"
SWEP.Primary.SoundEchoTable = {
	[0] = Sound("TFA_CODWW2_TAIL.Int"),
	[256] = Sound("TFA_CODWW2_M1CARB.Ext")
}
SWEP.Primary.Sound_DryFire = "TFA_CODWW2_DRYFIRE.SMG"
SWEP.Primary.Sound_Blocked = "TFA_CODWW2_DRYFIRE.SMG"
SWEP.Primary.Ammo = "smg1"
SWEP.Primary.Automatic = true
SWEP.Primary.RPM = 689
SWEP.Primary.RPM_Semi = nil
SWEP.Primary.RPM_Burst = nil
SWEP.NZHeadShotMultiplier = 2
SWEP.Primary.RPM_Rapid = 740
SWEP.Primary.Damage = 69
SWEP.Primary.Knockback = 0
SWEP.Primary.NumShots = 1
SWEP.Primary.AmmoConsumption = 1
SWEP.Primary.ClipSize = 30
SWEP.Primary.ClipSize_Ext = 45
SWEP.Primary.DefaultClip = 330

--[Max Ammo Code]--
function SWEP:NZMaxAmmo()
    if CLIENT then return end

    self:GetOwner():SetAmmo(self.Primary.MaxAmmo, self:GetPrimaryAmmoType())
    self:SetClip1(self.Primary.ClipSize)
end

SWEP.Primary.MaxAmmo = 300

SWEP.Primary.DryFireDelay = 0.35
SWEP.DisableChambering = true
SWEP.FlashlightAttachment = 0
SWEP.FiresUnderwater = true

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
SWEP.LowAmmoSound = "TFA.LowAmmo.SMG"
SWEP.LastAmmoSound = "TFA.LowAmmo.SMG_Dry"

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
		{range = 13, damage = 1},
		{range = 15, damage = 0.91},
		{range = 22, damage = 0.91},
		{range = 25, damage = 0.75},
		{range = 36, damage = 0.75},
		{range = 38, damage = 0.6},
	}
}

--[Recoil]--
SWEP.ViewModelPunchPitchMultiplier = 0.5 --0.5
SWEP.ViewModelPunchPitchMultiplier_IronSights = 0.09 --0.09

SWEP.ViewModelPunch_MaxVertialOffset				= 2.5 --3
SWEP.ViewModelPunch_MaxVertialOffset_IronSights		= 1.95 --1.95
SWEP.ViewModelPunch_VertialMultiplier				= 1 --1
SWEP.ViewModelPunch_VertialMultiplier_IronSights	= 0.25 --0.25

SWEP.ViewModelPunchYawMultiplier = 0.6 --0.6
SWEP.ViewModelPunchYawMultiplier_IronSights = 0.25 --0.25

SWEP.ChangeStateRecoilMultiplier = 1.3 --1.3
SWEP.CrouchRecoilMultiplier = 0.8 --0.65
SWEP.JumpRecoilMultiplier = 1.3 --1.3
SWEP.WallRecoilMultiplier = 1.0 --1.1

--[Spread Related]--
SWEP.Primary.Spread		  = .02
SWEP.Primary.IronAccuracy = .01
SWEP.IronRecoilMultiplier = 0.7

SWEP.Primary.KickUp				= 0.4
SWEP.Primary.KickDown 			= 0.25
SWEP.Primary.KickHorizontal		= 0.2
SWEP.Primary.StaticRecoilFactor = 0.4

SWEP.Primary.SpreadMultiplierMax = 5
SWEP.Primary.SpreadIncrement = 1
SWEP.Primary.SpreadRecovery = 6

SWEP.ChangeStateAccuracyMultiplier = 1.5--1.5
SWEP.CrouchAccuracyMultiplier = 0.85 --0.5
SWEP.JumpAccuracyMultiplier = 3.5 --2
SWEP.WalkAccuracyMultiplier = 1.35 --1.35

--[Bash]--
SWEP.Secondary.BashDamage = 35
SWEP.Secondary.BashSound = Sound("TFA_CODWW2_MELEE.SwingSmg")
SWEP.Secondary.BashHitSound = Sound("TFA_CODWW2_MELEE.Hit")
SWEP.Secondary.BashHitSound_Flesh = Sound("TFA_CODWW2_MELEE.HitPlr")
SWEP.Secondary.BashLength = 45
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
SWEP.IronSightsPos = Vector(-3.725, -2, 1.45)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.IronSightsPos_NYDAR = Vector(-3.99, -1, 1.065)
SWEP.IronSightsAng_NYDAR = Vector(0, 0, 0)
SWEP.IronSightsPos_LENS = Vector(-3.722, -3, 1.443)
SWEP.IronSightsAng_LENS = Vector(0, 0, 0)
SWEP.IronSightTime = 0.3

--[Shells]--
SWEP.LuaShellEject = true
SWEP.LuaShellEffect = "ShellEject"
SWEP.LuaShellModel = "models/entities/tfa_codww2/shells/fx_9mm.mdl"
SWEP.LuaShellSound = "TFA_CODWW2_SHELLS.Small"
SWEP.LuaShellScale = 1.1
SWEP.LuaShellEjectDelay = 0
SWEP.ShellAttachment = "0"
SWEP.EjectionSmokeEnabled = true

--[Jamming]-- SMG
SWEP.CanJam = true
SWEP.JamChance = 0.02
SWEP.JamFactor = 0.06

--[Misc]--
SWEP.AmmoTypeStrings = {["smg1"] = "7.65mm Longue"}
SWEP.FireModeSound = "TFA_CODWW2_GEN.Switch"
SWEP.Primary.PickupSound = "TFA_CODWW2_PICKUP.Ammo"
SWEP.InspectPos = Vector(10, -4, -2)
SWEP.InspectAng = Vector(24, 42, 16)
SWEP.MoveSpeed = 1
SWEP.IronSightsMoveSpeed = SWEP.MoveSpeed * 0.8
SWEP.SafetyPos = Vector(-2.5, -2, 0)
SWEP.SafetyAng = Vector(-15, 10, -25)
SWEP.TracerCount = 3

--[DInventory2]--
SWEP.DInv2_GridSizeX = 2
SWEP.DInv2_GridSizeY = 3
SWEP.DInv2_Volume = nil
SWEP.DInv2_Mass = 5

--[Animations]--
SWEP.Animations = {
	["suppressor_remove"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ,
		["value"] = "suppressor_remove"
	},
	["suppressor_attach"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ,
		["value"] = "suppressor_attach"
	},
}

--[Tables]--
SWEP.StatusLengthOverride = {
    [ACT_VM_RELOAD] = 45 / 30,
	[ACT_VM_RELOAD_EMPTY] = 45 / 30,
	["reload_knife"] = 45 / 30,
	["reload_knife_empty"] = 45 / 30,
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
{ ["time"] = 5 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MAS38.FPOCharge") },
},
[ACT_VM_DRAW] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_SML.Raise") },
},
[ACT_VM_DRAW_EMPTY] = {
{ ["time"] = 2 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_SML.Raise") },
},
[ACT_VM_HOLSTER] = {
{ ["time"] = 2 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_SML.Holster") },
},
[ACT_VM_HOLSTER_EMPTY] = {
{ ["time"] = 2 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_SML.Holster") },
},
[ACT_VM_RELOAD] = {
{ ["time"] = 0 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MAS38.TacMagOut") },
{ ["time"] = 35 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MAS38.TacMagIn") },
},
[ACT_VM_RELOAD_EMPTY] = {
{ ["time"] = 0 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MAS38.MagOut") },
{ ["time"] = 35 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MAS38.MagIn") },
{ ["time"] = 65 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MAS38.Charge") },
},
["inspect"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MAS38.Inspect1") },
{ ["time"] = 55 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MAS38.Inspect2") },
},
["inspect_empty"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MAS38.Inspect1") },
{ ["time"] = 55 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_MAS38.Inspect2") },
},
["suppressor_attach"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PPSH.SuppOn") },
},
["suppressor_remove"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PPSH.SuppOff") },
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
	["sight_nydar"] = { type = "Model", model = "models/weapons/tfa_codww2/mas38/c_mas38_reflex.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["sight_nydar_lens"] = (TFA.CODWW2 and TFA.CODWW2.GetHoloSightReticle) and TFA.CODWW2.GetHoloSightReticle("sight_nydar") or nil,
	["lens_sight"] = { type = "Model", model = "models/weapons/tfa_codww2/attachments/sights/c_lens_sight.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["suppressor"] = { type = "Model", model = "models/weapons/tfa_codww2/attachments/suppressors/c_pistol_suppressor.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["clip_default"] = { type = "Model", model = "models/weapons/tfa_codww2/mas38/c_mas38_clip.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["ext_clip"] = { type = "Model", model = "models/weapons/tfa_codww2/mas38/c_mas38_clip_ext.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["sight_default"] = { type = "Model", model = "models/weapons/tfa_codww2/mas38/c_mas38_sight.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["charm_default"] = { type = "Model", model = "models/weapons/tfa_codww2/bar/c_bar_charm.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
}
SWEP.WElements = {
	["suppressor"] = { type = "Model", model = "models/weapons/tfa_codww2/attachments/suppressors/w_pistol_suppressor.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["clip_default"] = { type = "Model", model = "models/weapons/tfa_codww2/mas38/w_mas38_clip.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["ext_clip"] = { type = "Model", model = "models/weapons/tfa_codww2/mas38/w_mas38_clip_ext.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["sight_default"] = { type = "Model", model = "models/weapons/tfa_codww2/mas38/w_mas38_sight.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["sight_nydar"] = { type = "Model", model = "models/weapons/tfa_codww2/mas38/w_mas38_reflex.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
}
SWEP.Attachments = {
	[1] = {atts = {"tfa_codww2_supp"}, order = 1},
	[2] = {atts = {"tfa_codww2_nydar", "tfa_codww2_lens_sight"}, order = 2},
	[3] = {atts = {"tfa_codww2_xmag_noani"}, order = 3},
	[4] = {atts = {"tfa_codww2_rifling", "tfa_codww2_steadyaim"}, order = 4},
	[5] = {atts = {"tfa_codww2_stock", "tfa_codww2_quickdraw", "tfa_codww2_grip"}, order = 5},
	[6] = {atts = {"tfa_codww2_rapidfire", "tfa_codww2_fmj"}, order = 6},
}

SWEP.AttachmentDependencies     = {}
SWEP.AttachmentExclusions       = {}
SWEP.AttachmentTableOverride    = {}
SWEP.AttachmentIconOverride     = {}

SWEP.Base = "tfa_codww2_base"
SWEP.Category = "nZR: WWII Kate"
SWEP.SubCategory = "Light Machine Guns"
SWEP.Spawnable = TFA_BASE_VERSION and TFA_BASE_VERSION >= 4.7
SWEP.AdminSpawnable = true
SWEP.UseHands = true
SWEP.Manufacturer = "Mauser"
SWEP.Type_Displayed = "Light Machine Gun"
SWEP.Purpose = "The VMG bridges the gap between a rifle and an LMG. Its strong mobility traits and fastest reload in class allow players to play a bit more aggressively that usual with an LMG."
SWEP.Author = "Olli, Fox, Mav"
SWEP.Slot = 3
SWEP.PrintName = "VMG 1927"
SWEP.DrawCrosshair = true
SWEP.DrawCrosshairIronSights = false

--[Model]--
SWEP.ViewModel			= "models/weapons/tfa_codww2/vmg1927/c_vmg1927.mdl"
SWEP.ViewModelFOV = 65
SWEP.WorldModel			= "models/weapons/tfa_codww2/vmg1927/w_vmg1927.mdl"
SWEP.HoldType = "ar2"
SWEP.CameraAttachmentOffsets = {}
SWEP.CameraAttachmentScale = 2
SWEP.MuzzleAttachment = "1"
SWEP.VMPos = Vector(0, -1, 0)
SWEP.VMAng = Vector(0, 0, 0)
SWEP.VMPos_Additive = true

SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
        Pos = {
        Up = -5.75,
        Right = 1,
        Forward = 13.9,
        },
        Ang = {
		Up = 180,
        Right = 190,
        Forward = 0
        },
		Scale = 1.1
}

--[NZombies]--
SWEP.NZPaPName = "Schweres Feuer"
SWEP.Ispackapunched = false

function SWEP:OnPaP()
self.Ispackapunched = true
self.MuzzleFlashEffect = "muz_pap"

self.Primary_TFA.ClipSize = 100
self.Primary_TFA.Damage = 714
self.Primary_TFA.NumShots = 1
self.Primary_TFA.RPM = 555
self.Primary_TFA.DefaultClip  = 1100
self.Primary_TFA.MaxAmmo = 1000
self.Primary_TFA.Automatic = true
self:ClearStatCache()
return true
end

--[Gun Related]--
SWEP.Primary.Sound = "TFA_CODWW2_VMG27.Low"
SWEP.Primary.SoundLyr1 = "TFA_CODWW2_VMG27.High"
SWEP.Primary.SoundLyr2 = "TFA_CODWW2_VMG27.Lfe"
SWEP.Primary.SoundLyr3 = "TFA_CODWW2_VMG27.Lyr3"
SWEP.Primary.SoundLyr4 = "TFA_CODWW2_PLAYER.Sub.ms_sml_a_01"
SWEP.Primary.SoundLyr5 = "TFA_CODWW2_LEWIS.Mech"
SWEP.Primary.SoundEchoTable = {
	[0] = Sound("TFA_CODWW2_TAIL.Int"),
	[256] = Sound("TFA_CODWW2_LEWIS.Ext")
}
SWEP.Primary.Sound_DryFire = "TFA_CODWW2_DRYFIRE.LMG"
SWEP.Primary.Sound_Blocked = "TFA_CODWW2_DRYFIRE.LMG"
SWEP.Primary.Ammo = "ar2"
SWEP.Primary.Automatic = true
SWEP.Primary.RPM = 545
SWEP.Primary.RPM_Semi = nil
SWEP.Primary.RPM_Burst = nil
SWEP.Primary.RPM_Rapid = 600
SWEP.NZHeadShotMultiplier = 2
SWEP.Primary.Damage = 238
SWEP.Primary.Knockback = 0
SWEP.Primary.NumShots = 1
SWEP.Primary.AmmoConsumption = 1
SWEP.Primary.ClipSize = 50
SWEP.Primary.ClipSize_Ext = 75
SWEP.Primary.DefaultClip = 550

--[Max Ammo Code]--
function SWEP:NZMaxAmmo()
    if CLIENT then return end

    self:GetOwner():SetAmmo(self.Primary.MaxAmmo, self:GetPrimaryAmmoType())
    self:SetClip1(self.Primary.ClipSize)
end

SWEP.Primary.MaxAmmo = 500

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
		{range = 200, damage = 0.8},
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

SWEP.Primary.KickUp				= 0.4
SWEP.Primary.KickDown 			= 0.2
SWEP.Primary.KickHorizontal		= 0.15
SWEP.Primary.StaticRecoilFactor = 0.5

SWEP.Primary.SpreadMultiplierMax = 5
SWEP.Primary.SpreadIncrement = 0.65
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
SWEP.IronSightsPos = Vector(-3.59, -1.5, 0.25)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.IronSightsPos_NYDAR = Vector(-3.595, 0, -0.085)
SWEP.IronSightsAng_NYDAR = Vector(0, 0, 0)
SWEP.IronSightsPos_ACOG = Vector(-3.592, -5.5, 0.007)
SWEP.IronSightsAng_ACOG = Vector(0, 0, 0)
SWEP.IronSightTime = 0.4

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
SWEP.AmmoTypeStrings = {["ar2"] = "8×57mm IS"}
SWEP.FireModeSound = "TFA_CODWW2_GEN.Switch"
SWEP.Primary.PickupSound = "TFA_CODWW2_PICKUP.Ammo"
SWEP.InspectPos = Vector(10, -4, -2)
SWEP.InspectAng = Vector(24, 42, 16)
SWEP.MoveSpeed = 0.92
SWEP.IronSightsMoveSpeed = SWEP.MoveSpeed * 0.8
SWEP.SafetyPos = Vector(1, -1, -0.5)
SWEP.SafetyAng = Vector(-20, 35, -25)
SWEP.TracerCount = 5

--[DInventory2]--
SWEP.DInv2_GridSizeX = 2
SWEP.DInv2_GridSizeY = 4
SWEP.DInv2_Volume = nil
SWEP.DInv2_Mass = 10

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

--[Tables]--
SWEP.StatusLengthOverride = {
    [ACT_VM_RELOAD] = 175 / 30,
	[ACT_VM_RELOAD_EMPTY] = 175 / 30,
	["reload_ext"] = 145 / 30,
	["reload_ext_empty"] = 145 / 30,
}

SWEP.SequenceLengthOverride = {
	[ACT_VM_DRAW] = 30 / 30,
	[ACT_VM_DRAW_EMPTY] = 30 / 30,
	[ACT_VM_RELOAD] = 225 / 30,
	[ACT_VM_RELOAD_EMPTY] = 240 / 30,
	["reload_ext"] = 200 / 30,
	["reload_ext_empty"] = 215 / 30,
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
{ ["time"] = 5 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VMG27.FPO") },
},
[ACT_VM_DRAW] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_LRG.Raise") },
},
[ACT_VM_DRAW_EMPTY] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_LRG.Raise") },
},
[ACT_VM_HOLSTER] = {
{ ["time"] = 2 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_LRG.Holster") },
},
[ACT_VM_HOLSTER_EMPTY] = {
{ ["time"] = 2 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_LRG.Holster") },
},
[ACT_VM_RELOAD] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_LSAT.EmptyFoley") },
{ ["time"] = 40 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VMG27.TacMagOut") },
{ ["time"] = 145 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VMG27.TacMagIn") },
},
[ACT_VM_RELOAD_EMPTY] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_LSAT.EmptyFoley") },
{ ["time"] = 40 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VMG27.MagOut") },
{ ["time"] = 145 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VMG27.MagIn") },
{ ["time"] = 200 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VMG27.Charge") },
},
["inspect"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VMG27.Inspect1") },
{ ["time"] = 60 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VMG27.Inspect2") },
},
["inspect_epic"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VMG27.EpicInspect1") },
{ ["time"] = 160 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VMG27.EpicInspect2") },
},
["inspect_empty"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VMG27.Inspect1") },
{ ["time"] = 60 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VMG27.Inspect2") },
},
["reload_ext"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_LSAT.EmptyFoley") },
{ ["time"] = 30 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VMG27.ExtTacMagOut") },
{ ["time"] = 115 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VMG27.ExtTacMagIn") },
},
["reload_ext_empty"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_LSAT.EmptyFoley") },
{ ["time"] = 30 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VMG27.ExtMagOut") },
{ ["time"] = 115 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VMG27.ExtMagIn") },
{ ["time"] = 175 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VMG27.ExtCharge") },
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
	["sight_nydar"] = { type = "Model", model = "models/weapons/tfa_codww2/vmg1927/c_vmg1927_reflex.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["sight_nydar_lens"] = (TFA.CODWW2 and TFA.CODWW2.GetHoloSightReticle) and TFA.CODWW2.GetHoloSightReticle("sight_nydar") or nil,
	["scope_acog"] = { type = "Model", model = "models/weapons/tfa_codww2/vmg1927/c_vmg1927_4x.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["clip_default"] = { type = "Model", model = "models/weapons/tfa_codww2/vmg1927/c_vmg1927_clip.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["ext_clip"] = { type = "Model", model = "models/weapons/tfa_codww2/vmg1927/c_vmg1927_clip_ext.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["bipod_default"] = { type = "Model", model = "models/weapons/tfa_codww2/vmg1927/c_vmg1927_bipod.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["charm_default"] = { type = "Model", model = "models/weapons/tfa_codww2/vmg1927/c_vmg1927_charm.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["sight_default"] = { type = "Model", model = "models/weapons/tfa_codww2/vmg1927/c_vmg1927_sight.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
}
SWEP.WElements = {
	["clip_default"] = { type = "Model", model = "models/weapons/tfa_codww2/vmg1927/w_vmg1927_clip.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["ext_clip"] = { type = "Model", model = "models/weapons/tfa_codww2/vmg1927/w_vmg1927_clip_ext.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["sight_nydar"] = { type = "Model", model = "models/weapons/tfa_codww2/vmg1927/w_vmg1927_reflex.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["scope_acog"] = { type = "Model", model = "models/weapons/tfa_codww2/vmg1927/w_vmg1927_4x.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["sight_default"] = { type = "Model", model = "models/weapons/tfa_codww2/vmg1927/w_vmg1927_sight.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
}
SWEP.Attachments = {
	[2] = {atts = {"tfa_codww2_nydar", "tfa_codww2_4x"}, order = 2},
	[3] = {atts = {"tfa_codww2_xmag"}, order = 3},
	[4] = {atts = {"tfa_codww2_rifling", "tfa_codww2_steadyaim"}, order = 4},
	[5] = {atts = {"tfa_codww2_stock", "tfa_codww2_quickdraw", "tfa_codww2_grip"}, order = 5},
	[6] = {atts = {"tfa_codww2_rapidfire", "tfa_codww2_fmj"}, order = 6},
}

SWEP.AttachmentDependencies     = {}
SWEP.AttachmentExclusions       = {}
SWEP.AttachmentTableOverride    = {}
SWEP.AttachmentIconOverride     = {}

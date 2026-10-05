SWEP.Base = "tfa_codww2_base"
SWEP.Category = "nZR: WWII Kate"
SWEP.SubCategory = "Snipers"
SWEP.Spawnable = TFA_BASE_VERSION and TFA_BASE_VERSION >= 4.7
SWEP.AdminSpawnable = true
SWEP.UseHands = true
SWEP.Manufacturer = "Degtyaryov plant"
SWEP.Type_Displayed = "Sniper Rifle"
SWEP.Purpose = "Semi-automatic sniper rifle that one shot kills on every part of the body at the cost of slowest ADS transition time in class."
SWEP.Author = "Olli, Fox, Mav"
SWEP.Slot = 4
SWEP.PrintName = "PTRS-41"
SWEP.DrawCrosshair = true
SWEP.DrawCrosshairIronSights = false

--[Model]--
SWEP.ViewModel			= "models/weapons/tfa_codww2/ptrs/c_ptrs.mdl"
SWEP.ViewModelFOV = 65
SWEP.WorldModel			= "models/weapons/tfa_codww2/ptrs/w_ptrs.mdl"
SWEP.HoldType = "ar2"
SWEP.CameraAttachmentOffsets = {}
SWEP.CameraAttachmentScale = 2
SWEP.MuzzleAttachment = "1"
SWEP.VMPos = Vector(0, -1, 0)
SWEP.VMAng = Vector(0, 0, 0)
SWEP.VMPos_Additive = true

SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
        Pos = {
        Up = -4.6,
        Right = 1,
        Forward = 17.2,
        },
        Ang = {
		Up = 180,
        Right = 190,
        Forward = 0
        },
		Scale = 1.1
}

--[NZombies]--
SWEP.NZPaPName = "PTSD"
SWEP.Ispackapunched = false

function SWEP:OnPaP()
self.Ispackapunched = true
self.MuzzleFlashEffect = "muz_pap"

self.Primary_TFA.ClipSize = 24
self.Primary_TFA.Damage = 6000
self.Primary_TFA.NumShots = 5
self.Primary_TFA.RPM = 395
self.Primary_TFA.DefaultClip  = 264
self.Primary_TFA.MaxAmmo = 240
self.FireModes = {
    "3Burst"
}  
self.Primary_TFA.Automatic = false
self:ClearStatCache()
return true
end

--[Gun Related]--
SWEP.Primary.Sound = "TFA_CODWW2_PTRS.Bright"
SWEP.Primary.SoundLyr1 = "TFA_CODWW2_SHGN.Trans"
SWEP.Primary.SoundLyr2 = "TFA_CODWW2_PTRS.Thump"
SWEP.Primary.SoundLyr3 = "TFA_CODWW2_PTRS.Mid"
SWEP.Primary.SoundLyr4 = "TFA_CODWW2_GEWEHR.Shot"
SWEP.Primary.SoundLyr5 = "TFA_CODWW2_SHGN.Lfe"
SWEP.Primary.SoundLyr6 = "TFA_CODWW2_M1919.Sub"
SWEP.Primary.SoundEchoTable = {
	[0] = Sound("TFA_CODWW2_TAIL.Int"),
	[256] = Sound("TFA_CODWW2_PTRS.Ext")
}
SWEP.Primary.Sound_DryFire = "TFA_CODWW2_DRYFIRE.SNP"
SWEP.Primary.Sound_Blocked = "TFA_CODWW2_DRYFIRE.SNP"
SWEP.Primary.Ammo = "SniperPenetratedRound"
SWEP.Primary.Automatic = false
SWEP.Primary.RPM = 85
SWEP.Primary.RPM_Semi = nil
SWEP.Primary.RPM_Burst = nil
SWEP.NZHeadShotMultiplier = 2
SWEP.Primary.RPM_Rapid = 112
SWEP.Primary.Damage = 2000
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

SWEP.Primary.DryFireDelay = 0.35
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

SWEP.Primary.KickUp				= 1.5
SWEP.Primary.KickDown 			= 1.2
SWEP.Primary.KickHorizontal		= 0.4
SWEP.Primary.StaticRecoilFactor = 0.4

SWEP.Primary.SpreadMultiplierMax = 4
SWEP.Primary.SpreadIncrement = 2
SWEP.Primary.SpreadRecovery = 2.25

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
SWEP.Secondary.IronFOV = 0
SWEP.IronSightsPos = Vector(-3.68, -9, 1)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.IronSightsPos_7X = Vector(-3.671, -3, 0.476)
SWEP.IronSightsAng_7X = Vector(0, 0, 0)
SWEP.IronSightsPos_ACOG = Vector(-2.286, -3, 0.892)
SWEP.IronSightsAng_ACOG = Vector(0, 0, 0)
SWEP.IronSightTime = 0.5

--[Shells]--
SWEP.LuaShellEject = true
SWEP.LuaShellEffect = "ShellEject"
SWEP.LuaShellModel = "models/entities/tfa_codww2/shells/fx_50bmg.mdl"
SWEP.LuaShellSound = "TFA_CODWW2_SHELLS.Large"
SWEP.LuaShellScale = 1
SWEP.LuaShellEjectDelay = 0
SWEP.ShellAttachment = "0"
SWEP.EjectionSmokeEnabled = true

--[Jamming]-- Sniper
SWEP.CanJam = true
SWEP.JamChance = 0.05
SWEP.JamFactor = 0.07

--[Misc]--
SWEP.AmmoTypeStrings = {sniperpenetratedround = "14.5×114mm"}
SWEP.FireModeSound = "TFA_CODWW2_GEN.Switch"
SWEP.Primary.PickupSound = "TFA_CODWW2_PICKUP.Ammo"
SWEP.InspectPos = Vector(10, -4, -2)
SWEP.InspectAng = Vector(24, 42, 16)
SWEP.MoveSpeed = 0.88
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

--[Tables]--
SWEP.StatusLengthOverride = {
	[ACT_VM_RELOAD] = 70 / 30,
	[ACT_VM_RELOAD_EMPTY] = 70 / 30,
	["reload_ext"] = 70 / 30,
	["reload_ext_empty"] = 70 / 30,
}

SWEP.SequenceLengthOverride = {
	[ACT_VM_DRAW_DEPLOYED] = 50 / 30,
}

SWEP.SequenceRateOverride = {
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
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PTRS.FPO") },
},
[ACT_VM_DRAW] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_RIFLE.Raise") },
},
[ACT_VM_DRAW_EMPTY] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_RIFLE.Raise") },
},
[ACT_VM_HOLSTER] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_RIFLE.Holster") },
},
[ACT_VM_HOLSTER_EMPTY] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_RIFLE.Holster") },
},
[ACT_VM_PRIMARYATTACK_EMPTY] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PTRS.Last") },
},
[ACT_VM_RELOAD] = {
{ ["time"] = 5 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PTRS.TacOpen") },
{ ["time"] = 35 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PTRS.TacMagOut") },
{ ["time"] = 55 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PTRS.TacMagIn") },
{ ["time"] = 75 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PTRS.TacClose") },
},
[ACT_VM_RELOAD_EMPTY] = {
{ ["time"] = 15 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PTRS.Open") },
{ ["time"] = 35 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PTRS.MagOut") },
{ ["time"] = 60 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PTRS.MagIn") },
{ ["time"] = 80 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PTRS.Close") },
{ ["time"] = 90 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PTRS.Charge") },
},
["reload_ext"] = {
{ ["time"] = 5 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PTRS.TacOpen") },
{ ["time"] = 35 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PTRS.TacMagOut") },
{ ["time"] = 55 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PTRS.TacMagIn") },
{ ["time"] = 75 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PTRS.TacClose") },
},
["reload_ext_empty"] = {
{ ["time"] = 15 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PTRS.Open") },
{ ["time"] = 35 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PTRS.MagOut") },
{ ["time"] = 60 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PTRS.MagIn") },
{ ["time"] = 80 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PTRS.Close") },
{ ["time"] = 90 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PTRS.Charge") },
},
["inspect"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PTRS.Inspect1") },
{ ["time"] = 70 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PTRS.Inspect2") },
},
["inspect_empty"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PTRS.Inspect1") },
{ ["time"] = 70 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PTRS.Inspect2") },
},
["inspect_epic"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PTRS.EpicInspect1") },
{ ["time"] = 70 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PTRS.EpicInspect2") },
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
	["scope_default"] = { type = "Model", model = "models/weapons/tfa_codww2/ptrs/c_ptrs_scope.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["scope_acog"] = { type = "Model", model = "models/weapons/tfa_codww2/ptrs/c_ptrs_4x.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["clip_default"] = { type = "Model", model = "models/weapons/tfa_codww2/ptrs/c_ptrs_clip.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["ext_clip"] = { type = "Model", model = "models/weapons/tfa_codww2/ptrs/c_ptrs_clip_ext.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["receiver_default"] = { type = "Model", model = "models/weapons/tfa_codww2/ptrs/c_ptrs_receiver.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["charm_default"] = { type = "Model", model = "models/weapons/tfa_codww2/ptrs/c_ptrs_charm.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
}
SWEP.WElements = {
	["scope_default"] = { type = "Model", model = "models/weapons/tfa_codww2/ptrs/w_ptrs_scope.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["scope_acog"] = { type = "Model", model = "models/weapons/tfa_codww2/ptrs/w_ptrs_4x.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["clip_default"] = { type = "Model", model = "models/weapons/tfa_codww2/ptrs/w_ptrs_clip.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["ext_clip"] = { type = "Model", model = "models/weapons/tfa_codww2/ptrs/w_ptrs_clip_ext.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["receiver_default"] = { type = "Model", model = "models/weapons/tfa_codww2/ptrs/w_ptrs_receiver.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
}
SWEP.Attachments = {
	[1] = {atts = {"tfa_codww2_mosin_scope", "tfa_codww2_4x"}, sel = 1, order = 1},
	[2] = {atts = {"tfa_codww2_xmag", "tfa_codww2_ballistic"}, order = 2},
	[3] = {atts = {"tfa_codww2_rapidfire", "tfa_codww2_fmj"}, order = 3},
}

SWEP.AttachmentDependencies     = {}
SWEP.AttachmentExclusions       = {}
SWEP.AttachmentTableOverride    = {}
SWEP.AttachmentIconOverride     = {}

SWEP.BoltAction            = false  --Unscope/sight after you shoot?
SWEP.Scoped                = true  --Draw a scope overlay?
SWEP.Secondary.ScopeZoom = 4

SWEP.ScopeOverlayThreshold = 0.875 --Percentage you have to be sighted in to see the scope.
SWEP.BoltTimerOffset = 0.25 --How long you stay sighted in after shooting, with a bolt action.

SWEP.ScopeScale = 0.65 --Scale of the scope overlay
SWEP.ReticleScale = 0.75 --Scale of the reticle overlay

--GDCW Overlay Options.  Only choose one.

SWEP.Secondary.UseACOG            = false     --Overlay option
SWEP.Secondary.UseMilDot            = false             --Overlay option
SWEP.Secondary.UseSVD            = false         --Overlay option
SWEP.Secondary.UseParabolic        = false     --Overlay option
SWEP.Secondary.UseElcan            = false     --Overlay option
SWEP.Secondary.UseGreenDuplex        = false         --Overlay option
SWEP.Secondary.ScopeTable = {
	["ScopeMaterial"] =  Material("scopes/scope_overlay_american.png", "smooth"),
	["ScopeBorder"] = color_black,
	["ScopeCrosshair"] = { ["r"] = 0, ["g"]  = 0, ["b"] = 0, ["a"] = 0, ["s"] = 0 }
}
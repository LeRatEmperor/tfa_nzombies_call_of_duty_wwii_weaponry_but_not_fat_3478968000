SWEP.Base = "tfa_codww2_base"
SWEP.Category = "nZR: WWII Kate"
SWEP.SubCategory = "Rifles"
SWEP.Spawnable = TFA_BASE_VERSION and TFA_BASE_VERSION >= 4.7
SWEP.AdminSpawnable = true
SWEP.UseHands = true
SWEP.Manufacturer = "Gustloff Werke"
SWEP.Type_Displayed = "Rifle"
SWEP.Purpose = "Automatic rifle with moderate fire rate and high recoil."
SWEP.Author = "Olli, Fox, Mav"
SWEP.Slot = 2
SWEP.PrintName = "Volkssturmgewehr"
SWEP.DrawCrosshair = true
SWEP.DrawCrosshairIronSights = false

--[Model]--
SWEP.ViewModel			= "models/weapons/tfa_codww2/volk/c_volk.mdl"
SWEP.ViewModelFOV = 65
SWEP.WorldModel			= "models/weapons/tfa_codww2/volk/w_volk.mdl"
SWEP.HoldType = "ar2"
SWEP.CameraAttachmentOffsets = {}
SWEP.CameraAttachmentScale = 2
SWEP.MuzzleAttachment = "1"
SWEP.VMPos = Vector(0, -1.5, 0)
SWEP.VMAng = Vector(0, 0, 0)
SWEP.VMPos_Additive = true

SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
        Pos = {
        Up = -5.6,
        Right = 1,
        Forward = 15,
        },
        Ang = {
		Up = 180,
        Right = 190,
        Forward = 0
        },
		Scale = 1.1
}

--[NZombies]--
SWEP.NZPaPName = "Letzter Ausweg"
SWEP.Ispackapunched = false

function SWEP:OnPaP()
self.Ispackapunched = true
self.MuzzleFlashEffect = "muz_pap"

self.Primary_TFA.ClipSize = 64
self.Primary_TFA.Damage = 471
self.Primary_TFA.NumShots = 1
self.Primary_TFA.RPM = 732
self.Primary_TFA.DefaultClip  = 704
self.Primary_TFA.MaxAmmo = 640
self.Primary_TFA.Automatic = true
self:ClearStatCache()
return true
end

--[Gun Related]--
SWEP.Primary.Sound = "TFA_CODWW2_VOLK.Lyr1"
SWEP.Primary.SoundLyr1 = "TFA_CODWW2_VOLK.Main"
SWEP.Primary.SoundLyr3 = "TFA_CODWW2_TYPE100.Sub"
SWEP.Secondary.Sound = "TFA_CODWW2_RFLGRND.Shoot"
SWEP.Primary.SoundEchoTable = {
	[0] = Sound("TFA_CODWW2_TAIL.Int"),
	[256] = Sound("TFA_CODWW2_VOLK.Ext")
}
SWEP.Primary.Sound_DryFire = "TFA_CODWW2_DRYFIRE.AR"
SWEP.Primary.Sound_Blocked = "TFA_CODWW2_DRYFIRE.AR"
SWEP.Primary.Ammo = "ar2"
SWEP.Primary.Automatic = true
SWEP.Primary.RPM = 722
SWEP.Primary.RPM_Semi = nil
SWEP.Primary.RPM_Burst = nil
SWEP.Primary.RPM_Rapid = 769
SWEP.NZHeadShotMultiplier = 2
SWEP.Primary.Damage = 157
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
SWEP.FiresUnderwater = false

--[Firemode]--
SWEP.Primary.BurstDelay = nil
SWEP.DisableBurstFire = true
SWEP.SelectiveFire = true
SWEP.OnlyBurstFire = false
SWEP.BurstFireCount = nil
SWEP.DefaultFireMode = "1"
SWEP.FireModeName = nil

--[LowAmmo]--
SWEP.FireSoundAffectedByClipSize = true
SWEP.LowAmmoSoundThreshold = 0.33 --0.33
SWEP.LowAmmoSound = "TFA.LowAmmo.AssaultRifle"
SWEP.LastAmmoSound = "TFA.LowAmmo.AssaultRifle_Dry"

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
		{range = 50, damage = 1},
		{range = 55, damage = 0.67},
	}
}

--[Recoil]--
SWEP.ViewModelPunchPitchMultiplier = 0.4 --0.5
SWEP.ViewModelPunchPitchMultiplier_IronSights = 0.09 --.09

SWEP.ViewModelPunch_MaxVertialOffset				= 2 --3
SWEP.ViewModelPunch_MaxVertialOffset_IronSights		= 1.95 --1.95
SWEP.ViewModelPunch_VertialMultiplier				= 0.75 --1
SWEP.ViewModelPunch_VertialMultiplier_IronSights	= 0.25 --0.25

SWEP.ViewModelPunchYawMultiplier = 0.5 --0.6
SWEP.ViewModelPunchYawMultiplier_IronSights = 0.25 --0.25

SWEP.ChangeStateRecoilMultiplier = 1.3 --1.3
SWEP.CrouchRecoilMultiplier = 0.65 --0.65
SWEP.JumpRecoilMultiplier = 1.3 --1.3
SWEP.WallRecoilMultiplier = 1.1 --1.1

--[Spread Related]--
SWEP.Primary.Spread		  = .015
SWEP.Primary.IronAccuracy = .005
SWEP.IronRecoilMultiplier = 0.65

SWEP.Primary.KickUp				= 0.4
SWEP.Primary.KickDown 			= 0.3
SWEP.Primary.KickHorizontal		= 0.2
SWEP.Primary.StaticRecoilFactor = 0.5

SWEP.Primary.SpreadMultiplierMax = 6
SWEP.Primary.SpreadIncrement = 1
SWEP.Primary.SpreadRecovery = 6

SWEP.ChangeStateAccuracyMultiplier = 1.5 --1.5
SWEP.CrouchAccuracyMultiplier = 0.75 --0.5
SWEP.JumpAccuracyMultiplier = 3.0 --2
SWEP.WalkAccuracyMultiplier = 1.15 --1.35

--[Bash]--
SWEP.Secondary.BashDamage = 35
SWEP.Secondary.BashSound = Sound("TFA_CODWW2_MELEE.SwingRfl")
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
SWEP.Secondary.IronFOV = 70
SWEP.IronSightsPos = Vector(-4.19, -3, 1.07)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.IronSightsPos_NYDAR = Vector(-4.187, -2, -0.025)
SWEP.IronSightsAng_NYDAR = Vector(0, 0, 0)
SWEP.IronSightsPos_ACOG = Vector(-4.184, -4.5, 0.215)
SWEP.IronSightsAng_ACOG = Vector(0, 0, 0)
SWEP.IronSightsPos_LENS = Vector(-4.182, -3, 1.075)
SWEP.IronSightsAng_LENS = Vector(0, 0, 0)
SWEP.IronSightsPos_GL = Vector(0, 0, 0)
SWEP.IronSightsAng_GL = Vector(0, 0, 0)
SWEP.IronSightTime = 0.35

--[Shells]--
SWEP.LuaShellEject = true
SWEP.LuaShellEffect = "ShellEject"
SWEP.LuaShellModel = "models/entities/tfa_codww2/shells/fx_556.mdl"
SWEP.LuaShellSound = "TFA_CODWW2_SHELLS.Large"
SWEP.LuaShellScale = 1.0
SWEP.LuaShellEjectDelay = 0
SWEP.ShellAttachment = "0"
SWEP.EjectionSmokeEnabled = true

--[Jamming]-- Rifle
SWEP.CanJam = true
SWEP.JamChance = 0.02
SWEP.JamFactor = 0.035

--[Misc]--
SWEP.AmmoTypeStrings = {["ar2"] = "7.92×33mm Kurz"}
SWEP.FireModeSound = "TFA_CODWW2_GEN.Switch"
SWEP.Primary.PickupSound = "TFA_CODWW2_PICKUP.Ammo"
SWEP.Secondary.PickupSound = "TFA_CODWW2_PICKUP.Grenade"
SWEP.InspectPos = Vector(10, -4, -2)
SWEP.InspectAng = Vector(24, 42, 16)
SWEP.MoveSpeed = 0.95
SWEP.IronSightsMoveSpeed = SWEP.MoveSpeed * 0.8
SWEP.SafetyPos = Vector(-1, -2, -0.5)
SWEP.SafetyAng = Vector(-15, 25, -20)
SWEP.TracerCount = 3

--[DInventory2]--
SWEP.DInv2_GridSizeX = 2
SWEP.DInv2_GridSizeY = 3
SWEP.DInv2_Volume = nil
SWEP.DInv2_Mass = 7

--[Animations]--
SWEP.Animations = {
	["melee_bayonet"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ,
		["value"] = "melee_bayonet"
	},
	["reload_ext"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ,
		["value"] = "reload_ext"
	},
	["reload_ext_empty"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ,
		["value"] = "reload_ext_empty"
	},
	["reload_grenade"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ,
		["value"] = "reload_grenade"
	},
}

--[Tables]--
SWEP.StatusLengthOverride = {
    ["reload"] = 50 / 30,
	["reload_empty"] = 50 / 30,
	["reload_ext"] = 50 / 30,
	["reload_ext_empty"] = 50 / 30,
	["reload_grenade"] = 35 / 30,
}

SWEP.SequenceLengthOverride = {
	["reload_grenade"] = 80 / 30,
	["grenade_in"] = 65 / 30,
	["grenade_out"] = 65 / 30,
	["grenade_in_empty"] = 20 / 30,
	["grenade_out_empty"] = 20 / 30,
	["reload_grenade"] = 70 / 30,
}

SWEP.SequenceRateOverride = {
	["sprint_in"] = 25 /30,
	["sprint_loop"] = 25 /30,
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
{ ["time"] = 15 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VOLK.Charge") },
},
[ACT_VM_DRAW] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_RIFLE.Raise") },
},
[ACT_VM_HOLSTER] = {
{ ["time"] = 2 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_RIFLE.Holster") },
},
["fire"] = {
{ time = 1 / 30, type = "lua", value = function(wep) wep:DetachGrenade() end },
},
["idle"] = {
{ time = 1 / 30, type = "lua", value = function(wep) wep:DetachGrenade() end },
},
["melee"] = {
{ time = 1 / 30, type = "lua", value = function(wep) wep:DetachGrenade() end },
},
["reload"] = {
{ ["time"] = 5 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VOLK.TacMagOut") },
{ ["time"] = 30 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VOLK.TacMagIn") },
},
["reload_empty"] = {
{ ["time"] = 5 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VOLK.MagOut") },
{ ["time"] = 30 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VOLK.MagIn") },
{ ["time"] = 65 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VOLK.Charge") },
},
["inspect"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VOLK.Inspect1") },
{ ["time"] = 50 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VOLK.Inspect2") },
},
["inspect_empty"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VOLK.Inspect1") },
{ ["time"] = 50 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VOLK.Inspect2") },
},
["inspect_epic"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VOLK.EpicInspect1") },
{ ["time"] = 105 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VOLK.EpicInspect2") },
},
--[Extended Mag]--
["reload_ext"] = {
{ ["time"] = 10 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VOLK.TacMagOut") },
{ ["time"] = 35 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VOLK.TacMagIn") },
},
["reload_ext_empty"] = {
{ ["time"] = 10 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VOLK.MagOut") },
{ ["time"] = 35 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VOLK.MagIn") },
{ ["time"] = 65 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_VOLK.Charge") },
},
--[Grenade Launcher]--
["draw_grenade"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_RIFLE.Raise") },
},
["draw_grenade_empty"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_RIFLE.Raise") },
},
["holster_grenade"] = {
{ ["time"] = 2 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_RIFLE.Holster") },
},
["holster_grenade_empty"] = {
{ ["time"] = 2 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_RIFLE.Holster") },
},
["grenade_in"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_RFLGRND.Foley") },
{ ["time"] = 5 / 30, ["type"] = "lua", value = function(wep) wep:AttachGrenade() end },
{ ["time"] = 25 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_RFLGRND.On") },
},
["grenade_in_empty"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_SML.Raise") },
{ ["time"] = 10 / 30, ["type"] = "lua", value = function(wep) wep:AttachGrenade() end },
},
["grenade_out"] = {
{ ["time"] = 20 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_RFLGRND.Off") },
{ ["time"] = 65 / 30, ["type"] = "lua", value = function(wep) wep:DetachGrenade() end },
},
["grenade_out_empty"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_SML.Holster") },
{ ["time"] = 1 / 30, ["type"] = "lua", value = function(wep) wep:DetachGrenade() end },
},
["reload_grenade"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_RFLGRND.Foley") },
{ ["time"] = 25 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_RFLGRND.On") },
},
["inspect_grenade"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_STG44.Inspect1") },
{ ["time"] = 50 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_STG44.Inspect1b") },
{ ["time"] = 115 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_STG44.Inspect2") },
},
["inspect_grenade_empty"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_STG44.Inspect1") },
{ ["time"] = 50 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_STG44.Inspect1b") },
{ ["time"] = 115 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_STG44.Inspect2") },
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
	["sight_nydar"] = { type = "Model", model = "models/weapons/tfa_codww2/volk/c_volk_reflex.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["sight_nydar_lens"] = (TFA.CODWW2 and TFA.CODWW2.GetHoloSightReticle) and TFA.CODWW2.GetHoloSightReticle("sight_nydar") or nil,
	["scope_acog"] = { type = "Model", model = "models/weapons/tfa_codww2/volk/c_volk_4x.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["lens_sight"] = { type = "Model", model = "models/weapons/tfa_codww2/attachments/sights/c_lens_sight.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["clip_default"] = { type = "Model", model = "models/weapons/tfa_codww2/volk/c_volk_clip.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["ext_clip"] = { type = "Model", model = "models/weapons/tfa_codww2/volk/c_volk_clip_ext.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["charm_default"] = { type = "Model", model = "models/weapons/tfa_codww2/volk/c_volk_charm.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["grenade_rail"] = { type = "Model", model = "models/weapons/tfa_codww2/attachments/ger_rifle_grenade/c_rifle_grenade.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["bayonet"] = { type = "Model", model = "models/weapons/tfa_codww2/attachments/bayonet/c_ger_bayonet.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
}
SWEP.WElements = {
	["clip_default"] = { type = "Model", model = "models/weapons/tfa_codww2/volk/w_volk_clip.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["ext_clip"] = { type = "Model", model = "models/weapons/tfa_codww2/volk/w_volk_clip_ext.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["sight_nydar"] = { type = "Model", model = "models/weapons/tfa_codww2/volk/w_volk_reflex.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["scope_acog"] = { type = "Model", model = "models/weapons/tfa_codww2/volk/w_volk_4x.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["grenade_rail"] = { type = "Model", model = "models/weapons/tfa_codww2/attachments/ger_rifle_grenade/w_rifle_grenade.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["bayonet"] = { type = "Model", model = "models/weapons/tfa_codww2/attachments/bayonet/w_ger_bayonet.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
}
SWEP.Attachments = {
	[2] = {atts = {"tfa_codww2_lens_sight", "tfa_codww2_nydar", "tfa_codww2_4x"}, order = 2},
	[3] = {atts = {"tfa_codww2_xmag"}, order = 3},
	[4] = {atts = {"tfa_codww2_bayonet", "tfa_codww2_rifle_grenade_ger"}, order = 4},
	[5] = {atts = {"tfa_codww2_rifling", "tfa_codww2_steadyaim"}, order = 5},
	[6] = {atts = {"tfa_codww2_stock", "tfa_codww2_quickdraw", "tfa_codww2_grip"}, order = 6},
	[7] = {atts = {"tfa_codww2_highcal", "tfa_codww2_rapidfire", "tfa_codww2_fmj"}, order = 7},
}

SWEP.AttachmentDependencies     = {}
SWEP.AttachmentExclusions       = {}
SWEP.AttachmentTableOverride    = {}
SWEP.AttachmentIconOverride     = {}

--[Grenade BG]-- (credit to yura. wow this is super simple, im upset i didnt think of this my self)
function SWEP:AttachGrenade()
	self.Bodygroups_V[1] = 1
end

function SWEP:DetachGrenade()
	self.Bodygroups_V[1] = 0
end
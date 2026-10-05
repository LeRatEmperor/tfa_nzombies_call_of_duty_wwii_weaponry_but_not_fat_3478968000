SWEP.Base = "tfa_codww2_base"
SWEP.Category = "nZR: WWII Kate Upgrades"
SWEP.Spawnable = true
SWEP.AdminSpawnable = true
SWEP.UseHands = true
SWEP.Manufacturer = "Colt"
SWEP.Type_Displayed = "Pistol"
SWEP.Purpose = "High damage semi-automatic pistol with moderate recoil."
SWEP.Author = "Olli, Fox, Mav"
SWEP.Slot = 1
SWEP.NZPaPName = "Bacon & Eggs"
SWEP.DrawCrosshair = true
SWEP.DrawCrosshairIronSights = false

--[Model]--
SWEP.ViewModel			= "models/weapons/tfa_codww2/1911/c_1911.mdl"
SWEP.ViewModel_DW		= "models/weapons/tfa_codww2/1911/c_1911_akimbo.mdl"
SWEP.ViewModelFOV = 65
SWEP.WorldModel			= "models/weapons/tfa_codww2/1911/w_1911.mdl"
SWEP.WorldModel_DW		= "models/weapons/tfa_codww2/1911/w_1911_akimbo.mdl"
SWEP.HoldType = "pistol"
SWEP.CameraAttachmentOffsets = {}
SWEP.CameraAttachmentScale = 2
SWEP.MuzzleAttachment = "1"
SWEP.MuzzleAttachmentSilenced = "2"
SWEP.VMPos = Vector(0, -2.5, 0)
SWEP.VMAng = Vector(0, 0, 0)
SWEP.VMPos_Additive = true

SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
        Pos = {
        Up = -5.5,
        Right = 1.5,
        Forward = 15.5,
        },
        Ang = {
		Up = -90,
        Right = 180,
        Forward = 5
        },
		Scale = 1.1
}

--[Gun Related]--
SWEP.Primary.Sound = "TFA_CODWW2_1911.Main"
SWEP.Primary.SoundLyr1 = "TFA_CODWW2_1911.Trans"
SWEP.Primary.SoundLyr2 = "TFA_CODWW2_1911.Sub"
SWEP.Primary.SoundLyr3 = "TFA_CODWW2_PLAYER.Sub.extra_short"
SWEP.Primary.SoundLyr4 = "TFA_CODWW2_1911.PapFlux"
SWEP.Primary.SilencedSound = "TFA_CODWW2_SUPP.Pistol"
SWEP.Primary.SoundEchoTable = {
	[0] = Sound("TFA_CODWW2_TAIL.Int"),
	[256] = Sound("TFA_CODWW2_1911.Ext")
}
SWEP.Primary.Sound_DryFire = "TFA_CODWW2_DRYFIRE.PSTL"
SWEP.Primary.Sound_Blocked = "TFA_CODWW2_DRYFIRE.PSTL"
SWEP.Primary.Ammo = "pistol"
SWEP.Primary.Automatic = false
SWEP.Primary.RPM = 680
SWEP.Primary.RPM_Semi = nil
SWEP.Primary.RPM_Burst = nil
SWEP.Primary.Damage = 1115
SWEP.Primary.Knockback = 25
SWEP.Primary.NumShots = 1
SWEP.Primary.AmmoConsumption = 1
SWEP.Primary.ClipSize = 7
SWEP.Primary.ClipSize_DW = 16
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize * 7
SWEP.Primary.DryFireDelay = 0.35
SWEP.DisableChambering = true
SWEP.FlashlightAttachment = 0
SWEP.FiresUnderwater = true

--[Projectile]--
SWEP.Primary.Projectile = "codww2_mustang_exp"
SWEP.Primary.ProjectileVelocity = 13330
SWEP.Primary.ProjectileModel = "models/weapons/tfa_codww2/attachments/usa_rifle_grenade/grenade_proj.mdl"

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
	units = "hu", -- possible values are "inches", "inch", "hammer", "hu" (are all equal)
	-- everything else is considered to be meters
	lut = { -- providing zero point is not required
		-- without zero point it is considered to be as {range = 0, damage = 1}
		{range = 150, damage = 1},
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
SWEP.JumpRecoilMultiplier = 1.65 --1.3
SWEP.WallRecoilMultiplier = 1.1 --1.1

--[Spread Related]--
SWEP.Primary.Spread		  = .03
SWEP.Primary.IronAccuracy = .03
SWEP.IronRecoilMultiplier = 0.7

SWEP.Primary.KickUp				= 0.5
SWEP.Primary.KickDown 			= 0.3
SWEP.Primary.KickHorizontal		= 0.15
SWEP.Primary.StaticRecoilFactor = 0.5

SWEP.Primary.SpreadMultiplierMax = 4
SWEP.Primary.SpreadIncrement = 1.5
SWEP.Primary.SpreadRecovery = 5

SWEP.ChangeStateAccuracyMultiplier = 1.5 --1.5
SWEP.CrouchAccuracyMultiplier = 1 --0.5
SWEP.JumpAccuracyMultiplier = 3.0 --2
SWEP.WalkAccuracyMultiplier = 1.35 --1.35

--[Bash]--
SWEP.Secondary.BashDamage = 35
SWEP.Secondary.BashSound = Sound("TFA_CODWW2_MELEE.SwingPstl")
SWEP.Secondary.BashHitSound = Sound("TFA_CODWW2_MELEE.Hit")
SWEP.Secondary.BashHitSound_Flesh = Sound("TFA_CODWW2_MELEE.PstlHitPlr")
SWEP.Secondary.BashLength = 40
SWEP.Secondary.BashDelay = 0.2
SWEP.Secondary.BashDamageType = DMG_CLUB
SWEP.Secondary.BashInterrupt = true

--[Iron Sights]--
SWEP.IronBobMult 	 = 0.065
SWEP.IronBobMultWalk = 0.065
SWEP.data = {}
SWEP.data.ironsights = 1
SWEP.IronInSound = "TFA_CODWW2_PSTL.AdsUp"
SWEP.IronOutSound = "TFA_CODWW2_PSTL.AdsDown"
SWEP.Secondary.IronFOV = 80
SWEP.IronSightsPos = Vector(-4.08, -3, 0.8)
SWEP.IronSightsAng = Vector(0.8, 0, 0)
SWEP.IronSightsPos_TAC = Vector(-4.285, -3, 0.35)
SWEP.IronSightsAng_TAC = Vector(0.8, 0, 0)
SWEP.IronSightTime = 0.2

--[Shells]--
SWEP.LuaShellEject = true
SWEP.LuaShellEffect = "ShellEject"
SWEP.LuaShellModel = "models/entities/tfa_codww2/shells/fx_9mm.mdl"
SWEP.LuaShellSound = "TFA_CODWW2_SHELLS.Small"
SWEP.LuaShellScale = 1.2
SWEP.LuaShellEjectDelay = 0
SWEP.ShellAttachment = "0"
SWEP.EjectionSmokeEnabled = true

--[Jamming]-- Pistol
SWEP.CanJam = true
SWEP.JamChance = 0.02
SWEP.JamFactor = 0.08

--[Misc]--
SWEP.AmmoTypeStrings = {["pistol"] = ".45 ACP"}
SWEP.FireModeSound = "TFA_CODWW2_GEN.Switch"
SWEP.Primary.PickupSound = "TFA_CODWW2_PICKUP.Ammo"
SWEP.InspectPos = Vector(10, -7, -2)
SWEP.InspectAng = Vector(24, 42, 16)
SWEP.InspectPos_DW = Vector(0, -3, -4)
SWEP.InspectAng_DW = Vector(25, 0, 0)
SWEP.MoveSpeed = 1
SWEP.IronSightsMoveSpeed = SWEP.MoveSpeed * 0.8
SWEP.SafetyPos = Vector(2, -11, -10)
SWEP.SafetyAng = Vector(60, 0, 0)
SWEP.SafetyPos_TAC = Vector(-1, 1, 2)
SWEP.SafetyAng_TAC = Vector(-20, -5, -5)
SWEP.SafetyPos_DW = Vector(0, -1, 1)
SWEP.SafetyAng_DW = Vector(-15, 0, 0)
SWEP.TracerCount = 1
SWEP.TracerName = "pap_laz_tra"
SWEP.MuzzleFlashEffect = "pap_laz_muz"

--[DInventory2]--
SWEP.DInv2_GridSizeX = 2
SWEP.DInv2_GridSizeY = 2
SWEP.DInv2_Volume = nil
SWEP.DInv2_Mass = 1.5

--[Animations]--
SWEP.Animations = {
}

--[Tables]--
SWEP.StatusLengthOverride = {
    ["reload"] = 35 / 30,
	["reload_empty"] = 35 / 30,
	["reload_dw"] = 35 / 30,
	["reload_empty_dw"] = 35 / 30,
	["reload_midempty_dw"] = 35 / 30,
}
SWEP.SequenceRateOverride = {
	["draw"] = 45 /30,
	["draw_empty"] = 45 /30,
	["draw_midempty_dw"] = 45 /30,
	["holster"] = 45 /30,
	["holster_empty"] = 45 /30,
	["holster_midempty_dw"] = 45 /30,
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
[ACT_VM_DRAW] = {
{ ["time"] = 2 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PSTL.Raise") },
},
[ACT_VM_DRAW_EMPTY] = {
{ ["time"] = 2 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PSTL.Raise") },
},
[ACT_VM_HOLSTER] = {
{ ["time"] = 2 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PSTL.Holster") },
},
[ACT_VM_HOLSTER_EMPTY] = {
{ ["time"] = 2 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PSTL.Holster") },
},
["fire_last"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_1911.MechEmpty") },
},
["reload"] = {
{ ["time"] = 10 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_1911.TacMagOut") },
{ ["time"] = 25 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_1911.TacMagIn") },
},
["reload_empty"] = {
{ ["time"] = 10 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_1911.MagOut") },
{ ["time"] = 25 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_1911.MagIn") },
{ ["time"] = 45 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_1911.Charge") },
},
["inspect"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_1911.Inspect1") },
{ ["time"] = 50 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_1911.Inspect2") },
},
["inspect_empty"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_1911.Inspect1") },
{ ["time"] = 50 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_1911.Inspect2") },
},
["inspect_epic"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_1911.EpicInspect1") },
{ ["time"] = 45 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_1911.EpicInspect2") },
},
--[Dualweild]--
["draw_midempty_dw"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PSTL.Raise") },
},
["holster_midempty_dw"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PSTL.Holster") },
},
["reload_dw"] = {
{ ["time"] = 10 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_1911.TacMagOut_R") },
{ ["time"] = 15 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_1911.TacMagOut_L") },
{ ["time"] = 35 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_1911.TacMagIn_R") },
{ ["time"] = 40 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_1911.TacMagIn_L") },
},
["reload_midempty_dw"] = {
{ ["time"] = 10 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_1911.TacMagOut_R") },
{ ["time"] = 15 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_1911.TacMagOut_L") },
{ ["time"] = 35 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_1911.TacMagIn_R") },
{ ["time"] = 40 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_1911.TacMagIn_L") },
{ ["time"] = 62 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_1911.Charge_R") },
},
["reload_empty_dw"] = {
{ ["time"] = 10 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_1911.MagOut_L") },
{ ["time"] = 15 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_1911.MagOut_R") },
{ ["time"] = 35 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_1911.MagIn_L") },
{ ["time"] = 40 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_1911.MagIn_R") },
{ ["time"] = 60 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_1911.Charge_L") },
{ ["time"] = 62 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_1911.Charge_R") },
},
["inspect_midempty"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_1911.Inspect1") },
{ ["time"] = 50 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_1911.Inspect2") },
},
[ACT_VM_FIDGET_SILENCED] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_1911.EpicInspect1") },
{ ["time"] = 45 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_1911.EpicInspect2") },
},
}

--[Shit]--
SWEP.AllowViewAttachment = true --Allow the view to sway based on weapon attachment while reloading or drawing, IF THE CLIENT HAS IT ENABLED IN THEIR CONVARS.
SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_HYBRID -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_HYBRID -- ANI = mdl, HYBRID = lua but continue idle, Lua = stop mdl animation
SWEP.Idle_Mode = TFA.Enum.IDLE_BOTH --TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA
SWEP.Idle_Blend = 0.25 --Start an idle this far early into the end of a transition
SWEP.Idle_Smooth = 0.05 --Start an idle this far early into the end of another animation
SWEP.SprintBobMult = 0.5

--[Attachments]--
SWEP.ViewModelBoneMods = {
}

SWEP.VElements = {
	["suppressor"] = { type = "Model", model = "models/weapons/tfa_codww2/attachments/suppressors/c_pistol_suppressor.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["tac_knife"] = { type = "Model", model = "models/weapons/tfa_codww2/attachments/tacknife/c_combatknife.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["clip_default"] = { type = "Model", model = "models/weapons/tfa_codww2/1911/c_1911_clip.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["ext_clip"] = { type = "Model", model = "models/weapons/tfa_codww2/1911/c_1911_clip_ext.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["grip_default"] = { type = "Model", model = "models/weapons/tfa_codww2/1911/c_1911_grip.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["receiver_default"] = { type = "Model", model = "models/weapons/tfa_codww2/1911/c_1911_receiver.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["slide_default"] = { type = "Model", model = "models/weapons/tfa_codww2/1911/c_1911_slide.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	--[Leftist]--
	["clip_left"] = { type = "Model", model = "models/weapons/tfa_codww2/1911/c_1911_clip_l.mdl", bone = "tag_clip1", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["grip_left"] = { type = "Model", model = "models/weapons/tfa_codww2/1911/c_1911_grip_l.mdl", bone = "tag_weapon1", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["receiver_left"] = { type = "Model", model = "models/weapons/tfa_codww2/1911/c_1911_receiver_l.mdl", bone = "tag_weapon1", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["slide_left"] = { type = "Model", model = "models/weapons/tfa_codww2/1911/c_1911_slide_l.mdl", bone = "tag_weapon1", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
}
SWEP.WElements = {
	["suppressor"] = { type = "Model", model = "models/weapons/tfa_codww2/attachments/suppressors/w_pistol_suppressor.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["tac_knife"] = { type = "Model", model = "models/weapons/tfa_codww2/attachments/tacknife/w_combatknife.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(3, 1.5, 0), angle = Angle(-20, 90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = false, active = false, bodygroup = {} },
	["clip_default"] = { type = "Model", model = "models/weapons/tfa_codww2/1911/w_1911_clip.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["ext_clip"] = { type = "Model", model = "models/weapons/tfa_codww2/1911/w_1911_clip_ext.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = false, bodygroup = {} },
	["grip_default"] = { type = "Model", model = "models/weapons/tfa_codww2/1911/w_1911_grip.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["receiver_default"] = { type = "Model", model = "models/weapons/tfa_codww2/1911/w_1911_receiver.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["slide_default"] = { type = "Model", model = "models/weapons/tfa_codww2/1911/w_1911_slide.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
}
SWEP.Attachments = {
	[6] = {atts = {"tfa_codww2_akimbo"}, order = 6, sel = 1, default = "tfa_codww2_akimbo"},
}

SWEP.AttachmentDependencies     = {}
SWEP.AttachmentExclusions       = {}
SWEP.AttachmentTableOverride    = {}
SWEP.AttachmentIconOverride     = {}

--[Projectile Spred]-- (credit to Hidden & TFA base)
DEFINE_BASECLASS( SWEP.Base )

function SWEP:ShootBullet(damage, recoil, num_bullets, aimcone, disablericochet, bulletoverride)
	if not IsFirstTimePredicted() and not game.SinglePlayer() then return end
	num_bullets = num_bullets or 1
	aimcone = 3
	
	if SERVER then
		for _ = 1, num_bullets do
			local ent = ents.Create(self:GetStat("Primary.Projectile"))
			local dir
			local ang = self:GetOwner():EyeAngles()
			ang:RotateAroundAxis(ang:Right(), -aimcone / 2 + math.Rand(0, aimcone))
			ang:RotateAroundAxis(ang:Up(), -aimcone / 2 + math.Rand(0, aimcone))
			dir = ang:Forward()
			ent:SetPos(self:GetOwner():GetShootPos())
			ent:SetOwner(self:GetOwner())
			ent:SetAngles(ang)
			ent.damage = self:GetStat("Primary.Damage")
			ent.mydamage = self:GetStat("Primary.Damage")

			if self:GetStat("Primary.ProjectileModel") then
				ent:SetModel(self:GetStat("Primary.ProjectileModel"))
			end

			ent:Spawn()
			ent:SetVelocity(dir * self:GetStat("Primary.ProjectileVelocity"))
			local phys = ent:GetPhysicsObject()

			if IsValid(phys) then
				phys:SetVelocity(dir * self:GetStat("Primary.ProjectileVelocity"))
			end

			if self.ProjectileModel then
				ent:SetModel(self:GetStat("Primary.ProjectileModel"))
			end

			ent:SetOwner(self:GetOwner())
		end
	end
end
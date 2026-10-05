SWEP.Base = "tfa_codww2_base"
SWEP.Category = "nZR: WWII Kate"
SWEP.SubCategory = "Launchers"
SWEP.Spawnable = TFA_BASE_VERSION and TFA_BASE_VERSION >= 4.7
SWEP.AdminSpawnable = true
SWEP.UseHands = true
SWEP.Purpose = "Free-fire launcher. Unloads a volley of rockets in bursts of 3."
SWEP.Type_Displayed = "Rocket Launcher"
SWEP.Description = "Velocity: 4000 HU/s"
SWEP.Manufacturer = "HASAG"
SWEP.Author = "Olli, Fox, Mav"
SWEP.Slot = 4
SWEP.PrintName = "Fliegerfaust"
SWEP.DrawCrosshair = true
SWEP.DrawCrosshairIronSights = true

--[Model]--
SWEP.ViewModel			= "models/weapons/tfa_codww2/fliegerfaust/c_fliegerfaust.mdl"
SWEP.ViewModelFOV = 65
SWEP.WorldModel			= "models/weapons/tfa_codww2/fliegerfaust/w_fliegerfaust.mdl"
SWEP.HoldType = "passive"
SWEP.CameraAttachmentOffsets = {}
SWEP.CameraAttachmentScale = 2
SWEP.MuzzleAttachment = "1"
SWEP.VMPos = Vector(0, 0, 0)
SWEP.VMAng = Vector(0, 0, 0)
SWEP.VMPos_Additive = true

SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
        Pos = {
        Up = -6,
        Right = 1,
        Forward = 13,
        },
        Ang = {
		Up = 180,
        Right = 190,
        Forward = 0
        },
		Scale = 1.1
}

--[NZombies]--
SWEP.NZPaPName = "Artilleriefeuer"
SWEP.Ispackapunched = false

function SWEP:OnPaP()
self.Ispackapunched = true
self.MuzzleFlashEffect = "muz_pap"

self.Primary_TFA.ClipSize = 16
self.Primary_TFA.Damage = 6000
self.Primary_TFA.NumShots = 1
self.Primary_TFA.RPM = 170
self.Primary_TFA.DefaultClip  = 176
self.Primary_TFA.MaxAmmo = 160
self.FireModes = {
    "2Burst"
}  
self.Primary_TFA.Automatic = false
self:ClearStatCache()
return true
end

--[Gun Related]--
SWEP.Primary.Sound = "TFA_CODWW2_BZKA.Body"
SWEP.Primary.SoundLyr1 = "TFA_CODWW2_BZKA.Snap"
SWEP.Primary.SoundLyr2 = "TFA_CODWW2_BZKA.Ext"
SWEP.Primary.Sound_DryFire = "TFA_CODWW2_DRYFIRE.LMG"
SWEP.Primary.Sound_Blocked = "TFA_CODWW2_DRYFIRE.LMG"
SWEP.Primary.Ammo = "RPG_Round"
SWEP.Primary.Automatic = false
SWEP.Primary.RPM = 160
SWEP.Primary.RPM_Semi = nil
SWEP.Primary.RPM_Burst = 320
SWEP.Primary.RPM_Displayed = 85
SWEP.Primary.Damage = 2000
SWEP.Primary.Knockback = 0
SWEP.Primary.NumShots = 1
SWEP.Primary.ClipSize = 9
SWEP.Primary.AmmoConsumption = 1
SWEP.Primary.DefaultClip = 99

--[Max Ammo Code]--
function SWEP:NZMaxAmmo()
    if CLIENT then return end

    self:GetOwner():SetAmmo(self.Primary.MaxAmmo, self:GetPrimaryAmmoType())
    self:SetClip1(self.Primary.ClipSize)
end

SWEP.Primary.MaxAmmo = 90

SWEP.Primary.DryFireDelay = 0.5
SWEP.DisableChambering = true
SWEP.FlashlightAttachment = 0
SWEP.FiresUnderwater = false

--[Firemode]--
SWEP.Primary.BurstDelay = 0.2
SWEP.DisableBurstFire = true
SWEP.SelectiveFire = false
SWEP.OnlyBurstFire = false
SWEP.BurstFireCount = 3
SWEP.DefaultFireMode = ""
SWEP.FireModeName = "Free-Fire"

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
		{range = 100, damage = 1},
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
SWEP.WallRecoilMultiplier = 1.5 --1.1

--[Spread Related]--
SWEP.Primary.Spread		  = .15
SWEP.Primary.IronAccuracy = .01
SWEP.IronRecoilMultiplier = 0.8

SWEP.Primary.KickUp				= 0.3
SWEP.Primary.KickDown 			= 0.3
SWEP.Primary.KickHorizontal		= 0.3
SWEP.Primary.StaticRecoilFactor = 0.3

SWEP.Primary.SpreadMultiplierMax = 5
SWEP.Primary.SpreadIncrement = 0
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
SWEP.Secondary.IronFOV = 80
SWEP.IronSightsPos = Vector(-2.5, 0, -4.5)
SWEP.IronSightsAng = Vector(17, -2.5, -10)
SWEP.IronSightTime = 0.45

--[Shells]--
SWEP.AmmoTypeStrings = {RPG_Round = "20mm Shells"}
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
SWEP.Primary.Projectile         = "wavy_missile" -- Entity to shoot
SWEP.Primary.ProjectileVelocity = 5000 -- Entity to shoot's velocity
SWEP.Primary.ProjectileModel    = "models/weapons/tfa_codww2/fliegerfaust/fliegerfaust_proj.mdl" -- Entity to shoot's model

--[Misc]--
SWEP.FireModeSound = "TFA_CODWW2_GEN.Switch"
SWEP.Primary.PickupSound = "TFA_CODWW2_PICKUP.Grenade"
SWEP.Primary.PickupSoundOnDraw = true
SWEP.InspectPos = Vector(10, -4, -2)
SWEP.InspectAng = Vector(24, 42, 16)
SWEP.MoveSpeed = 0.85
SWEP.IronSightsMoveSpeed = SWEP.MoveSpeed * 0.8
SWEP.SafetyPos = Vector(1, -1, -0.5)
SWEP.SafetyAng = Vector(-20, 35, -25)
SWEP.TracerCount = 5

--[DInventory2]--
SWEP.DInv2_GridSizeX = 2
SWEP.DInv2_GridSizeY = 4
SWEP.DInv2_Volume = nil
SWEP.DInv2_Mass = 22

--[Tables]--
SWEP.StatusLengthOverride = {
    [ACT_VM_RELOAD] = 40 / 30,
}

SWEP.SequenceLengthOverride = {
}

SWEP.SequenceRateOverride = {
	["sprint_loop"] = 20 / 30,
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
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_LNCHR.Raise") },
},
[ACT_VM_DRAW] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_LNCHR.Raise") },
},
[ACT_VM_HOLSTER] = {
{ ["time"] = 2 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_LNCHR.Holster") },
},
[ACT_VM_RELOAD] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PANZER.Rattle") },
{ ["time"] = 20 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PANZER.RocketIn") },
},
["inspect"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PANZER.Inspect1") },
{ ["time"] = 55 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_PANZER.Inspect2") },
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
	["clip_default"] = { type = "Model", model = "models/weapons/tfa_codww2/fliegerfaust/c_fliegerfaust_mag.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["receiver_default"] = { type = "Model", model = "models/weapons/tfa_codww2/fliegerfaust/c_fliegerfaust_receiver.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["barrel_default"] = { type = "Model", model = "models/weapons/tfa_codww2/fliegerfaust/c_fliegerfaust_barrel.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["sight_default"] = { type = "Model", model = "models/weapons/tfa_codww2/fliegerfaust/c_fliegerfaust_sight.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["stock_default"] = { type = "Model", model = "models/weapons/tfa_codww2/fliegerfaust/c_fliegerfaust_stock.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["rocket_default"] = { type = "Model", model = "models/weapons/tfa_codww2/fliegerfaust/c_fliegerfaust_rocket.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
}
SWEP.WElements = {
	["clip_default"] = { type = "Model", model = "models/weapons/tfa_codww2/fliegerfaust/w_fliegerfaust_mag.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["receiver_default"] = { type = "Model", model = "models/weapons/tfa_codww2/fliegerfaust/w_fliegerfaust_receiver.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["barrel_default"] = { type = "Model", model = "models/weapons/tfa_codww2/fliegerfaust/w_fliegerfaust_barrel.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["sight_default"] = { type = "Model", model = "models/weapons/tfa_codww2/fliegerfaust/w_fliegerfaust_sight.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["stock_default"] = { type = "Model", model = "models/weapons/tfa_codww2/fliegerfaust/w_fliegerfaust_stock.mdl", bone = "tag_weapon", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
	["rocket_default"] = { type = "Model", model = "models/weapons/tfa_codww2/fliegerfaust/w_fliegerfaust_rocket.mdl", bone = "tag_clip", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bonemerge = true, active = true, bodygroup = {} },
}

SWEP.Attachments = {
	--[1] = {atts = {"tfa_codww2_fg_og"}, order = 1},
}

SWEP.AttachmentDependencies     = {}
SWEP.AttachmentExclusions       = {}
SWEP.AttachmentTableOverride    = {}
SWEP.AttachmentIconOverride     = {}


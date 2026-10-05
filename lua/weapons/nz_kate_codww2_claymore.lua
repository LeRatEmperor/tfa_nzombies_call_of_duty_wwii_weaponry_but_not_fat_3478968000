SWEP.Base = "tfa_melee_base"
SWEP.Category = "nZR: WWII Kate Melees"
SWEP.SubCategory = "Melee"
SWEP.Spawnable = TFA_BASE_VERSION and TFA_BASE_VERSION >= 4.7
SWEP.AdminSpawnable = true
SWEP.UseHands = true
SWEP.Type_Displayed = "Melee"
SWEP.Author = "Olli, Fox, Mav"
SWEP.Slot = 0
SWEP.PrintName = "Claymore"
SWEP.DrawCrosshair = true
SWEP.DrawCrosshairIronSights = false

--[Model]--
SWEP.ViewModel = "models/weapons/tfa_codww2/claymore/c_claymore.mdl"
SWEP.ViewModelFOV = 65
SWEP.WorldModel = "models/weapons/tfa_codww2/claymore/w_claymore.mdl"
SWEP.HoldType = "melee2"
SWEP.CameraAttachmentOffsets = {}
SWEP.CameraAttachmentScale = 2
SWEP.VMPos = Vector(0, 0, 0)
SWEP.VMAng = Vector(0, 0, 0)
SWEP.VMPos_Additive = true

SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
        Pos = {
        Up = -0.5,
        Right = 1.2,
        Forward = 3.2,
        },
        Ang = {
		Up = -100,
        Right = 180,
        Forward = -10
        },
		Scale = 1
}

--[NZombies]--
SWEP.NZPaPName = "Dragon Slayer"
SWEP.Ispackapunched = false

function SWEP:OnPaP()
self.Ispackapunched = true
self.MuzzleFlashEffect = "muz_pap"

self.Primary_TFA.Damage = 2700
self.Secondary_TFA.Damage = 2900
self:ClearStatCache()
return true
end

--[Gun Related]--
SWEP.Primary.Sound = Sound("TFA_CODWW2_SWORD.Swing")
SWEP.Primary.Sound_Hit = Sound("TFA_CODWW2_MELEE.Hit")
SWEP.Primary.Sound_HitFlesh = Sound("TFA_CODWW2_SWORD.Stab")
SWEP.Primary.DamageType = DMG_SLASH
SWEP.Primary.RPM = 100
SWEP.Primary.Damage = 900
SWEP.Primary.MaxCombo = 0
SWEP.Secondary.Damage = 1000
SWEP.Secondary.MaxCombo = 0

--[Traces]--
SWEP.Primary.Attacks = {
	{
		["act"] = ACT_VM_MISSLEFT, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		["len"] = 70, -- Trace distance
		["src"] = Vector(0, 0, 0), -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		["dir"] = Vector(-65, 0, -25), -- Trace direction/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		["dmg"] = SWEP.Secondary.Damage, --Damage
		["dmgtype"] = SWEP.Primary.DamageType,
		["delay"] = 5 / 30, --Delay
		["spr"] = true, --Allow attack while sprinting?
		["snd"] = SWEP.Primary.Sound, -- Sound ID
		["hitflesh"] = SWEP.Primary.Sound_HitFlesh,
		["hitworld"] = SWEP.Primary.Sound_Hit,
		["viewpunch"] = Angle(4, 3, 0), --viewpunch angle
		["end"] = 1.2, --time before next attack
		["hull"] = 1, --Hullsize
	}
}

SWEP.Secondary.Attacks = {
	{
		["act"] = ACT_VM_MISSLEFT, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		["len"] = 70, -- Trace distance
		["src"] = Vector(0, 0, 0), -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		["dir"] = Vector(-65, 0, -25), -- Trace direction/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		["dmg"] = SWEP.Secondary.Damage, --Damage
		["dmgtype"] = SWEP.Primary.DamageType,
		["delay"] = 5 / 30, --Delay
		["spr"] = true, --Allow attack while sprinting?
		["snd"] = SWEP.Primary.Sound, -- Sound ID
		["hitflesh"] = SWEP.Primary.Sound_HitFlesh,
		["hitworld"] = SWEP.Primary.Sound_Hit,
		["viewpunch"] = Angle(4, 3, 0), --viewpunch angle
		["end"] = 1.2, --time before next attack
		["hull"] = 1, --Hullsize
	}
}

--[Stuff]--
SWEP.ImpactDecal = "ManhackCut"
SWEP.InspectPos = Vector(5, -7, 0)
SWEP.InspectAng = Vector(0, 45, 10)
SWEP.Secondary.CanBash = false
SWEP.AltAttack = false
SWEP.AllowSprintAttack = false

--[Tables]--
SWEP.SequenceRateOverride = {
	["sprint_loop"] = 20 / 30
}

SWEP.EventTable = {
[ACT_VM_DRAW_DEPLOYED] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_SWORD.Raise") },
},
[ACT_VM_DRAW] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_SWORD.Raise") },
},
[ACT_VM_HOLSTER] = {
{ ["time"] = 2 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_SWORD.Holster") },
},
["inspect"] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_SWORD.Inspect1") },
{ ["time"] = 65 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_SWORD.Inspect2") },
},
["inspect_epic"] = {
{ ["time"] = 20 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_SWORD.EpicInspect1") },
{ ["time"] = 185 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_SWORD.EpicInspect2") },
},
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

SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_ANI -- ANI = mdl, HYBRID = ani + lua, Lua = lua only

SWEP.Base = "tfa_melee_base"
SWEP.Category = "nZR: WWII Kate Melees"
SWEP.SubCategory = "Melee"
SWEP.Spawnable = TFA_BASE_VERSION and TFA_BASE_VERSION >= 4.7
SWEP.AdminSpawnable = true
SWEP.UseHands = true
SWEP.Type_Displayed = "Melee"
SWEP.Author = "Olli, Fox, Mav"
SWEP.Slot = 0
SWEP.PrintName = "Combat Knife"
SWEP.DrawCrosshair = true
SWEP.DrawCrosshairIronSights = false

--[Model]--
SWEP.ViewModel = "models/weapons/tfa_codww2/combatknife/c_combatknife.mdl"
SWEP.ViewModelFOV = 65
SWEP.WorldModel = "models/weapons/tfa_codww2/combatknife/w_combatknife.mdl"
SWEP.HoldType = "knife"
SWEP.CameraAttachmentOffsets = {}
SWEP.CameraAttachmentScale = 2
SWEP.VMPos = Vector(0, -1, 0)
SWEP.VMAng = Vector(0, 0, 0)
SWEP.VMPos_Additive = true

SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
        Pos = {
        Up = -0.6,
        Right = 1.2,
        Forward = 3,
        },
        Ang = {
		Up = -90,
        Right = 0,
        Forward = 10
        },
		Scale = 1.1
}

--[NZombies]--
SWEP.NZPaPName = "Straight Point"
SWEP.Ispackapunched = false

function SWEP:OnPaP()
self.Ispackapunched = true
self.MuzzleFlashEffect = "muz_pap"

self.Primary_TFA.Damage = 1050
self.Secondary_TFA.Damage = 1150
self:ClearStatCache()
return true
end

--[Gun Related]--
SWEP.Primary.Sound = Sound("TFA_CODWW2_KNIFE.Swing")
SWEP.Primary.Sound_Hit = Sound("TFA_CODWW2_MELEE.Hit")
SWEP.Primary.Sound_HitFlesh = Sound("TFA_CODWW2_KNIFE.Stab")
SWEP.Primary.DamageType = DMG_SLASH
SWEP.Primary.RPM = 100
SWEP.Primary.Damage = 350
SWEP.Primary.MaxCombo = 0
SWEP.Secondary.Damage = 400
SWEP.Secondary.MaxCombo = 0

--[Traces]--
SWEP.Primary.Attacks = {
	{
		["act"] = ACT_VM_MISSLEFT, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		["len"] = 50, -- Trace distance
		["src"] = Vector(0, 0, 0), -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		["dir"] = Vector(-45, 0, -5), -- Trace direction/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		["dmg"] = SWEP.Secondary.Damage, --Damage
		["dmgtype"] = SWEP.Primary.DamageType,
		["delay"] = 8 / 30, --Delay
		["spr"] = true, --Allow attack while sprinting?
		["snd"] = SWEP.Primary.Sound, -- Sound ID
		["hitflesh"] = SWEP.Primary.Sound_HitFlesh,
		["hitworld"] = SWEP.Primary.Sound_Hit,
		["viewpunch"] = Angle(0, 0, 0), --viewpunch angle
		["end"] = 1.2, --time before next attack
		["hull"] = 1, --Hullsize
	}
}
SWEP.Secondary.Attacks = {
	{
		["act"] = ACT_VM_MISSRIGHT, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		["len"] = 55, -- Trace distance
		["src"] = Vector(0, 0, 0), -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		["dir"] = Vector(0, 35, 0), -- Trace direction/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		["dmg"] = SWEP.Secondary.Damage, --Damage
		["dmgtype"] = SWEP.Primary.DamageType,
		["delay"] = 5 / 30, --Delay
		["spr"] = true, --Allow attack while sprinting?
		["snd"] = SWEP.Primary.Sound, -- Sound ID
		["hitflesh"] = SWEP.Primary.Sound_HitFlesh,
		["hitworld"] = SWEP.Primary.Sound_Hit,
		["viewpunch"] = Angle(0, 0, 0), --viewpunch angle
		["end"] = 1.3, --time before next attack
		["hull"] = 1, --Hullsize
	}
}

--[Stuff]--
SWEP.ImpactDecal = "ManhackCut"
SWEP.InspectPos = Vector(4	, -5, 4)
SWEP.InspectAng = Vector(-5, 45, 15)
SWEP.Secondary.CanBash = false
SWEP.AltAttack = false
SWEP.AllowSprintAttack = false

--[Tables]--
SWEP.SequenceRateOverride = {
	[ACT_VM_MISSLEFT] = 35 / 30,
	["sprint_loop"] = 25 / 30,
}

SWEP.EventTable = {
[ACT_VM_DRAW_DEPLOYED] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_KNIFE.Draw") },
},
[ACT_VM_DRAW] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_KNIFE.Draw") },
},
[ACT_VM_HOLSTER] = {
{ ["time"] = 2 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_SML.Holster") },
},
[ACT_VM_FIDGET] = {
{ ["time"] = 1 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_KNIFE.Inspect1") },
{ ["time"] = 50 / 30, ["type"] = "sound", ["value"] = Sound("TFA_CODWW2_KNIFE.Inspect2") },
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

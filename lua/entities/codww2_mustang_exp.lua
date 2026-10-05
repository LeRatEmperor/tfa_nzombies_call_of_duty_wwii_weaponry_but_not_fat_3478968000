
-- Copyright (c) 2018-2020 TFA Base Devs

-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:

-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.

-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.

AddCSLuaFile()

ENT.Base = "tfa_exp_base"
ENT.PrintName = "Contact Explosive"
ENT.HasTrail = true

ENT.ExplosionSoundLyr1 = Sound("TFA_CODWW2_GRENADE.Trans")
ENT.ExplosionSoundLyr2 = Sound("TFA_CODWW2_GRENADE.Main")
ENT.ExplosionSoundLyr3 = Sound("TFA_CODWW2_GRENADE.Debris")
ENT.ExplosionSoundLyr4 = Sound("TFA_CODWW2_GRENADE.Dist")

ENT.Kaboom = false

DEFINE_BASECLASS(ENT.Base)

function ENT:PhysicsCollide(data, phys)
	if data.Speed > 60 and !self.Kaboom then
		self:Explode()
		self.Kaboom = true
	end

	util.Decal("Scorch", data.HitPos - data.HitNormal, data.HitPos + data.HitNormal)
	if (self:WaterLevel() <= 0) then
		ParticleEffect("ww2_20mm_explosion", self:GetPos(), data.HitNormal:Angle() * 179)
	else
		ParticleEffect("ww2_grenade_water_explosion", self:GetPos(), Angle(-90,0,0))
	end
end

function ENT:CreateRocketTrail()
	ParticleEffectAttach("ww2_expbolttrail", PATTACH_POINT_FOLLOW, self, 1)
end

function ENT:Initialize(...)
	BaseClass.Initialize(self, ...)

	if self.HasTrail then
		self:CreateRocketTrail()
	end
end

function ENT:Think()
	if (self:WaterLevel() > 0) and !self.hasStoppedParticles then
        self:StopParticles()
        self.hasStoppedParticles = true
    end
	
	self:NextThink(CurTime())
	return true
end

function ENT:DoExplosionEffect()
	self:EmitSound(self.ExplosionSoundLyr1)
	self:EmitSound(self.ExplosionSoundLyr2)
	self:EmitSound(self.ExplosionSoundLyr3)
	self:EmitSound(self.ExplosionSoundLyr4)
end

function ENT:Explode(data)
	if not IsValid(self.Inflictor) then
		self.Inflictor = self
	end

	self.Damage = self.mydamage or self.Damage
	local dmg = DamageInfo()
	dmg:SetInflictor(self.Inflictor)
	dmg:SetAttacker(IsValid(self:GetOwner()) and self:GetOwner() or self)
	dmg:SetDamage(self.Damage * 1.1)
	dmg:SetDamageType(bit.bor(DMG_BLAST, DMG_AIRBOAT))

	util.BlastDamageInfo(dmg, self:GetPos(), 150)
	util.ScreenShake(self:GetPos(), 80, 255, 1, 200)

	self:DoExplosionEffect()
	self:Remove()
end

AddCSLuaFile()

DEFINE_BASECLASS("weapon_custom_uh_base_gun")
SWEP.Base = "weapon_custom_uh_base_gun"

SWEP.PrintName = "M8A7"
SWEP.Category = "Black Ops III"
SWEP.SubCategory = ""

SWEP.Slot = 2 -- The slot the weapon will appear in when switching weapons, add 1 to get the actual slot (e.g. a value of 1 translates to weapon slot 2, the pistol slots)
SWEP.SlotPos = 3

SWEP.Spawnable = true -- Set this to true to make your weapon appear in the spawnmenu, set to false to hide the template

-- Appearance

SWEP.UseHands = false
SWEP.ViewModelFlip = false
SWEP.ViewModelFOV = 65
SWEP.ViewModel = "models/loyalists/blackops3/m8a7/v_ar_m8a7.mdl"
SWEP.WorldModel = "models/loyalists/blackops3/m8a7/w_ar_m8a7.mdl"
SWEP.LoweredPos = Vector(2.95, -3.057, -4.119)
SWEP.LoweredAng = Vector(-13.131, 33.537, -29.906)

SWEP.UseQCReloadEvents = false
SWEP.UseReloadTable    = true

SWEP.HoldType = "ar2"
SWEP.PassiveAnim = "passive"
SWEP.ZoomFov = 20

SWEP.FireModes = {
    {
        name = "4 Round Burst",
        shoot = function(ply, wep)
            -- Don't start a new burst if one is already going
            if wep._burstRemaining and wep._burstRemaining > 0 then return true end
            if not wep:CanPrimaryAttack() then return false end

            -- Initialize burst — fire first round immediately
            wep._burstRemaining = (wep.BurstCount or 3)
            wep._burstDelay = wep.BurstDelay or 0.1
            wep:FireBurstRound()

            return true
        end
    },
    {
        name = "Semi-Auto"
    }
}

SWEP.Primary.Sound          = Sound("CW_BLACKOPS3_M8A7_FIRE")
SWEP.Primary.ClipSize       = 32
SWEP.Primary.Ammo           = "ar2"
SWEP.Primary.DefaultClip    = 120
SWEP.Primary.MinDamage      = 20
SWEP.Primary.MaxDamage      = 30
SWEP.Primary.Automatic      = false
SWEP.Primary.TakeAmmo       = 1
SWEP.Primary.Force          = 6
SWEP.Primary.Spread         = 0.25
SWEP.Primary.Delay          = 0.06
SWEP.Primary.NumberofShots  = 1
SWEP.Primary.MinRecoil      = -1.0
SWEP.Primary.MaxRecoil      = -1.5
SWEP.TwoHanded                          = true
SWEP.ReloadSpeed = 1
SWEP.Chambering                         = true
SWEP.BurstCount = 4    -- rounds per burst
SWEP.BurstDelay = 0.05  -- seconds between each round

SWEP.AnimatedSprint                     = true

SWEP.MuzzleFlashType = "particle"
SWEP.MuzzleFlashParticle = "muzzleflash_6"
SWEP.MuzzleFlashLightColor = Vector(0, 200, 255)
SWEP.MuzzleFlashLightSize = 128

SWEP.MeleeDamage    = 50      -- Damage dealt by melee attack
SWEP.MeleeRange     = 64      -- Range of melee trace (Source units)
SWEP.MeleeDelay     = 0.6     -- Minimum time between melee attacks
SWEP.MeleeForce     = 300     -- Knockback force on hit
SWEP.MeleeHitDelay  = 0.15    -- Seconds after melee start to perform hit trace
SWEP.MeleeViewPunch = Angle(-5, 0, 0)  -- Camera punch on melee

SWEP.MeleeSound     = "weapons/blackops3/cloth/riot_shield_swing_cloth_00.wav"      -- Swing sound (leave empty for none)
SWEP.MeleeHitSound  = {"weapons/blackops3/rifle_butt/rifle_hit_00.wav", "weapons/blackops3/rifle_butt/rifle_hit_00.wav"}      -- Sound on hit
SWEP.MeleeMissSound = "nil"      -- Sound on miss

SWEP.MeleeInterruptReload = true

SWEP.MantleDuration = 0.6
SWEP._lastBO3IsVaulting = false
SWEP._lastBO3IsMantling = false

SWEP.IronSightsPos = Vector(-10.2104, -2.98, 1.0979)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.SwayPosition = 2.0

SWEP.AlternativePos = Vector(0, 0, 0) -- Shifts gun right, back, and down
SWEP.AlternativeAng = Angle(0, 0, 0)   -- Tilts it

SWEP.Animations = {
    ["shoot"] = "base_fire",
    ["reload"] = "base_reload",
    ["reload_empty"] = "base_reload_empty",
    ["iron_fire"] = "base_fire_ads",
    ["idle"] = "base_idle",
    ["deploy"] = "base_draw",
    ["melee"] = "base_melee",
    ["mantle"] = "base_mantle_over",
	["sprint_idle"] = "base_sprint_loop",
	["sprint_in"] = "base_sprint_in",
	["sprint_out"] = "base_sprint_out",
}

SWEP.AnimSounds = {
    ["reload"] = {
        {time = 0.35, sound = "Weapon_BLACKOPS3_M8A7.Magout"},
        {time = 1.41, sound = "Weapon_BLACKOPS3_M8A7.Magin"},
        {time = 1.90, sound = "Weapon_BLACKOPS3_M8A7.Tap"},
    },

    ["reload_empty"] = {
        {time = 0.35, sound = "Weapon_BLACKOPS3_M8A7.Magout"},
        {time = 1.41, sound = "Weapon_BLACKOPS3_M8A7.Magin"},
        {time = 1.90, sound = "Weapon_BLACKOPS3_M8A7.Tap"},
        {time = 2.25, sound = "Weapon_BLACKOPS3_M8A7.Bolt_Back"},
        {time = 2.45, sound = "Weapon_BLACKOPS3_M8A7.Bolt_Forward"},
    },
}

SWEP.CameraAttachment = "Camera"
SWEP.CameraReserve = false
SWEP.CameraOffset = Angle(0, 0, 0)

local bo3_camScale
if CLIENT then
    bo3_camScale = CreateClientConVar("bo3_camera_scale", "1.0", FCVAR_ARCHIVE, "BO3 camera bone animation scale")
end

function SWEP:CalcView(ply, pos, ang, fov)
    -- Camera bone angle tracking
    if self.CameraAttachment then
        local vm = self.Owner:GetViewModel()
        if IsValid(vm) then
            local seq = self.m_CurrentSequence or vm:GetSequenceName(vm:GetSequence()) or ""
            if not string.find(seq, "Fire") and not string.find(seq, "Idle") then
                local attID = vm:LookupAttachment(self.CameraAttachment)
                if attID and attID > 0 then
                    local att = vm:GetAttachment(attID)
                    if att then
                        if self.CameraOffset then ang:Add(self.CameraOffset) end
                        local localAng = vm:WorldToLocalAngles(att.Ang)
                        if self.CameraReserve then localAng:Mul(-1) end
                        localAng:Mul((bo3_camScale and bo3_camScale:GetFloat()) or 1)
                        ang:Add(localAng)
                    end
                end
            end
        end
    end

    -- Pass to UH base for viewbobbing and FOV zoom
    if BaseClass.CalcView then
        return BaseClass.CalcView(self, ply, pos, ang, fov)
    end
    return pos, ang, fov
end

function SWEP:ShootAnimation()
    -- If zoomed and "iron_fire" exists in Animations, return the key
    if self:GetUHBool("Zooming") and self.Animations and self.Animations["iron_fire"] then
        return "iron_fire"
    end
    -- If not zoomed and "shoot" exists in Animations, return the key
    if self.Animations and self.Animations["shoot"] then
        return "shoot"
    end
    return ACT_VM_PRIMARYATTACK
end

function SWEP:Holster(wep)
    -- Cancel any in-flight burst
    self._burstRemaining = nil
    self._burstNextFire = nil
    -- Cancel rechamber
    self._isRechambering = false
    -- Reset animation transition trackers
    self.wasZooming = false
    self.wasRunning = false
    -- Cancel melee
    if self._meleeActive then
        self._meleeActive = false
        self._meleeHitTime = nil
        self._meleeHitDone = nil
        self._meleeEndTime = nil
        self:ClearAnimSounds()
    end
    -- Cancel mantle
    if self._mantleActive then
        self._mantleActive = false
        self._mantleEndTime = nil
        self:ClearAnimSounds()
    end
    -- Note: timer.Simple closures will still fire but the above
    -- state resets make their checks self-correcting
    return BaseClass.Holster(self, wep)
end

function SWEP:HandleRunning( ct )
    if self:GetUHBool("Reloading") then
        return
    end
	
	local vm = self.Owner:GetViewModel()
    if IsValid(vm) then
        local fireDelay = self:GetNextPrimaryFire() - ct
        if fireDelay > 0.3 then return end
    end
	
	if self:GetNWFloat("DeployTime", 10) then


    local dist = self.Owner:GetVelocity():LengthSqr()
    local isSprinting = self.Owner:KeyDown( IN_SPEED ) and dist > self.Owner:GetWalkSpeed()^2
    local isSafeMode = self:GetNWInt("FireMode") == 0

    -- 1. SPRINTING (Takes Priority)
    if isSprinting then
        self:SetHoldType( self.PassiveAnim )
        self:SetUHBool("Running", true) -- Set to TRUE so animations play
        self:SetUHBool("Zooming", false)
        
        if self:GetUHBool("Reloading") then
            self:SetUHBool("Reloading", false)
            self.NextReload = ct + 0.5
            if timer.Exists("UHReload_"..self.Owner:SteamID()) then
                timer.Remove( "UHReload_"..self.Owner:SteamID() )
            end
        end

    -- 2. NOT SPRINTING
		else
			self:SetHoldType( self.HoldType )
        
			-- If we are in Safe Mode (and not sprinting), ensure we are flagged as NOT running.
			-- This allows the procedural lowering to take effect.
			if isSafeMode then
				self:SetUHBool("Running", false) 
			else
				self:SetUHBool("Running", false)
			end
		end
	end
end

-- ==========================================
-- START MANTLE
-- ==========================================

function SWEP:StartMantle()
    local ct = CurTime()
    local sp = game.SinglePlayer()
    local iftp = IsFirstTimePredicted()

    if not (sp or iftp) then return end

    self:SetUHBool("Zooming", false)
    if self:GetUHBool("Running") then
        self:SetUHBool("Running", false)
    end
    if self._meleeActive then
        self:EndMelee()
    end

    -- Cancel reload
    if self:GetUHBool("Reloading") then
        self:SetUHBool("Reloading", false)
        self:SetNWFloat("ReloadTime", 0)
        self:SetNWFloat("ReloadEndTime", 0)
        if timer.Exists("UHReload_"..self.Owner:SteamID()) then
            timer.Remove("UHReload_"..self.Owner:SteamID())
        end
    end

    -- Cancel burst
    self._burstRemaining = nil
    self._burstNextFire = nil

    self._mantleActive = true
    self._engineWantsIdle = nil
    self._customIdleActive = false
    self:ClearAnimSounds()

    self:EasySendWeaponAnim("mantle", ACT_VM_MELEE_SHOVE)

    local vm = self.Owner:GetViewModel()
    local animDuration = IsValid(vm) and vm:SequenceDuration() or (self.MantleDuration or 0.6)
    local mantleDur = math.max(animDuration, self.MantleDuration or 0.6)
    self._mantleEndTime = ct + mantleDur

    self:SetNextPrimaryFire(ct + mantleDur)
    self:SetNextSecondaryFire(ct + mantleDur)
    self.NextReload = ct + mantleDur
end


-- ==========================================
-- END MANTLE
-- ==========================================

function SWEP:EndMantle()
    self._mantleActive = false
    self._mantleEndTime = nil
    self:ClearAnimSounds()
    self._engineWantsIdle = true
end


function SWEP:Think()
    local ct = CurTime()

    -- ==========================================
    -- PARKOUR TRAVERSAL DETECTION
    -- ==========================================
    local ply = self.Owner
    if IsValid(ply) then
        local isVaulting = ply:GetNW2Bool("BO3_IsVaulting", false)
        local isMantling = ply:GetNW2Bool("BO3_IsMantling", false)
        local isInTraversal = isVaulting or isMantling

        if isInTraversal and not self._mantleActive then
            if SERVER or IsFirstTimePredicted() then
                self:StartMantle()
            end
        end

        if not isInTraversal and self._mantleActive then
            self:EndMantle()
        end

        self._lastBO3IsVaulting = isVaulting
        self._lastBO3IsMantling = isMantling
    end

    -- Mantle timeout safety
    if self._mantleActive and self._mantleEndTime and ct >= self._mantleEndTime then
        self:EndMantle()
    end

    -- Continue burst rounds (works even if player released M1)
    if self._burstRemaining and self._burstRemaining > 0 then
        if ct >= (self._burstNextFire or 0) then
            self:FireBurstRound()
        end
    end

    -- Melee hit timing
    if self._meleeActive and not self._meleeHitDone and self._meleeHitTime and ct >= self._meleeHitTime then
        self._meleeHitDone = true
        if SERVER or IsFirstTimePredicted() then
            self:DoMeleeTrace()
        end
    end

    -- Melee end timing
    if self._meleeActive and self._meleeEndTime and ct >= self._meleeEndTime then
        self:EndMelee()
    end

    BaseClass.Think(self)
    self:HandleSprintingAnimations()
end

function SWEP:GetViewModelPosition(pos, ang)
    local ft = FrameTime()

    -- Pass through BaseClass logic (Sway, Inspect, etc.)
    if BaseClass and BaseClass.GetViewModelPosition then
        pos, ang = BaseClass.GetViewModelPosition(self, pos, ang)
    end

    -- ==========================================
    -- HYBRID LOWERING LOGIC (Safe Mode)
    -- ==========================================
    
    -- We only use procedural LoweredPos/Ang if we are in SAFE MODE
    -- AND we are NOT Sprinting.
    local target = 0
    if self:GetNWInt("FireMode") == 0 and not self:GetUHBool("Running") then
        target = 1
    end

    self._uhLower = Lerp(ft * 8, self._uhLower or 0, target)

    -- Apply Safe Mode Lowering (Procedural)
    if self._uhLower > 0.001 then
        local lp = self.LoweredPos or vector_origin
        local la = self.LoweredAng or angle_zero

        local ap, ay, ar = 0, 0, 0
        if isangle(la) then
            ap, ay, ar = la.p, la.y, la.r
        elseif isvector(la) then
            ap, ay, ar = la.x, la.y, la.z
        end

        ang:RotateAroundAxis(ang:Right(),   ap * self._uhLower)
        ang:RotateAroundAxis(ang:Up(),      ay * self._uhLower)
        ang:RotateAroundAxis(ang:Forward(), ar * self._uhLower)

        pos = pos
            + ang:Right()   * lp.x * self._uhLower
            + ang:Forward() * lp.y * self._uhLower
            + ang:Up()      * lp.z * self._uhLower
    end

    -- ==========================================
    -- ALTERNATIVE POS/ANG LOGIC (Ultra Guns Style)
    -- ==========================================
    
    -- Determine if we should show the offset
    -- We hide it if: Sprinting, Zooming, or in Safe Mode
    local targetAlt = 1
    if self:GetUHBool("Running") or self:GetUHBool("Zooming") or self:GetNWInt("FireMode") == 0 then
        targetAlt = 0
    end

    -- Smoothly interpolate the factor
    self._altFactor = Lerp(ft * 10, self._altFactor or 0, targetAlt)

    -- Apply the offset if it exists
    if (self.AlternativePos or self.AlternativeAng) and self._altFactor > 0.01 then
        local ap = self.AlternativePos or vector_origin
        local aa = self.AlternativeAng or angle_zero

        -- Apply Position Offset
        pos = pos
            + ang:Right()   * ap.x * self._altFactor
            + ang:Forward() * ap.y * self._altFactor
            + ang:Up()      * ap.z * self._altFactor

        -- Apply Angle Offset
        local ap_p, ap_y, ap_r = 0, 0, 0
        if isangle(aa) then
            ap_p, ap_y, ap_r = aa.p, aa.y, aa.r
        elseif isvector(aa) then
            ap_p, ap_y, ap_r = aa.x, aa.y, aa.z
        end

        ang:RotateAroundAxis(ang:Right(),   ap_p * self._altFactor)
        ang:RotateAroundAxis(ang:Up(),      ap_y * self._altFactor)
        ang:RotateAroundAxis(ang:Forward(), ap_r * self._altFactor)
    end

    -- ==========================================
    -- SPRINT Z-AXIS OFFSET (Smoothed)
    -- ==========================================
    local targetZ = self:GetUHBool("Running") and 0 or 0
    self._sprintZOffset = Lerp(ft * 10, self._sprintZOffset or 0, targetZ)
    pos = pos + ang:Up() * self._sprintZOffset

    return pos, ang
end

function SWEP:HandleSprintingAnimations()
    local ply = self:GetOwner()
    
    if not IsValid(ply) or not ply:IsPlayer() then return end

    -- Use UH variable for running state
    local isRunning = self:GetUHBool("Running")
    local isReloading = self:GetUHBool("Reloading")

    -- Initialize tracking variable
    if self.wasRunning == nil then self.wasRunning = false end

    local vm = ply:GetViewModel()
    if not IsValid(vm) then return end

    -- TRANSITION: Enter Sprint
    if isRunning and not self.wasRunning then
        if not isReloading then
            self:EasySendWeaponAnim("sprint_in", ACT_VM_SPRINT_ENTER)
        end
    
    -- TRANSITION: Exit Sprint
    elseif not isRunning and self.wasRunning then
        if not isReloading then
            self:EasySendWeaponAnim("sprint_out", ACT_VM_SPRINT_LEAVE)
        end
    
    -- LOOPING: While Sprinting (and not reloading)
    elseif isRunning and not isReloading then
        -- If the current sprint animation finished (cycle >= 1), restart it
        if vm:GetCycle() >= 1 then
            self:EasySendWeaponAnim("sprint_idle", ACT_VM_SPRINT_IDLE)
        end
    end

    self.wasRunning = isRunning
end

function SWEP:FireBurstRound()
    if not IsValid(self) or not IsValid(self.Owner) then return end
    if not self:CanPrimaryAttack() then
        self._burstRemaining = nil
        return
    end

    local ct = CurTime()
    local sp = game.SinglePlayer()
    local iftp = IsFirstTimePredicted()

    -- Bullets
    if SERVER or iftp then
        if self:GetNWBool("Silenced") then
            self:ShootBullets(self.Owner:GetShootPos(), self.Owner:GetAimVector(), math.Round(math.random(self.Primary.MinDamage, self.Primary.MaxDamage) * 0.95), self.Penetration or 2)
        else
            self:ShootBullets(self.Owner:GetShootPos(), self.Owner:GetAimVector(), math.random(self.Primary.MinDamage, self.Primary.MaxDamage), self.Penetration or 2)
        end
    end

    -- Recoil
    local recoil = util.SharedRandom("uh_recoil", self.Primary.MinRecoil, self.Primary.MaxRecoil) * (self:GetUHBool("Zooming") and 0.35 or 1)

    if sp or (CLIENT and iftp) then
            self:DoMuzzleFlash()
                
            self:CreateSmoke( self:GetMuzzle(), self.Primary.Delay + (self.Primary.Automatic and 0.14 or 0.32) )
                
            if not self.NoShell then
                self:CreateShell( self.ShellDelay or 0, self.ShellHeat )
            end
                
            self.Owner:SetEyeAngles( self.Owner:EyeAngles() + Angle( recoil, 0, 0 ) )
    end

    self.Owner:ViewPunch(Angle(recoil, 0, 0))

    -- Animation: uses ShootAnimation() which checks ["iron_fire"] (zoomed)
    -- or ["fire"] (hip), falls back to ACT_VM_PRIMARYATTACK.
    local shootAnim = self:ShootAnimation()
    if type(shootAnim) == "string" then
        self:EasySendWeaponAnim(shootAnim, ACT_VM_PRIMARYATTACK)
    else
        self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
    end

    self.Owner:SetAnimation(PLAYER_ATTACK1)
    self.Owner:MuzzleFlash()

    local fireSound = self:GetShootSound()
    self:EmitSound(fireSound, 110, 100, 1, CHAN_WEAPON)
    self:TakePrimaryAmmo(self.Primary.TakeAmmo)

    self.NextReload = CurTime() + 0.5
    self:PostShoot()

    -- Burst timing
    if SERVER or iftp then
        self._burstRemaining = self._burstRemaining - 1

        if self._burstRemaining > 0 then
            self._burstNextFire = ct + self._burstDelay
            self:SetNextPrimaryFire(ct + self._burstDelay)
        else
            self._burstRemaining = nil
            self:SetNextPrimaryFire(ct + self.Primary.Delay * 3)
            self:SetNextSecondaryFire(ct + self.Primary.Delay * 3)
        end
    end
end

-- ==========================================
-- PRIMARY ATTACK OVERRIDE
-- ==========================================
-- E + M1 = melee attack (Ultra Guns style)
-- M1 only = normal shooting (delegates to base)

function SWEP:PrimaryAttack()
    -- Block during melee or mantle animation
    if self._meleeActive then return end
    if self._mantleActive then return end

    -- E + M1 = melee
    if self.Owner:KeyDown(IN_USE) then
        local ct = CurTime()
        if ct < (self._nextMelee or 0) then return end
        if self:GetUHBool("Reloading") then return end
        if self:GetNWFloat("DeployTime") > ct then return end
        if self:GetNWInt("FireMode") == 0 then return end

        if SERVER or IsFirstTimePredicted() then
            self:MeleeAttack()
        end
        return
    end

    -- Normal shooting — delegate to base
    return BaseClass.PrimaryAttack(self)
end


-- ==========================================
-- MELEE ATTACK
-- ==========================================

function SWEP:MeleeAttack()
    local ct = CurTime()
    local sp = game.SinglePlayer()
    local iftp = IsFirstTimePredicted()

    if not (sp or iftp) then return end

    self:SetUHBool("Zooming", false)

    if self:GetUHBool("Running") then
        self:SetUHBool("Running", false)
    end

    if self.MeleeInterruptReload ~= false and self:GetUHBool("Reloading") then
        self:SetUHBool("Reloading", false)
        self:SetNWFloat("ReloadTime", 0)
        self:SetNWFloat("ReloadEndTime", 0)
        if timer.Exists("UHReload_"..self.Owner:SteamID()) then
            timer.Remove("UHReload_"..self.Owner:SteamID())
        end
    end

    self._meleeActive = true
    self._engineWantsIdle = nil
    self._customIdleActive = false
    self:ClearAnimSounds()

    self:EasySendWeaponAnim("melee", ACT_VM_MELEE)

    local vm = self.Owner:GetViewModel()
    local animDuration = IsValid(vm) and vm:SequenceDuration() or 0.5

    self._meleeHitTime = ct + (self.MeleeHitDelay or 0.15)
    self._meleeHitDone = false
    self._meleeEndTime = ct + animDuration
    self._nextMelee = ct + (self.MeleeDelay or 0.6)

    self:SetNextPrimaryFire(ct + animDuration)
    self:SetNextSecondaryFire(ct + animDuration)
    self.NextReload = ct + animDuration

    self:PlayMeleeSound(self.MeleeSound, 75, 100)
end


-- ==========================================
-- MELEE HIT TRACE
-- ==========================================

function SWEP:PlayMeleeSound(soundEntry, vol, pitch)
    if not soundEntry then return end
    local snd = soundEntry
    if istable(soundEntry) then
        snd = soundEntry[math.random(1, #soundEntry)]
    end
    if snd and snd ~= "" then
        self:EmitSound(snd, vol or 75, pitch or 100, 1, CHAN_USER_BASE)
    end
end

function SWEP:DoMeleeTrace()
    local ply = self.Owner
    if not IsValid(ply) then return end

    local pos = ply:GetShootPos()
    local aim = ply:GetAimVector()
    local range = self.MeleeRange or 64

    local tr = util.TraceHull({
        start = pos,
        endpos = pos + aim * range,
        filter = ply,
        mins = Vector(-10, -10, -10),
        maxs = Vector(10, 10, 10),
        mask = MASK_SHOT_HULL,
    })

    if tr.Hit then
        local target = tr.Entity

        if IsValid(target) and SERVER then
            local dmg = DamageInfo()
            dmg:SetDamage(self.MeleeDamage or 50)
            dmg:SetAttacker(ply)
            dmg:SetInflictor(self)
            dmg:SetDamageForce(aim * (self.MeleeForce or 300))
            dmg:SetDamagePosition(tr.HitPos)
            dmg:SetDamageType(DMG_CLUB)

            target:TakeDamageInfo(dmg)
        end

        if SERVER then
            util.ScreenShake(tr.HitPos, 3, 0.1, 0.3, 32)
        end

        self:PlayMeleeSound(self.MeleeHitSound, 75, 100)
    else
        self:PlayMeleeSound(self.MeleeMissSound, 65, 100)
    end

    ply:ViewPunch(self.MeleeViewPunch or Angle(-3, 0, 0))
end


-- ==========================================
-- MELEE END
-- ==========================================

function SWEP:EndMelee()
    self._meleeActive = false
    self._meleeHitTime = nil
    self._meleeHitDone = nil
    self._meleeEndTime = nil
    self:ClearAnimSounds()
    self._engineWantsIdle = true
end


-- ==========================================
-- SECONDARY ATTACK GUARD
-- ==========================================

function SWEP:SecondaryAttack()
    if self._meleeActive then return end
    if self._mantleActive then return end
    return BaseClass.SecondaryAttack(self)
end


-- ==========================================
-- RELOAD GUARD
-- ==========================================

function SWEP:Reload()
    if self._meleeActive then return end
    if self._mantleActive then return end
    return BaseClass.Reload(self)
end


-- ==========================================
-- DEPLOY OVERRIDE
-- ==========================================

function SWEP:Deploy()
    BaseClass.Deploy(self)
	
	self:SetHoldType( self.HoldType )

    if self.Animations and self.Animations["deploy"] then
        local vm = self.Owner:GetViewModel()
        if IsValid(vm) then
            self:EasySendWeaponAnim("deploy", ACT_VM_DRAW)
            local dur = vm:SequenceDuration()
            self:SetNextPrimaryFire(CurTime() + dur)
            self:SetNextSecondaryFire(CurTime() + dur)
            self.NextReload = CurTime() + dur
            self._nextIdlePlay = nil
            self._deployEndTime = CurTime() + dur
            self:SetNWFloat("DeployTime", 0)
        end
    end

    -- Reset melee state
    self._meleeActive = nil
    self._meleeHitTime = nil
    self._meleeHitDone = nil
    self._meleeEndTime = nil
    self._nextMelee = nil

    -- Reset mantle state
    self._mantleActive = nil
    self._mantleEndTime = nil
    self._lastBO3IsVaulting = false
    self._lastBO3IsMantling = false

    return false
end


-- ==========================================
-- WORLD MODEL
-- ==========================================

if CLIENT then
        local WorldModel = ClientsideModel(SWEP.WorldModel)
        WorldModel:SetSkin(1)
        WorldModel:SetNoDraw(true)

        function SWEP:DrawWorldModel()
                local _Owner = self:GetOwner()
                if IsValid(_Owner) then
                        local offsetVec = Vector(0, -2, -0.5)
                        local offsetAng = Angle(180, 180, 80)
                        local boneid = _Owner:LookupBone("ValveBiped.Bip01_R_Hand")
                        if not boneid then return end
                        local matrix = _Owner:GetBoneMatrix(boneid)
                        if not matrix then return end
                        local newPos, newAng = LocalToWorld(offsetVec, offsetAng, matrix:GetTranslation(), matrix:GetAngles())
                        WorldModel:SetPos(newPos)
                        WorldModel:SetAngles(newAng)
                        WorldModel:SetupBones()
                else
                        WorldModel:SetPos(self:GetPos())
                        WorldModel:SetAngles(self:GetAngles())
                end
                WorldModel:DrawModel()
        end
end
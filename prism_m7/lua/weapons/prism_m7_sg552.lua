SWEP.Base = "trm_gun_base"
SWEP.Category = "TriggerBase Weapon"
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.PrintName = "棱镜 M7 步枪 (SG552)"
SWEP.Author = "不会贴皮の久辞/滤波电容_大m/梦情/遥望星空的雪/初序/Punizione/橙枫"
SWEP.DrawCrosshair = false
SWEP.DrawCrossHairIS = false
SWEP.ViewModel = "models/v_models/v_rif_sg552.mdl"
SWEP.UseHands = false
SWEP.ViewModelFOV = 70
SWEP.VMPos = Vector(0, -3, 0)
SWEP.VMAng = Vector(0, 0, 0)
SWEP.WorldModel = "models/w_models/weapons/w_rifle_sg552.mdl"
SWEP.Slot = 2
SWEP.Primary.ClipSize = 30
SWEP.Primary.Chamber = 1
SWEP.Primary.DefaultClip = 0
SWEP.Primary.Ammo = "ar2"
SWEP.Primary.SpecialAmmo = -1
SWEP.Primary.RPM = 680
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 33
SWEP.Primary.Force = 1
SWEP.Primary.NumBullets = 1
SWEP.Primary.Sound = Sound("trb_prism_m7_sg552_fire")
SWEP.ReloadType = "Magzine"
SWEP.VMOffset = {
    Idle = { Pos = Vector(0, 30, 0), Ang = Angle(0, 0, 0) },
    Sprint = { Pos = Vector(0, 0, 0), Ang = Angle(0, 0, 0) },
    Crouch = { Pos = Vector(-2, 0, 3), Ang = Angle(0, 0, -15) }
}
SWEP.Effects = {
    Muzzle = { effect = "MuzzleEffect", attachment = "muzzle" },
    Shell = { attachment = "shell", effect = "RifleShellEject", Pos = Vector(0, 0, 0), Ang = Angle(20, 0, 0), Magnitude = 10, Primary = true }
}
SWEP.HoldType = "ar2"
SWEP.WorldModelOffsets = { Bone = "tag_sling", Angles = Angle(180, 90, 0), Pos = Vector(-1, 9.5, -5) }
SWEP.Sight = {
    Origin = "muzzle", Align = nil,
    Angles = Angle(0, 0, -90), Pos = Vector(-3.07, -1, 0.1),
    Type = "Attachment", PoseParameter = { "aim_offset" }
}
SWEP.Recoil = {
    Vertical = { 1.8, 1.8 }, Horizonal = { -0.3, 0.3 },
    AdsMultiplier = 0.1, KickDown = 1, Shake = 0.8
}
SWEP.VisualRecoil = {
    Vertical = { 0.8, 0.8 }, Horizonal = { -0.1, 0.1 },
    Backward = { 0.1, 0.1, 1 }, RecoverSpeed = 0.1, RecoverDelay = 0.1, AdsMultiplier = 1
}
SWEP.Spread = {
    Base = 0.008, Vertical = 1.0, Horizontal = 1.0,
    Max = 0.18, Increase = 0.008, Recover = 0.3, Delay = 0.1
}
SWEP.Aim = { Spread = 0.004, SpreadFollowPrimary = false, Scale = 1.3, Time = 0.4 }
SWEP.MoveSpeed = { Walk = 0.95, Run = 1, Aim = 0.8 }
SWEP.CameraAttachment = "Camera"
SWEP.AltSwitch = false
SWEP.Animations = {
    ["Draw"] = { sequence = { "base_draw" } },
    ["Draw_First"] = { sequence = { "base_ready" } },
    ["Holster"] = { sequence = { "base_holster" } },
    ["Idle"] = { sequence = { "base_idle" } },
    ["Idle_Empty"] = { sequence = { "empty_idle" } },
    ["Iron_Idle"] = { sequence = { "base_idle" } },
    ["Sprint"] = { sequence = { "base_sprint" }, Speed = 1.1 },
    ["Sprint_Empty"] = { sequence = { "empty_sprint" }, Speed = 1.1 },
    ["Fire"] = { sequence = { "base_fire" } },
    ["Fire_Last"] = { sequence = { "base_fire_last" } },
    ["Iron_Fire"] = { sequence = { "iron_fire" } },
    ["Iron_Fire_Last"] = { sequence = { "iron_fire_last" } },
    ["Reload"] = {
        sequence = { "base_reload" },
        Speed = 1.2,
        Length = 1,
        events = {
            { time = 0.2, callback = function(self) self:EmitSound("weapons/sg552/gunother/sg552_clipout.wav") end },
            { time = 0.5, callback = function(self) self:MagzineLoaded() end },
            { time = 0.6, callback = function(self) self:EmitSound("weapons/sg552/gunother/sg552_clipin.wav") end }
        }
    },
    ["Reload_Empty"] = {
        sequence = { "base_reloadempty" },
        Speed = 1.2,
        Length = 1,
        events = {
            { time = 0.2, callback = function(self) self:EmitSound("weapons/sg552/gunother/sg552_clipout.wav") end },
            { time = 0.5, callback = function(self) self:MagzineLoaded() end },
            { time = 0.6, callback = function(self) self:EmitSound("weapons/sg552/gunother/sg552_clipin.wav") end }
        }
    }
}
SWEP.BasePoseParameter = {}

--ProfessionFramework.AlwaysUseStartingKits = false
--ProfessionFramework.LogLevel = 3
local addProfession = ProfessionFramework.addProfession 
local getProfession = ProfessionFramework.getProfession 

-- set this to true since we skip the vanilla definitions.
ProfessionFramework.RemoveDefaultProfessions = true

-- 1. Slacker
-- addProfession('p_slacker', {
--     name = "UI_p_slacker",
--     description = "UI_p_slacker_desc",
--     --icon = "p_slacker",
--     cost = 12,
--     traits = { "t_untalented" },
--     clothing = {
--         Tshirt = { "Base.Shirt_CropTopNoArmTINT", "Base.Shirt_CropTopTINT", "Base.Tshirt_Sport" },
--         Shoes = { "Base.Shoes_ArmyBoots", "Base.Shoes_BlackBoots" },
--     },
-- })

-- Rifleman = +5 Aiming, +3 Reloading, +2 Running, +2 Strength and Mechanics Recipes.
-- Marksman = +7 Aiming, +1 Reloading, +3 Running, +1 Strength skills.
-- Assault  = +3 Aiming, +6 Reloading, +1 Running, +3 Strength and Bomb Recipes.
-- Medic    = +3 Aiming, +3 Reloading, +4 Running, +2 Strength, and +8 Doctor skills.

-- [Perks.Tailoring] = 3,
-- [Perks.Doctor] = 2,
-- [Perks.Cooking] = 1,
-- [Perks.Farming] = 1,
-- [Perks.SmallBlade] = 1,
-- [Perks.Blunt] = 3,
-- [Perks.SmallBlunt] = 2,
-- [Perks.Doctor] = 1,
-- [Perks.Nimble] = 1,
-- [Perks.Maintenance] = 1,
-- [Perks.Sprinting] = 1,
-- [Perks.Strength] = 1,
-- [Perks.Fitness] = 1,
-- [Perks.Aiming] = 3,
-- [Perks.Reloading] = 2,
-- [Perks.Nimble] = 1,
-- [Perks.Electricity] = 3,
-- [Perks.Mechanics] = 2,
-- [Perks.MetalWelding] = 1,
-- [Perks.Woodwork] = 1,
-- [Perks.Maintenance] = 1,

-- 2. Rifleman (mid, mechanics)
addProfession('p_rifleman', {
    name = "UI_p_rifleman",
    description = "UI_p_rifleman_desc",
    icon = "p_rifleman",
    cost = 0,
    xp = {
        [Perks.Aiming] = 5,
        [Perks.Reloading] = 3,
        [Perks.Sprinting] = 2,
        [Perks.Strength] = 2,
        [Perks.SmallBlade] = 2,
    },
    recipes = { "Basic Mechanics", "Intermediate Mechanics", "Advanced Mechanics" },
    clothing = {
        Back = { "Base.Bag_Military" },
        Hat = { "Base.Hat_BonnieHat", "Base.Hat_BonnieHat_CamoGreen", "Base.Hat_BaseballCapArmy" },
        Shirt = { "Base.Shirt_CamoGreen", "Base.Shirt_CamoDesert", "Base.Shirt_CamoUrban" },
        TorsoExtra = { "Base.Vest_Hunting_Camo", "Base.Vest_BulletCivilian" },
        Shoes = { "Base.Shoes_RidingBoots", "Base.Shoes_ArmyBootsDesert", "Base.Shoes_BlackBoots" },
    },
})

-- 3. Marksman
addProfession('p_marksman', {
    name = "UI_p_marksman",
    description = "UI_p_marksman_desc",
    icon = "p_rifleman",
    cost = 0,
    xp = {
        [Perks.Aiming] = 7,
        [Perks.Reloading] = 1,
        [Perks.Sprinting] = 3,
        [Perks.Strength] = 1,
        [Perks.SmallBlade] = 2,
    },
    clothing = {
        Back = { "Base.Bag_Military" },
        Hat = { "Base.Hat_BonnieHat", "Base.Hat_BonnieHat_CamoGreen", "Base.Hat_BaseballCapArmy" },
        Shirt = { "Base.Shirt_CamoGreen", "Base.Shirt_CamoDesert", "Base.Shirt_CamoUrban" },
        TorsoExtra = { "Base.Vest_Hunting_Camo", "Base.Vest_BulletCivilian" },
        Shoes = { "Base.Shoes_RidingBoots", "Base.Shoes_ArmyBootsDesert", "Base.Shoes_BlackBoots" },
    },
})

-- 3. Assault (bombs, close combat)
addProfession('p_assault', {
    name = "UI_p_assault",
    description = "UI_p_assault_desc",
    icon = "p_rifleman",
    cost = 0,
    xp = {
        [Perks.Aiming] = 3,
        [Perks.Reloading] = 6,
        [Perks.Sprinting] = 1,
        [Perks.Strength] = 3,
        [Perks.Electricity] = 3,
        [Perks.Blunt] = 3,
        [Perks.SmallBlunt] = 2,
        [Perks.SmallBlade] = 1,
    },
    recipes = { "Make Aerosol bomb", "Make Flame bomb", "Make Pipe bomb", "Make Noise generator", "Make Smoke Bomb" },
    clothing = {
        Back = { "Base.Bag_Military" },
        Hat = { "Base.Hat_BonnieHat", "Base.Hat_BonnieHat_CamoGreen", "Base.Hat_BaseballCapArmy" },
        Shirt = { "Base.Shirt_CamoGreen", "Base.Shirt_CamoDesert", "Base.Shirt_CamoUrban" },
        TorsoExtra = { "Base.Vest_Hunting_Camo", "Base.Vest_BulletCivilian" },
        Shoes = { "Base.Shoes_RidingBoots", "Base.Shoes_ArmyBootsDesert", "Base.Shoes_BlackBoots" },
    },
})

-- 3. Medic (melee)
addProfession('p_medic', {
    name = "UI_p_medic",
    description = "UI_p_medic_desc",
    icon = "p_rifleman",
    cost = 0,
    xp = {
        [Perks.Aiming] = 3,
        [Perks.Reloading] = 3,
        [Perks.Sprinting] = 4,
        [Perks.Strength] = 2,
        [Perks.Doctor] = 8,
        [Perks.Fitness] = 2,
        [Perks.SmallBlade] = 4,
    },
    clothing = {
        Back = { "Base.Bag_Military" },
        Hat = { "Base.Hat_BonnieHat", "Base.Hat_BonnieHat_CamoGreen", "Base.Hat_BaseballCapArmy" },
        Shirt = { "Base.Shirt_CamoGreen", "Base.Shirt_CamoDesert", "Base.Shirt_CamoUrban" },
        TorsoExtra = { "Base.Vest_Hunting_Camo", "Base.Vest_BulletCivilian" },
        Shoes = { "Base.Shoes_RidingBoots", "Base.Shoes_ArmyBootsDesert", "Base.Shoes_BlackBoots" },
    },
})
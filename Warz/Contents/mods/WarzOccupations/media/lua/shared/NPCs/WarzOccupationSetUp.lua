ProfessionFramework.RemoveDefaultProfessions = true

--ProfessionFramework.AlwaysUseStartingKits = false
--ProfessionFramework.LogLevel = 3

local addProfession = ProfessionFramework.addProfession 
local getProfession = ProfessionFramework.getProfession 

-- 1. Slacker
addProfession('p_slacker', {
    name = "UI_p_slacker",
    description = "UI_p_slacker_desc",
    icon = "p_slacker",
    cost = 12,
    traits = { "t_untalented" },
})

-- 2. Hunter (aiming and minor foraging)
addProfession('p_hunter', {
    name = "UI_p_hunter",
    description = "UI_p_hunter_desc",
    icon = "p_hunter",
    cost = -6,
    xp = {
        [Perks.Aiming] = 3,
        [Perks.Trapping] = 4,
        [Perks.Fitness] = 1,
        [Perks.Fishing] = 1,
        [Perks.PlantScavenging] = 1,
    },
    traits = { "t_hunter", "Outdoorsman2" },
    clothing = {
        Hat = { "Base.Hat_BonnieHat", "Base.Hat_BonnieHat_CamoGreen" },
        TorsoExtra = { "Base.Vest_Hunting_Camo" },
        FullTop = { "Base.Ghillie_Top" },
        Pants = { "Base.Ghillie_Trousers" },
        Shoes = { "Base.Shoes_ArmyBoots", "Base.Shoes_ArmyBootsDesert", "Base.Shoes_BlackBoots" },
    },
})

-- 3. Gatherer (foraging)
addProfession('p_gatherer', {
    name = "UI_p_gatherer",
    icon = "p_gatherer",
    cost = -6,
    xp = {
        [Perks.PlantScavenging] = 4,
        [Perks.Strength] = 1,
    },
    traits = { "t_gatherer", "Organized2", "Outdoorsman2", "Lucky2" },
    clothing = {
        Back = { "Base.Bag_Satchel" },
        Hat = { "Base.Hat_BonnieHat", "Base.Hat_BonnieHat_CamoGreen" },
        Shoes = { "Base.Shoes_ArmyBoots", "Base.Shoes_ArmyBootsDesert", "Base.Shoes_BlackBoots", "Base.Shoes_Wellies" },
    },
})

-- 4. Scavenger (looting)
addProfession('p_scavenger', {
    name = "UI_p_scavenger",
    description = "UI_p_scavenger_desc",
    icon = "p_scavenger",
    cost = -6,
    xp = {
        [Perks.Sneak] = 2,
        [Perks.Lightfoot] = 2,
        [Perks.PlantScavenging] = 2,
        [Perks.Strength] = 1,
    },
    traits = { "t_scavenger", "Organized2", "Lucky2" },
    clothing = {
        Back = { "Base.Bag_DuffelBagTINT" },
        Hands = { "Base.Gloves_LeatherGloves", "Base.Gloves_LeatherGlovesBlack" },
        Neck = { "Base.Necklace_Choker", "Base.Necklace_Choker_Sapphire", "Base.Necklace_Choker_Amber" },
        Shoes = { "Base.Shoes_ArmyBoots", "Base.Shoes_ArmyBootsDesert", "Base.Shoes_BlackBoots" },
    },
})

-- 5. Smuggler (sprinting)
addProfession('p_smuggler', {
    name = "UI_p_smuggler",
    description = "UI_p_smuggler_desc",
    icon = "p_smuggler",
    cost = -4,
    xp = {
        [Perks.Fitness] = 3,
        [Perks.Sprinting] = 3,
    },
    traits = { "t_smuggler", "Organized2", "Outdoorsman2" },
    clothing = {
        Back = { "Base.Bag_Satchel" },
        Shoes = { "Base.Shoes_ArmyBoots", "Base.Shoes_ArmyBootsDesert", "Base.Shoes_BlackBoots" },
    },
})

-- 6. Soldier
addProfession('p_soldier', {
    name = "UI_p_soldier",
    description = "UI_p_soldier_desc",
    icon = "p_soldier",
    cost = -8,
    xp = {
        [Perks.Aiming] = 4,
        [Perks.Nimble] = 1,
        [Perks.Reloading] = 2,
        [Perks.Strength] = 1,
    },
    traits = { "t_soldier", "Desensitized" },
    clothing = {
        Hat = {"Base.Hat_Cowboy", "Base.Hat_Beany"},
        --Mask = {"Base.Hat_BandanaMask", "Base.Hat_BandanaMaskTINT"},
        --TorsoExtra = {"Base.Vest_BulletPolice"},
        --FullHat = {"Base.Hat_CrashHelmetFULL", "Base.Hat_Army"},
        --Back = {"Base.Bag_Schoolbag", "Base.Bag_DuffelBagTINT"},
        --Jacket = {"Base.Jacket_WhiteTINT"},
        --Pants = {"Base.Trousers_CamoDesert", "Base.Trousers_CamoGreen", "Base.Trousers_CamoUrban"},
        --Shoes =  {"Base.Shoes_ArmyBoots", "Base.Shoes_ArmyBootsDesert", "Base.Shoes_BlackBoots"},
    },
})

-- 7. Farmer (farmer + axeman)
addProfession('p_farmer', {
    name = "UI_p_farmer",
    icon = "p_farmer",
    cost = -4,
    xp = {
        [Perks.Farming] = 5,
        [Perks.Trapping] = 2,
        [Perks.Axe] = 2,
        [Perks.Strength] = 2,
        [Perks.Maintenance] = 1,
        [Perks.PlantScavenging] = 1,
    },
    traits = { "t_farmer", "Axeman" },
    clothing = {
        Hat = { "Base.Hat_SummerHat" },
        --Shirt = { "Base.Shirt_Lumberjack" },
        --TorsoExtra = { "Base.Vest_Foreman", "Base.Apron_Black", "Base.Apron_White" },
        --Hands = { "Base.Gloves_LeatherGloves", "Base.Gloves_LeatherGlovesBlack" },
        --Pants = { "Base.Dungarees" },
        --Shoes = { "Base.Shoes_ArmyBoots", "Base.Shoes_BlackBoots", "Base.Shoes_Wellies" },
    },
})

-- 8. Medic
addProfession('p_medic', {
    name = "UI_p_medic",
    icon = "p_medic",
    cost = 2,
    xp = {
        [Perks.Doctor] = 4,
        [Perks.SmallBlade] = 2,
    },
    traits = { "t_medic", "FastLearner2" },
    clothing = {
        Mask = { "Base.Hat_SurgicalMask_Blue", "Base.Hat_SurgicalMask_Green" },
        --Jacket = { "Base.JacketLong_Doctor" },
        --Hands = { "Base.Gloves_FingerlessGloves" },
        --Shoes = { "Base.Shoes_ArmyBoots", "Base.Shoes_ArmyBootsDesert", "Base.Shoes_BlackBoots" },
    },
})

-- 9. Geek
addProfession('p_geek', {
    name = "UI_p_geek",
    icon = "p_geek",
    cost = -8,
    traits = { "t_geek", "t_antisocial", "Clumsy2", "Cowardly2", "FastReader2", "NeedsLessSleep2", "Dextrous2" },
})

-- 10. Tailor
addProfession('p_tailor', {
    name = "UI_p_tailor",
    icon = "p_tailor",
    cost = -4,
    xp = {
        [Perks.Tailoring] = 4,
        [Perks.Maintenance] = 1,
    },
    traits = { "t_sewer", "Dextrous2" },
    clothing = {
        Hat = { "Base.Hat_Antlers", "Base.Hat_Beany", "Base.Scarf_StripeBlueWhite", "Base.Scarf_StripeRedWhite" },
        --Tshirt = { "Base.Shirt_CropTopNoArmTINT", "Base.Shirt_CropTopTINT", "Base.Tshirt_Sport" },
        --Shirt = { "Base.Shirt_Denim", "Base.Shirt_Lumberjack", "Base.Shirt_Workman" },
        --TorsoExtra = { "Base.Apron_Black", "Base.Apron_White", "Base.Vest_Hunting_Grey", "Base.Vest_Waistcoat" },
        --Jacket = { "Base.Suit_Jacket", "Base.Jacket_Varsity", "Base.PonchoGreen", "Base.PonchoYellow", "Base.Jacket_WhiteTINT", "Base.Jacket_PaddedDOWN" },
        --Sweater = { "Base.HoodieDOWN_WhiteTINT", "Base.Jumper_TankTopTINT", "Base.Jumper_VNeck", "Base.Jumper_RoundNeck", "Base.Jumper_PoloNeck", "Base.Jumper_TankTopDiamondTINT", "Base.Jumper_DiamondPatternTINT" },
        --Hands = { "Base.Gloves_FingerlessGloves", "Base.Gloves_WhiteTINT", "Base.Gloves_LeatherGloves", "Base.Gloves_LeatherGlovesBlack", "Base.Gloves_LongWomenGloves" },
        --Pants = { "Base.Shorts_LongSport", "Base.Trousers_Padded", "Base.Trousers_Suit" },
        --Skirt = { "Base.Skirt_Knees", "Base.Skirt_Normal", "Base.Skirt_Short" },
        --Shoes = { "Base.Shoes_BlackBoots", "Base.Shoes_ArmyBoots", "Base.Shoes_ArmyBootsDesert", "Base.Shoes_Slippers" },
        --FullSuit = { "Base.Boilersuit", "Base.WeddingDress" },
        --Dress = { "Base.Dress_Normal", "Base.Dress_Knees", "Base.Dress_Long" },
        --Underwear = { "Base.BunnySuitBlack", "Base.BunnySuitPink" },
    },
})

-- 11. Engineer
addProfession('p_engineer', {
    name = "UI_p_engineer",
    icon = "p_engineer",
    cost = -12,
    xp = {
        [Perks.Electricity] = 4,
        [Perks.MetalWelding] = 2,
        [Perks.Maintenance] = 1,
    },
    traits = { "t_electrician", "t_mechanics", "t_bombmaker" },
    clothing = {
        Eyes = { "Base.Glasses_SafetyGoggles" },
        --Hands = { "Base.Gloves_LeatherGloves", "Base.Gloves_LeatherGlovesBlack" },
        --FullSuit = { "Base.Boilersuit", "Base.Boilersuit_BlueRed" },
        --Shoes = { "Base.Shoes_ArmyBoots", "Base.Shoes_ArmyBootsDesert", "Base.Shoes_BlackBoots" },
    },
})

-- 12. Carpenter
addProfession('p_carpenter', {
    name = "UI_p_carpenter",
    description = "UI_p_carpenter_desc",
    icon = "p_carpenter",
    cost = -4,
    xp = {
        [Perks.Woodwork] = 4,
        [Perks.Maintenance] = 1,
        [Perks.SmallBlunt] = 2,
        [Perks.Strength] = 2,
    },
    traits = { "Handy2" },
    clothing = {
        Eyes = { "Base.Glasses_SafetyGoggles" },
        --Hat = { "Base.Hat_HardHat" },
        --Shirt = { "Base.Shirt_Workman" },
        --TorsoExtra = { "Base.Vest_HighViz" },
        --Hands = { "Base.Gloves_LeatherGloves", "Base.Gloves_LeatherGlovesBlack" },
        --FullSuit = { "Base.Boilersuit", "Base.Boilersuit_BlueRed" },
        --Shoes = { "Base.Shoes_ArmyBoots", "Base.Shoes_ArmyBootsDesert", "Base.Shoes_BlackBoots" },
    },
})

-- 13. Blacksmith (metalworks)
addProfession('p_blacksmith', {
    name = "UI_p_blacksmith",
    description = "UI_p_blacksmith_desc",
    icon = "p_blacksmith",
    cost = -4,
    xp = {
        [Perks.MetalWelding] = 4,
        [Perks.Maintenance] = 1,
        [Perks.SmallBlunt] = 2,
        [Perks.Strength] = 2,
    },
    recipes = { "Make Metal Walls", "Make Metal Fences", "Make Metal Containers", "Make Metal Sheet", "Make Small Metal Sheet", "Make Metal Roof" },
    traits = { "t_blacksmith", "t_mechanics" },
    clothing = {
        Eyes = { "Base.Glasses_SafetyGoggles" },
        --MaskFull = { "Base.WeldingMask" },
        --Hat = { "Base.Hat_HardHat" },
        --Shirt = { "Base.Shirt_Workman" },
        --Hands = { "Base.Gloves_LeatherGloves", "Base.Gloves_LeatherGlovesBlack" },
        --FullSuit = { "Base.Boilersuit", "Base.Boilersuit_BlueRed" },
        --Shoes = { "Base.Shoes_ArmyBoots", "Base.Shoes_ArmyBootsDesert", "Base.Shoes_BlackBoots" },
    },
})

-- 14. Fisherman
-- Todo: enable hard fishing mod
addProfession('p_fisherman', {
    name = "UI_p_fisherman",
    icon = "p_fisherman",
    cost = -2,
    xp = {
        [Perks.Fishing] = 4,
        [Perks.PlantScavenging] = 1,
        [Perks.Spear] = 2,
        [Perks.Strength] = 2,
    },
    traits = { "t_fisherman" },
})

-- 15. Cook
addProfession('p_cook', {
    name = "UI_p_cook",
    icon = "p_cook",
    cost = -4,
    xp = {
        [Perks.Cooking] = 4,
        [Perks.Farming] = 1,
        [Perks.Fishing] = 1,
        [Perks.SmallBlade] = 2,
    },
    recipes = { "Make Cake Batter", "Make Pie Dough", "Make Bread Dough" },
    traits = { "t_cook", "Nutritionist2" },
    clothing = {
        Hat = { "Base.Hat_ChefHat" },
        TorsoExtra = { "Base.Apron_White", "Base.Apron_Black" },
        --Shoes = { "Base.Shoes_ArmyBoots", "Base.Shoes_ArmyBootsDesert", "Base.Shoes_BlackBoots" },
    },
})

-- 16. Chaplain (priest)
addProfession('p_chaplain', {
    name = "UI_p_chaplain",
    icon = "p_chaplain",
    cost = -6,
    xp = {        
        [Perks.Cooking] = 1,
        [Perks.Fishing] = 1,
        [Perks.PlantScavenging] = 1,
        [Perks.Trapping] = 1,
        [Perks.Farming] = 2,
        [Perks.Woodwork] = 2,
    },
    traits = { "t_faithful", "Desensitized", "Lucky2", "Pacifist2", "Resilient2" },
    clothing = {
        Shirt = { "Base.Shirt_Priest" },
        --Shoes = { "Base.Shoes_ArmyBoots", "Base.Shoes_ArmyBootsDesert", "Base.Shoes_BlackBoots" },
        Necklace = { "Base.Necklace_SilverCrucifix" },
    }
})

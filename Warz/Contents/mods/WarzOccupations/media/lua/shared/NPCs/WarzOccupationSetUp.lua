--ProfessionFramework.AlwaysUseStartingKits = false
--ProfessionFramework.LogLevel = 3
local addProfession = ProfessionFramework.addProfession 
local getProfession = ProfessionFramework.getProfession 

-- set this to true since we skip the vanilla definitions.
ProfessionFramework.RemoveDefaultProfessions = true

-- 1. Slacker
addProfession('p_slacker', {
    name = "UI_p_slacker",
    description = "UI_p_slacker_desc",
    --icon = "p_slacker",
    cost = 12,
    traits = { "t_untalented" },
    clothing = {
        Back = { "Base.Bag_Satchel" },
        Tshirt = { "Base.Shirt_CropTopNoArmTINT", "Base.Shirt_CropTopTINT", "Base.Tshirt_Sport" },
        Shoes = { "Base.Shoes_ArmyBoots", "Base.Shoes_BlackBoots" },
    },
})

-- 5. Tailor
addProfession('p_tailor', {
    name = "UI_p_tailor",
    description = "UI_p_tailor_desc",
    --icon = "p_tailor",
    cost = 0,
    xp = {
        [Perks.Tailoring] = 3,
        [Perks.Doctor] = 2,
        [Perks.Cooking] = 1,
        [Perks.Farming] = 1,
        [Perks.SmallBlade] = 1,
    },
    clothing = {
        Neck = { "Base.Tie_BowTieFull", "Base.Tie_Full" },
        Tshirt = { "Base.Shirt_CropTopNoArmTINT", "Base.Shirt_CropTopTINT", "Base.Tshirt_Sport" },
        Shirt = { "Base.Shirt_Denim", "Base.Shirt_Lumberjack", "Base.Shirt_Workman" },
        TorsoExtra = { "Base.Apron_Black", "Base.Apron_White", "Base.Vest_Hunting_Grey", "Base.Vest_Waistcoat" },
        Pants = { "Base.Shorts_LongSport", "Base.Trousers_Padded", "Base.Trousers_Suit" },
        Skirt = { "Base.Skirt_Knees", "Base.Skirt_Normal", "Base.Skirt_Short" },
        Shoes = { "Base.Shoes_BlackBoots", "Base.Shoes_Slippers" },
        FullSuit = { "Base.Boilersuit" },
        Dress = { "Base.Dress_Normal", "Base.Dress_Knees", "Base.Dress_Long" },
    },
})

-- 6. Nomad
addProfession('p_nomad', {
    name = "UI_p_nomad",
    description = "UI_p_nomad_desc",
    --icon = "p_nomad",
    cost = 0,
    xp = {
        [Perks.PlantScavenging] = 3,
        [Perks.Spear] = 2,
        [Perks.Sneak] = 1,
        [Perks.Lightfoot] = 1,
        [Perks.Doctor] = 1,
    },
    clothing = {
        LeftEye = { "Base.Glasses_Eyepatch_Left" },
        RightEye = { "Base.Glasses_Eyepatch_Right" },
        Back = { "Base.Bag_Satchel" },
        Hat = { "Base.Hat_BonnieHat", "Base.Hat_BonnieHat_CamoGreen" },
        Shoes = { "Base.Shoes_Wellies", "Base.Shoes_BlackBoots", "Base.Shoes_RidingBoots" },
    },
})

-- 7. Trapper
addProfession('p_trapper', {
    name = "UI_p_trapper",
    description = "UI_p_trapper_desc",
    --icon = "p_trapper",
    cost = 0,
    xp = {
        [Perks.Trapping] = 3,
        [Perks.Axe] = 2,
        [Perks.Sneak] = 1,
        [Perks.Lightfoot] = 1,
        [Perks.Doctor] = 1,
    },
    recipes = { "Make Stick Trap", "Make Snare Trap", "Make Wooden Cage Trap" },
    clothing = {
        Back = { "Base.Bag_Satchel" },
        Hat = { "Base.Hat_BonnieHat", "Base.Hat_BonnieHat_CamoGreen" },
        TorsoExtra = { "Base.Vest_Hunting_Camo" },
        FullTop = { "Base.Ghillie_Top" },
        Pants = { "Base.Ghillie_Trousers" },
        Shoes = { "Base.Shoes_ArmyBoots", "Base.Shoes_Wellies", "Base.Shoes_BlackBoots" },
    },
})

-- 8. Fisherman
addProfession('p_fisherman', {
    name = "UI_p_fisherman",
    description = "UI_p_fisherman_desc",
    --icon = "p_fisherman",
    cost = 0,
    xp = {
        [Perks.Fishing] = 3,
        [Perks.Spear] = 2,
        [Perks.Sneak] = 1,
        [Perks.Lightfoot] = 1,
        [Perks.Doctor] = 1,
    },
    recipes = {"Make Fishing Rod", "Fix Fishing Rod", "Get Wire Back", "Make Fishing Net"},
    clothing = {
        Shirt = { "Base.Shirt_Lumberjack" },
        Shoes = { "Base.Shoes_ArmyBoots", "Base.Shoes_Wellies", "Base.Shoes_BlackBoots" },
    },
})

-- 9. Farmer
addProfession('p_farmer', {
    name = "UI_p_farmer",
    description = "UI_p_farmer_desc",
    --icon = "p_farmer",
    cost = 0,
    xp = {
        [Perks.Farming] = 3,
        [Perks.Cooking] = 2,
        [Perks.Doctor] = 1,
        [Perks.PlantScavenging] = 1,
        [Perks.Spear] = 1,
    },
    recipes = { "Make Mildew Cure", "Make Flies Cure" },
    clothing = {
        Hat = { "Base.Hat_SummerHat" },
        TorsoExtra = { "Base.Apron_Black", "Base.Apron_White" },
        Pants = { "Base.Dungarees" },
        Shoes = { "Base.Shoes_Wellies", "Base.Shoes_BlackBoots" },
    },
})

-- 10. Infiltrator
addProfession('p_infiltrator', {
    name = "UI_p_infiltrator",
    description = "UI_p_infiltrator_desc",
    --icon = "p_infiltrator",
    cost = 0,
    xp = {
        [Perks.Lockpicking] = 3,
        [Perks.SmallBlade] = 2,
        [Perks.Lightfoot] = 1,
        [Perks.Nimble] = 1,
        [Perks.Sneak] = 1,
    },
    clothing = {
        Back = { "Base.Bag_Satchel" },
        Hat = { "Base.Hat_BonnieHat", "Base.Hat_BonnieHat_CamoGreen", "Base.Hat_Raccoon" },
        MaskEyes = { "Base.Hat_HockeyMask" },
        Shoes = { "Base.Shoes_ArmyBoots", "Base.Shoes_RidingBoots", "Base.Shoes_BlackBoots" },
    },
})

-- 11. Survivor
addProfession('p_survivor', {
    name = "UI_p_survivor",
    description = "UI_p_survivor_desc",
    --icon = "p_survivor",
    cost = 0,
    xp = {
        [Perks.LongBlade] = 3,
        [Perks.SmallBlade] = 2,
        [Perks.Doctor] = 1,
        [Perks.Nimble] = 1,
        [Perks.Maintenance] = 1,
    },
    clothing = {
        LeftEye = { "Base.Glasses_Eyepatch_Left" },
        Hat = { "Base.Hat_BonnieHat", "Base.Hat_BonnieHat_CamoGreen", "Base.Hat_Raccoon" },
        Shirt = { "Base.Shirt_CropTopNoArmTINT", "Base.Shirt_CropTopTINT", "Base.Tshirt_Sport", "Base.Shirt_Priest" },
        TorsoExtra = { "Base.Vest_Hunting_Camo" },
        Shoes = { "Base.Shoes_ArmyBoots", "Base.Shoes_RidingBoots", "Base.Shoes_BlackBoots" },
    },
})

-- 12. Fighter
addProfession('p_fighter', {
    name = "UI_p_fighter",
    description = "UI_p_fighter_desc",
    --icon = "p_fighter",
    cost = 0,
    xp = {
        [Perks.Blunt] = 3,
        [Perks.SmallBlunt] = 2,
        [Perks.Doctor] = 1,
        [Perks.Nimble] = 1,
        [Perks.Maintenance] = 1,
    },
    clothing = {
        Hat = { "Base.Hat_BaseballCapArmy" },
        Shirt = { "Base.Shirt_CamoGreen", "Base.Shirt_CamoDesert", "Base.Shirt_CamoUrban" },
        TorsoExtra = { "Base.Vest_Hunting_Camo", "Base.Vest_BulletCivilian" },
        Shoes = { "Base.Shoes_RidingBoots", "Base.Shoes_ArmyBootsDesert", "Base.Shoes_BlackBoots" },
    },
})

-- 13. Cook
addProfession('p_cook', {
    name = "UI_p_cook",
    description = "UI_p_cook_desc",
    --icon = "p_cook",
    cost = 0,
    xp = {
        [Perks.Cooking] = 3,
        [Perks.SmallBlade] = 2,
        [Perks.Farming] = 1,
        [Perks.Fishing] = 1,
        [Perks.PlantScavenging] = 1,
    },
    recipes = { "Make Cake Batter", "Make Pie Dough", "Make Bread Dough" },
    clothing = {
        Hat = { "Base.Hat_ChefHat" },
        TorsoExtra = { "Base.Apron_White", "Base.Apron_Black" },
        Shoes = { "Base.Shoes_BlackBoots", "Base.Shoes_RedTrainers" },
    },
})

-- 3. Mechanic
addProfession('p_mechanic', {
    name = "UI_p_mechanic",
    description = "UI_p_mechanic_desc",
    --icon = "p_mechanic",
    cost = 0,
    xp = {
        [Perks.Mechanics] = 3,
        [Perks.Maintenance] = 2,
        [Perks.Woodwork] = 1,
        [Perks.MetalWelding] = 1,
        [Perks.SmallBlunt] = 1,
    },
    recipes = { "Basic Mechanics", "Intermediate Mechanics", "Advanced Mechanics" },
    clothing = {
        Eyes = { "Base.Glasses_SafetyGoggles" },
        Shirt = { "Base.Shirt_Workman" },
        FullSuit = { "Base.Boilersuit", "Base.Boilersuit_BlueRed" },
        Shoes = { "Base.Shoes_RidingBoots", "Base.Shoes_BlackBoots" },
    },
})

-- 4. Engineer
addProfession('p_engineer', {
    name = "UI_p_engineer",
    description = "UI_p_engineer_desc",
    --icon = "p_engineer",
    cost = 0,
    xp = {
        [Perks.Electricity] = 3,
        [Perks.Mechanics] = 2,
        [Perks.MetalWelding] = 1,
        [Perks.Woodwork] = 1,
        [Perks.Maintenance] = 1,
    },
    recipes = { "Generator", "Make Stick Trap", "Make Snare Trap", "Make Wooden Cage Trap", "Make Aerosol bomb", "Make Flame bomb", "Make Pipe bomb", "Make Noise generator", "Make Smoke Bomb" },
    clothing = {
        Eyes = { "Base.Glasses_SafetyGoggles" },
        Hands = { "Base.Gloves_LeatherGloves", "Base.Gloves_LeatherGlovesBlack" },
        FullSuit = { "Base.Boilersuit", "Base.Boilersuit_BlueRed" },
        Shoes = { "Base.Shoes_RidingBoots", "Base.Shoes_BlackBoots" },
    },
})

-- 2. Carpenter
addProfession('p_carpenter', {
    name = "UI_p_carpenter",
    description = "UI_p_carpenter_desc",
    --icon = "p_carpenter",
    cost = 0,
    xp = {
        [Perks.Woodwork] = 3,
        [Perks.Maintenance] = 2,
        [Perks.MetalWelding] = 1,
        [Perks.Tailoring] = 1,
        [Perks.SmallBlunt] = 1,
    },
    clothing = {
        Eyes = { "Base.Glasses_SafetyGoggles" },
        Hat = { "Base.Hat_HardHat" },
        Shirt = { "Base.Shirt_Workman" },
        TorsoExtra = { "Base.Vest_HighViz" },
        Hands = { "Base.Gloves_LeatherGloves", "Base.Gloves_LeatherGlovesBlack" },
        FullSuit = { "Base.Boilersuit", "Base.Boilersuit_BlueRed" },
        Shoes = { "Base.Shoes_RidingBoots", "Base.Shoes_BlackBoots" },
    },
})

-- 3. Metalworker
addProfession('p_metalworker', {
    name = "UI_p_metalworker",
    description = "UI_p_metalworker_desc",
    --icon = "p_metalworker",
    cost = 0,
    xp = {
        [Perks.MetalWelding] = 3,
        [Perks.Maintenance] = 2,
        [Perks.Woodwork] = 1,
        [Perks.Mechanics] = 1,
        [Perks.SmallBlunt] = 1,
    },
    recipes = { "Make Metal Walls", "Make Metal Fences", "Make Metal Containers", "Make Metal Sheet", "Make Small Metal Sheet", "Make Metal Roof" },
    clothing = {
        Eyes = { "Base.Glasses_SafetyGoggles" },
        Shirt = { "Base.Shirt_Workman" },
        Hands = { "Base.Gloves_LeatherGloves", "Base.Gloves_LeatherGlovesBlack" },
        FullSuit = { "Base.Boilersuit", "Base.Boilersuit_BlueRed" },
        Shoes = { "Base.Shoes_RidingBoots", "Base.Shoes_BlackBoots" },
    },
})
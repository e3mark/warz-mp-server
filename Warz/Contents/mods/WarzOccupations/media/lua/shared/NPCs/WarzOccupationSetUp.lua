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
    clothing = {
        Back = { "Base.Bag_Improvised_Backpack" },
    },
})

-- 2. Hunter (aiming and minor foraging)
addProfession('p_hunter', {
    name = "UI_p_hunter",
    description = "UI_p_hunter_desc",
    icon = "p_hunter",
    cost = -6,
    xp = {
        [Perks.Trapping] = 3,
        [Perks.Aiming] = 3,
        [Perks.Reloading] = 2,
        [Perks.Fitness] = 1,
        [Perks.Fishing] = 1,
        [Perks.PlantScavenging] = 1,
    },
    traits = { "t_hunter", "Outdoorsman2" },
    clothing = {
        Back = { "Base.Bag_Improvised_Backpack" },
    },
})

-- 3. Gatherer (foraging)
addProfession('p_gatherer', {
    name = "UI_p_gatherer",
    icon = "p_gatherer",
    cost = -6,
    xp = {
        [Perks.PlantScavenging] = 3,
        [Perks.Trapping] = 2,
        [Perks.Farming] = 1,
        [Perks.Fishing] = 1,
        [Perks.Strength] = 1,
    },
    traits = { "t_gatherer", "Organized2", "Outdoorsman2", "Lucky2" },
    clothing = {
        Back = { "Base.Bag_Improvised_Backpack" },
    },
})

-- 4. Scavenger (looting)
addProfession('p_scavenger', {
    name = "UI_p_scavenger",
    description = "UI_p_scavenger_desc",
    icon = "p_scavenger",
    cost = -6,
    xp = {
        [Perks.Sneak] = 3,
        [Perks.Lightfoot] = 2,
        [Perks.Nimble] = 1,
        [Perks.Strength] = 1,
        [Perks.PlantScavenging] = 1,
    },
    traits = { "t_scavenger", "Organized2", "Lucky2" },
    clothing = {
        Back = { "Base.Bag_Improvised_Backpack" },
    },
})

-- 5. Smuggler (sprinting)
addProfession('p_smuggler', {
    name = "UI_p_smuggler",
    description = "UI_p_smuggler_desc",
    icon = "p_smuggler",
    cost = -6,
    xp = {
        [Perks.Fitness] = 3,
        [Perks.Sprinting] = 3,
        [Perks.Nimble] = 1,
        [Perks.SmallBlade] = 2,
        [Perks.Strength] = 1,
    },
    traits = { "t_smuggler", "Organized2", "Outdoorsman2" },
    clothing = {
        Back = { "Base.Bag_Improvised_Backpack" },
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
        [Perks.Reloading] = 2,
        [Perks.Nimble] = 2,
        [Perks.Spear] = 2,
        [Perks.Axe] = 1,
        [Perks.Strength] = 2,
    },
    traits = { "t_soldier", "Desensitized" },
    clothing = {
        Back = { "Base.Bag_Improvised_Backpack" },
    },
})

-- 7. Farmer (farmer + axeman)
addProfession('p_farmer', {
    name = "UI_p_farmer",
    icon = "p_farmer",
    cost = -4,
    xp = {
        [Perks.Farming] = 3,
        [Perks.Trapping] = 2,
        [Perks.Maintenance] = 1,
        [Perks.PlantScavenging] = 1,
        [Perks.Axe] = 2,
    },
    traits = { "t_farmer", "Axeman" },
    clothing = {
        Back = { "Base.Bag_Improvised_Backpack" },
    },
})

-- 8. Medic
addProfession('p_medic', {
    name = "UI_p_medic",
    icon = "p_medic",
    cost = 2,
    xp = {
        [Perks.Doctor] = 3,
        [Perks.SmallBlade] = 2,
    },
    traits = { "t_medic", "FastLearner2" },
    clothing = {
        Back = { "Base.Bag_Improvised_Backpack" },
    },
})

-- 9. Geek
addProfession('p_geek', {
    name = "UI_p_geek",
    icon = "p_geek",
    cost = 0,
    traits = { "t_geek", "t_antisocial", "Clumsy2", "Cowardly2", "FastReader2", "NeedsLessSleep2", "Dextrous2" },
    clothing = {
        Back = { "Base.Bag_Improvised_Backpack" },
    },
})

-- 10. Tailor
--[[ Echopio
    TAILORING - 3
    FIRST AID - 2
    COOKING - 1
    FARMING - 1
    SHORT BLADE - 1
]]
addProfession('p_tailor', {
    name = "UI_p_tailor",
    icon = "p_tailor",
    cost = 0,
    xp = {
        [Perks.Tailoring] = 3,
        [Perks.Doctor] = 2,
        [Perks.Cooking] = 1,
        [Perks.Farming] = 1,
        [Perks.SmallBlade] = 1,
    },
    traits = { "t_sewer" },
    clothing = {
        Back = { "Base.Bag_Improvised_Backpack" },
    },
})

-- 11. Engineer
--[[ Echopio
    ELECTRICAL - 3
    MECHANICS - 2
    METALWORKING - 1
    CARPENTRY - 1
    MAINTENANCE - 1
]]
addProfession('p_engineer', {
    name = "UI_p_engineer",
    icon = "p_engineer",
    cost = 0,
    xp = {
        [Perks.Electricity] = 3,
        [Perks.Mechanics] = 2,
        [Perks.MetalWelding] = 1,
        [Perks.Woodwork] = 1,
        [Perks.Maintenance] = 1,
    },
    recipes = { "Basic Mechanics", "Generator", "Make Aerosol bomb", "Make Flame bomb", "Make Pipe bomb", "Make Noise generator", "Make Smoke Bomb" },
    traits = { "t_electrician", "t_bombmaker" },
    clothing = {
        Back = { "Base.Bag_Improvised_Backpack" },
    },
})

-- 12. Carpenter
--[[ Echopio:
    CARPENTRY - 3
    MAINTENANCE - 2
    METALWORKING - 1
    TAILORING - 1
    SHORT BLUNT - 1
]]

addProfession('p_carpenter', {
    name = "UI_p_carpenter",
    description = "UI_p_carpenter_desc",
    icon = "p_carpenter",
    cost = 0,
    xp = {
        [Perks.Woodwork] = 3,
        [Perks.Maintenance] = 2,
        [Perks.MetalWelding] = 1,
        [Perks.Tailoring] = 1,
        [Perks.SmallBlunt] = 1,
    },
    traits = { "Handy2" },
    clothing = {
        Back = { "Base.Bag_Improvised_Backpack" },
    },
})

-- 13.1 Blacksmith (metalworker)
--[[ Echopio:
    METALWORKING - 3
    MAINTENANCE - 2
    CARPENTRY - 1
    MECHANICS - 1
    SHORT BLUNT - 1 
]]
addProfession('p_blacksmith', {
    name = "UI_p_blacksmith",
    description = "UI_p_blacksmith_desc",
    icon = "p_blacksmith",
    cost = 0,
    xp = {
        [Perks.MetalWelding] = 3,
        [Perks.Maintenance] = 2,
        [Perks.Woodwork] = 1,
        [Perks.Mechanics] = 1,
        [Perks.SmallBlunt] = 1,
    },
    recipes = { "Make Metal Walls", "Make Metal Fences", "Make Metal Containers", "Make Metal Sheet", "Make Small Metal Sheet", "Make Metal Roof" },
    traits = { "t_blacksmith" },
    clothing = {
        Back = { "Base.Bag_Improvised_Backpack" },
    },
})

-- 13.2 Mechanic
--[[ Echopio:
    MECHANICS - 3
    MAINTENANCE - 2
    METALWORKING - 1
    ELETRICAL - 1
    SHORT BLUNT - 1
]]
addProfession('p_mechanic', {
    name = "UI_p_mechanic",
    description = "UI_p_mechanic_desc",
    icon = "p_mechanic",
    cost = 0,
    xp = {
        [Perks.MetalWelding] = 3,
        [Perks.Maintenance] = 2,
        [Perks.Woodwork] = 1,
        [Perks.Mechanics] = 1,
        [Perks.SmallBlunt] = 1,
    },
    recipes = { "Basic Mechanics", "Intermediate Mechanics" },
    traits = { "t_mechanics" },
    clothing = {
        Back = { "Base.Bag_Improvised_Backpack" },
    },
})

-- 14. Fisherman
-- Todo: enable hard fishing mod
addProfession('p_fisherman', {
    name = "UI_p_fisherman",
    icon = "p_fisherman",
    cost = -4,
    xp = {
        [Perks.Fishing] = 4,
        [Perks.PlantScavenging] = 1,
        [Perks.Spear] = 2,
        [Perks.Strength] = 2,
    },
    traits = { "t_fisherman" },
    clothing = {
        Back = { "Base.Bag_Improvised_Backpack" },
    },
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
        Back = { "Base.Bag_Improvised_Backpack" },
    },
})

-- 16. Chaplain (priest)
addProfession('p_chaplain', {
    name = "UI_p_chaplain",
    icon = "p_chaplain",
    cost = -6,
    xp = {        
        [Perks.Cooking] = 1,
        [Perks.Fishing] = 2,
        [Perks.PlantScavenging] = 1,
        [Perks.Trapping] = 1,
        [Perks.Farming] = 2,
        [Perks.Woodwork] = 2,
    },
    traits = { "t_faithful", "Desensitized", "Lucky2", "Pacifist2", "Resilient2" },
    clothing = {
        Back = { "Base.Bag_Improvised_Backpack" },
        Shirt = { "Base.Shirt_Priest" },
        Necklace = { "Base.Necklace_SilverCrucifix" },
    },
})

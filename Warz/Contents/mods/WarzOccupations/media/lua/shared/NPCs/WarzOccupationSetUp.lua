-- Thank you Echopio

ProfessionFramework.RemoveDefaultProfessions = true
ProfessionFramework.AlwaysUseStartingKits = false
--ProfessionFramework.LogLevel = 3

local addProfession = ProfessionFramework.addProfession 
local getProfession = ProfessionFramework.getProfession 

-- 1. Slacker
addProfession('p_slacker', {
    name = "UI_p_slacker",
    description = "UI_p_slacker_desc",
    --icon = "p_slacker",
    cost = 12,
    traits = { "t_untalented" },
    clothing = {
        Back = { "Base.WoodenLance" },
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
        Back = { "Base.WoodenLance" },
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
    -- recipes = { "Make Metal Walls", "Make Metal Fences", "Make Metal Containers", "Make Metal Sheet", "Make Small Metal Sheet", "Make Metal Roof" },
    clothing = {
        Back = { "Base.WoodenLance" },
    },
})

-- 3. Mechanic
addProfession('p_mechanic', {
    name = "UI_p_mechanic",
    description = "UI_p_mechanic_desc",
    --icon = "p_mechanic",
    cost = 0,
    xp = {
        [Perks.MetalWelding] = 3,
        [Perks.Maintenance] = 2,
        [Perks.Woodwork] = 1,
        [Perks.Mechanics] = 1,
        [Perks.SmallBlunt] = 1,
    },
    -- recipes = { "Basic Mechanics", "Intermediate Mechanics" },
    clothing = {
        Back = { "Base.WoodenLance" },
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
    -- recipes = { "Basic Mechanics", "Generator", "Make Aerosol bomb", "Make Flame bomb", "Make Pipe bomb", "Make Noise generator", "Make Smoke Bomb" },
    clothing = {
        Back = { "Base.WoodenLance" },
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
        Back = { "Base.WoodenLance" },
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
        Back = { "Base.WoodenLance" },
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
    --recipes = { "Make Stick Trap", "Make Snare Trap", "Make Wooden Cage Trap", "Make Fishing Rod", "Fix Fishing Rod" },
    clothing = {
        Back = { "Base.WoodenLance" },
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
    --recipes = {"Make Fishing Rod", "Fix Fishing Rod", "Get Wire Back", "Make Fishing Net"},
    clothing = {
        Back = { "Base.WoodenLance" },
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
    clothing = {
        Back = { "Base.WoodenLance" },
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
        Back = { "Base.WoodenLance" },
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
        Back = { "Base.WoodenLance" },
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
        Back = { "Base.WoodenLance" },
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
    clothing = {
        Back = { "Base.WoodenLance" },
    },
})
local addTrait = ProfessionFramework.addTrait
local getTrait = ProfessionFramework.getTrait

-- Reference: Framework's ready to use traits https://github.com/FWolfe/ProfessionFramework/blob/master/media/lua/shared/3ProfessionTraits.lua

-- 1. Slacker
addTrait("t_untalented", {
    name = "UI_t_untalented",
    description = "UI_t_untalented_desc",
    profession = true,
    exclude = { "Athletic", "Brave", "FastLearner", "FastReader", "Lucky", "Organized", "Mechanics", "Fishing", "Brawler", "Cook", "FirstAid", "Formerscout", "Gardener", "Handy", "Herbalist", "Hiker", "Hunter", "t_hunter", "Nutritionist", "Tailor", "Gymnast", "BaseballPlayer" },
})

-- 2. Hunter
addTrait("t_hunter", {
    name = "UI_t_hunter",
    description = "UI_t_hunter_desc",
    profession = true,
    xp = {
        [Perks.Aiming] = 1,
    },
    recipes = { "Make Stick Trap", "Make Snare Trap", "Make Wooden Cage Trap", "Make Fishing Rod", "Fix Fishing Rod" },
    exclude = { "Hunter" },
})

-- 3. Gatherer
addTrait("t_gatherer", {
    name = "UI_t_gatherer",
    description = "UI_t_gatherer_desc",
    profession = true,
    recipes = { "Herbalist" },
    exclude = { "Claustophobic" },
})

-- 4. Scavenger
addTrait("t_scavenger", {
    name = "UI_t_scavenger",
    description = "UI_t_scavenger_desc",
    profession = true,
    exclude = { "Claustophobic" },
})

-- 5. Smuggler
addTrait("t_smuggler", {
    name = "UI_t_smuggler",
    description = "UI_t_smuggler_desc",
    profession = true,
    exclude = { "Jogger" },
})

-- 6. Soldier
addTrait("t_soldier", {
    name = "UI_t_soldier",
    description = "UI_t_soldier_desc",
    profession = true,
    exclude = { "Pacifist" },
})

-- 7. Farmer
addTrait("t_farmer", {
    name = "UI_t_farmer",
    description = "UI_t_farmer_desc",
    profession = true,
    recipes = { "Make Mildew Cure", "Make Flies Cure" },
    exclude = { "Gardener" },
})

-- 8. Medic
addTrait("t_medic", {
    name = "UI_t_medic",
    description = "UI_t_medic_desc",
    profession = true,
    recipes = { "Herbalist" },
    exclude = { "Hemophobic" },
})

-- 9. Geek
addTrait("t_geek", {
    name = "UI_t_geek",
    description = "UI_t_geek_desc",
    profession = true,
    exclude = { "SlowLearner" },
})
addTrait("t_antisocial", {
    name = "UI_t_antisocial",
    description = "UI_t_antisocial_desc",
    profession = true,
})

-- 10. Tailor
addTrait("t_sewer", {
    name = "UI_t_sewer",
    description = "UI_t_sewer_desc",
    profession = true,
    exclude = { "Tailor" },
})

-- 11. Engineer
addTrait("t_electrician", {
    name = "UI_t_electrician",
    description = "UI_t_electrician_desc",
    profession = true,
})
addTrait("t_bombmaker", {
    name = "UI_t_bombmaker",
    description = "UI_t_bombmaker_desc",
    profession = true,
})

-- 12. Carpenter

-- 13.1 Blacksmith (metalworker)
addTrait("t_blacksmith", {
    name = "UI_t_blacksmith",
    description = "UI_t_blacksmith_desc",
    profession = true,
})

-- 13.2 Mechanic
addTrait("t_mechanics", {
    name = "UI_t_mechanics",
    description = "UI_t_mechanics_desc",
    profession = true,
    exclude = { "Mechanics" },
})

-- 14. Fisherman
addTrait("t_fisherman", {
    name = "UI_t_fisherman",
    description = "UI_t_fisherman_desc",
    profession = true,
    recipes = {"Make Fishing Rod", "Fix Fishing Rod", "Get Wire Back", "Make Fishing Net"},
})

-- 15. Cook
addTrait("t_cook", {
    name = "UI_t_cook",
    description = "UI_t_cook_desc",
    profession = true,
    exclude = { "Cook" },
})

-- 16. Chaplain (priest)
addTrait("t_faithful", {
    name = "UI_t_faithful",
    description = "UI_t_faithful_desc",
    profession = true,
    exclude = { "HeartyAppitite", "HighThirst", "Smoker" },
})

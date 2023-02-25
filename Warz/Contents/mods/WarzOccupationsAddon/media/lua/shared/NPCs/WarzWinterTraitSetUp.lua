ProfessionFramework.AlwaysUseStartingKits = true

local addTrait = ProfessionFramework.addTrait

addTrait("Settler", {
    name = "UI_t_settler",
    description = "UI_t_settler_desc",
    cost = 1,
    xp = {
        [Perks.MetalWelding] = 1,
        [Perks.Woodwork] = 1,
        [Perks.Maintenance] = 1,
    },
    exclude = { "Raider", "Nomad" }
})

addTrait("Raider", {
    name = "UI_t_raider",
    description = "UI_t_raider_desc",
    cost = 1,
    xp = {
        [Perks.Strength] = 1,
        [Perks.Blunt] = 1,
        [Perks.LongBlade] = 1,
    },
    --exclude = { "Settler", "Nomad" }
})

addTrait("Nomad", {
    name = "UI_t_nomad",
    description = "UI_t_nomad_desc",
    cost = 1,
    xp = {
        [Perks.PlantScavenging] = 1,
        [Perks.Trapping] = 1,
        [Perks.Fishing] = 1,
    },
    exclude = { "Raider" }
})

addTrait("Rogue", {
    name = "UI_t_rogue",
    description = "UI_t_rogue_desc",
    cost = 1,
    xp = {
        [Perks.PlantScavenging] = 1,
        [Perks.Trapping] = 1,
        [Perks.Fishing] = 1,
    },
    exclude = { "Raider", "Nomad", "Settler" }
})
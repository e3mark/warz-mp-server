local addTrait = ProfessionFramework.addTrait
local getTrait = ProfessionFramework.getTrait

-- Reference: Framework's ready to use traits https://github.com/FWolfe/ProfessionFramework/blob/master/media/lua/shared/3ProfessionTraits.lua

addTrait("t_untalented", {
    name = "UI_t_untalented",
    description = "UI_t_untalented_desc",
    profession = true,
    exclude = { "Athletic", "Brave", "FastLearner", "FastReader", "Lucky", "Organized", "Mechanics", "Fishing", "Brawler", "Cook", "FirstAid", "Formerscout", "Gardener", "Handy", "Herbalist", "Hiker", "Hunter", "t_hunter", "Nutritionist", "Tailor", "Gymnast", "BaseballPlayer" },
})

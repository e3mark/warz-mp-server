-- local function initProfessions()
--     local thief = ProfessionFactory.getProfession("p_infiltrator");
--     thief:addFreeTrait("nimblefingers")
-- end

-- Events.OnGameBoot.Add(initProfessions);


local function onNewGame(player)
    if player:getDescriptor():getProfession() == "p_infiltrator" then       
        -- local proflist = {"Lockpicking"};
        -- local profskills = {};
        -- profskills["Lockpicking"] = {};
        -- profskills["Lockpicking"].level = 2
        -- profskills["Lockpicking"].boost = 3
        -- profskills["Lockpicking"].xp = 225
        -- player:getModData().proflist = proflist;
        -- player:getModData().profskills = profskills
    elseif player:HasTrait("nimblefingers2") then
        local proflist = {"Lockpicking"};
        local profskills = {};
        profskills["Lockpicking"] = {};
        profskills["Lockpicking"].level = 0
        profskills["Lockpicking"].boost = 2
        profskills["Lockpicking"].xp = 0
        player:getModData().proflist = proflist;
        player:getModData().profskills = profskills
    end
end

Events.OnNewGame.Add(onNewGame)


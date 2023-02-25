require "recipecode"
require "ISUI/ISInventoryPaneContextMenu"
require "ISUI/ISInventoryPane"

Recipe = Recipe or {}
Recipe.GetItemTypes = Recipe.GetItemTypes or {}
Recipe.OnCanPerform = Recipe.OnCanPerform or {}
Recipe.OnCreate = Recipe.OnCreate or {}
Recipe.OnGiveXP = Recipe.OnGiveXP or {}
Recipe.OnTest = Recipe.OnTest or {}

-- 1. Slacker

-- 2. Hunter

-- 3. Gatherer

-- 4. Scavenger

-- 5. Smuggler
----------- BOF fn_t_smuggler Trait
--[[ 
    Sprinting/jogging is reduced by 50%
]]
--Events.OnPlayerUpdate.Remove(fn_t_smuggler)
local function fn_t_smuggler(player)
    if not player:HasTrait("t_smuggler") then return end

    local playerdata = player:getModData()
    local current_endurance = player:getStats():getEndurance();
    playerdata.SmugglerEndurance = playerdata.SmugglerEndurance or 2
    local needed_endurance = playerdata.SmugglerEndurance;
    if player:isPlayerMoving() and (player:isSprinting() or player:IsRunning()) then
        if needed_endurance == 2 then
            playerdata.SmugglerEndurance = current_endurance - 0.002;
        end
        if current_endurance < needed_endurance then
            player:getStats():setEndurance(current_endurance + 0.001);
            playerdata.SmugglerEndurance = current_endurance - 0.002;
        end
    else
        playerdata.SmugglerEndurance = 2;
    end
end
Events.OnPlayerUpdate.Add(fn_t_smuggler)
----------- EOF fn_t_smuggler Trait

-- 6. Soldier

-- 7. Farmer (farmer + axeman)
----------- BOF t_farmer Trait
--[[ 
    More effective in combat with farming tools and axes.
]]
Events.OnWeaponSwingHitPoint.Remove(fn_t_farmer_swing);
Events.OnPlayerAttackFinished.Remove(fn_t_farmer_end);
Events.OnEquipPrimary.Remove(fn_t_farmer);

-- Todo: add other axes
t_farmer_items = {
    ["Base.Axe"] = true,
    ["Base.HandFork"] = true,
    ["Base.Shovel2"] = true,
    ["Base.SnowShovel"] = true,
    ["Base.GardenFork"] = true,
    ["Base.GardenHoe"] = true,
    ["Base.Shovel"] = true
}

function fn_t_farmer(player, weapon_in_hand)
    if fn_t_farmer_check() ~= true then return end
    local item = weapon_in_hand:getModData()
    if item['is_farming_item'] ~= true then
        item['is_farming_item'] = true
        item['minDmg'] = item['minDmg'] or weapon_in_hand:getMinDamage()
        item['maxDmg'] = item['maxDmg'] or weapon_in_hand:getMaxDamage()
        item['GminDmg'] = math.floor(((item['minDmg'] * 1.5) * 10) / 10)
        item['GmaxDmg'] = math.floor(((item['maxDmg'] * 1.5) * 10) / 10)
        player:setHaloNote("xxxFarmer Bonus: " .. weapon_in_hand:getType())
        weapon_in_hand:setTooltip('xxxFarmerWeaponBonusDmg: ' .. item['GminDmg'] .. '-' .. item['GmaxDmg'])
        if weapon_in_hand:hasModData() and item['is_farming_item'] == true then
            weapon_in_hand:setMinDamage(item['GminDmg'])
            weapon_in_hand:setMaxDamage(item['GmaxDmg'])
        end
    else
        local item = weapon_in_hand:getModData()
        if weapon_in_hand:hasModData() then
            if item['minDmg'] ~= nil then weapon_in_hand:setMinDamage(item['minDmg']) end
            if item['maxDmg'] ~= nil then weapon_in_hand:setMaxDamage(item['maxDmg']) end
            item['minDmg'] = nil
            item['maxDmg'] = nil
            item['GmaxDmg'] = nil
            item['GminDmg'] = nil
            item['is_farming_item'] = nil
        end
    end
end

function fn_t_farmer_check()
    -- checks when the player is equiped with one of the listed weapons
    if getPlayer():getPrimaryHandItem() ~= nil then
        local weapon_in_hand = getPlayer():getPrimaryHandItem()
        if not weapon_in_hand then return false end
        if not t_farmer_items[weapon_in_hand:getFullType()] then return false end
        return true
    end
end

function fn_t_farmer_swing(player, weapon_in_hand)
    if not player:HasTrait("t_farmer") then return end
    if fn_t_farmer_check() ~= true then return end
    local item = weapon_in_hand:getModData()
    if weapon_in_hand:hasModData() and item['is_farming_item'] == true then
        weapon_in_hand:setMinDamage(item['GminDmg'])
        weapon_in_hand:setMaxDamage(item['GmaxDmg'])
    end
end

function fn_t_farmer_end(player, weapon_in_hand)
    if not player:HasTrait("t_farmer") then return end
    if fn_t_farmer_check() ~= true then return end
    local item = weapon_in_hand:getModData()
    if weapon_in_hand:hasModData() and item['is_farming_item'] == true then
        weapon_in_hand:setMinDamage(item['minDmg'])
        weapon_in_hand:setMaxDamage(item['maxDmg'])
    end
end

Events.OnWeaponSwingHitPoint.Add(fn_t_farmer_swing);
Events.OnPlayerAttackFinished.Add(fn_t_farmer_end);
Events.OnEquipPrimary.Add(fn_t_farmer);
----------- EOF t_farmer Trait

-- 8. Medic
--[[ 
    50% bonus to tailoring XP gains
]]
Events.AddXP.Remove(fn_t_medic);
local function fn_t_medic(player, perk, amount)
    if perk == Perks.Doctor and player:HasTrait("t_medic") then
        player:getXp():AddXP(perk, amount / 2, false, false, false);
    end
end
Events.AddXP.Add(fn_t_medic);

-- 9. Geek
----------- EOF t_geek Trait
--[[ 
    50% bonus to all XP gains
]]
Events.AddXP.Remove(fn_t_geek);
local function fn_t_geek(player, perk, amount)
    if player:HasTrait("t_geek") then
        player:getXp():AddXP(perk, amount / 2, false, false, false);
    end
end
Events.AddXP.Add(fn_t_geek);
----------- EOF t_geek Trait

----------- BOF t_antisocial Trait
--Events.EveryOneMinute.Remove(fn_t_antisocial)
function fn_t_antisocial()
    if not isClient() then return end
    local player = getPlayer()
    if not (player and player:HasTrait("t_antisocial")) then return end
    local panic_multiplier = SandboxVars.Tux.geekPanic or 10
    local panic_distance = SandboxVars.Tux.geekPanicDistance or 5
    local online_users = getOnlinePlayers()
    for i = 0, online_users:size() - 1 do
        local the_user = online_users:get(i)
        if player ~= the_user then
            if player:DistTo(online_users) <= panic_distance and 
                not player:getSquare():isBlockedTo(online_users:getSquare()) then
                player:getStats():setPanic(player:getStats():getPanic() + panic_multiplier)
            end
        end
    end
end
Events.EveryOneMinute.Add(fn_t_antisocial)
----------- EOF t_antisocial Trait

-- 10. Tailor
--[[ 
    25% bonus to tailoring XP gains
]]
Events.AddXP.Remove(fn_t_sewer);
local function fn_t_sewer(player, perk, amount)
    if perk == Perks.Tailoring and player:HasTrait("") then
        player:getXp():AddXP(perk, amount / 4, false, false, false);
    end
end
Events.AddXP.Add(fn_t_sewer);

-- 11. Engineer

-- 12. Carpenter

-- 13. Blacksmith
------------ BOF t_blacksmith Trait
--[[ 
    50% less propane usage when using blowtorch
]]
local function fn_t_blacksmith(player, item)
    if not player or not item then return end
    if not item == "Base.BlowTorch" or player:getPrimaryHandItem() == item then return end
    if player:HasTrait("t_blacksmith") then
        if item:getUseDelta() == 0.1 then
            item:setUseDelta(0.05)
        end
    else
        item:setUseDelta(0.1)
    end
end
Events.OnEquipPrimary.Add(fn_t_blacksmith);
----------- EOF t_blacksmith Trait

-- 14. Fisherman
--[[ 
    50% bonus to fishing XP gains
]]
Events.AddXP.Remove(fn_t_fisherman);
local function fn_t_fisherman(player, perk, amount)
    if perk == Perks.Fishing and player:HasTrait("t_fisherman") then
        player:getXp():AddXP(perk, amount / 2, false, false, false);
    end
end
Events.AddXP.Add(fn_t_fisherman);

-- 15. Cook
--[[ 
    50% bonus to cooking XP gains
]]
Events.AddXP.Remove(fn_t_cook);
local function fn_t_cook(player, perk, amount)
    if perk == Perks.Cooking and player:HasTrait("t_cook") then
        player:getXp():AddXP(perk, amount / 2, false, false, false);
    end
end
Events.AddXP.Add(fn_t_cook);


-- 16. Chaplain
--[[ 
    Reference: https://projectzomboid.com/modding/zombie/inventory/InventoryItem.html    
    Immune to sadness and boredom, but panics when possessing a weapon
]]
local function fn_t_faithful(player)
    if not player:HasTrait("t_faithful") then return end
    local bd = player:getBodyDamage()
    bd:setUnhappynessLevel(0)
    bd:setBoredomLevel(0)
end
Events.OnPlayerUpdate.Remove(fn_t_faithful)
Events.OnPlayerUpdate.Add(fn_t_faithful)

local function fn_t_faithful_context(player, context, items)
    local specific_player = getSpecificPlayer(player)      
    if not specific_player:HasTrait("t_faithful") then  return end
    items = ISInventoryPane.getActualItems(items)
    for _, item in ipairs(items) do 
        if item:IsWeapon() then   
            --local tool_tip = ISInventoryPaneContextMenu.addToolTip()
            --tool_tip.description = getText("Ohu! Weapons make me sick.")    
            specific_player:setHaloNote("Faithful Bonus: " .. specific_player:getStats():getPanic())
            specific_player:getStats():setPanic(specific_player:getStats():getPanic() + 10)
            break
        end
    end
end   
Events.OnFillInventoryObjectContextMenu.Remove(fn_t_faithful_context)
Events.OnFillInventoryObjectContextMenu.Add(fn_t_faithful_context)

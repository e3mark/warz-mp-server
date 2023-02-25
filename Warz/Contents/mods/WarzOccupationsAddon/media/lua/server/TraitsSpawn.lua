function TPLoc(arg1, arg2, arg3)
	    local pl = getPlayer()      
        pl:setX(arg1)
        pl:setY(arg2)
        pl:setZ(arg3)
        pl:setLx(arg1)
        pl:setLy(arg2)
        pl:setLz(arg3)
        pl:getModData()['spawned'] = true
end

function wherei()       
    local pl = getPlayer() 
    pl:setHaloNote(pl:getUsername().."s  Location\nX:".. math.floor(pl:getX()).."   Y:".. math.floor(pl:getY()).."   Z:".. math.floor(pl:getZ()))
    print(pl:getUsername().." Location   X:".. math.floor(pl:getX()).."   Y:".. math.floor(pl:getY()).."   Z:".. math.floor(pl:getZ()))
end
-- use this function to easily get your coordinates .. its stored in your clip-board after you  use the function all u need to do is paste
function clipPos() 
    local myPos = "X: "..math.floor(getPlayer():getX()) .."  Y: ".. math.floor(getPlayer():getY()) .."  Z: ".. math.floor(getPlayer():getZ()); 
    Clipboard.setClipboard(myPos);
    print("Clipboard Saved: " ..myPos );
end

Events.OnGameStart.Add(function()
    local pl = getPlayer()
    if not pl then return end
        --when you spawn in game it will check if the player has moddata called spawned
        if pl:getModData()['spawned'] == true then --and pl:getHoursSurvived() >= 0.1 then
        -- if it does it will cancel reading the rest of the function using return
            return 
    else 
        pl:getModData()['spawned'] = true 
        --the functions below checks for trait and if you have it it will teleport you
        if pl:HasTrait("Settler") then 
            TPLoc(3996,6518,0)
        end
        if pl:HasTrait("Raider") then 
            TPLoc(8296,10045,0)  
        end
        if pl:HasTrait("Nomad") then 
            TPLoc(12709,8728,0)  
        end
        if pl:HasTrait("Rogue") then 
            TPLoc(12709,8728,0)  
        end
    end
    -- after you teleport to prevent this from happening again , we add moddata which is the spawned
    -- so every time you login you wont get teleported anymore
end);

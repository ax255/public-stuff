--@name Chip Protection
--@author
--@server

local propOwner = chip():getOwner()

if owner() ~= propOwner then
    
    local chips = find.all(function(ent)
        
        local class = ent:getClass()
        
        if ( class == "gmod_wire_expression2" or class == "starfall_processor" ) and ent:getOwner() == propOwner then
            
            return ent
            
        end
        
    end)
    
    for i = 1, 5 do
        print(Color(255, 0, 0), "[" .. propOwner:getSteamID() .. "] " .. propOwner:getName() .. " stole [" .. chip():getChipName() .. "] do not place down any new chip!!!!")
    end
    
    for i, chi in ipairs(chips) do
        chi:remove() 
    end

end

--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: WoTD Team; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function GryphonDown_OnGossip(Unit, Event, Player)
Unit:GossipCreateMenu(100, Player, 0)
Unit:GossipMenuAddItem(0, "Go Down to Death's Breach", 1, 0)
Unit:GossipSendMenu(Player)
end

function GryphonDown_OnSelect(Unit, Event, Player, MenuId, id, Code)
if (id == 1) then
Player:Teleport(609, 2430.61, -5730.25, 157.855)
Unit:GossipComplete(Player)
end
end

function GryphonUp_OnGossip(Unit, Event, Player)
Unit:GossipCreateMenu(100, Player, 0)
Unit:GossipMenuAddItem(0, "Go Up to Heart of Acherus", 1, 0)
Unit:GossipSendMenu(Player)
end

function GryphonUp_OnSelect(Unit, Event, Player, MenuId, id, Code)
if (id == 1) then
Player:Teleport(609, 2363.69, -5659.33, 382.270)
Unit:GossipComplete(Player)
end
end

RegisterUnitGossipEvent(29488, 1, "GryphonDown_OnGossip")
RegisterUnitGossipEvent(29501, 1, "GryphonUp_OnGossip")
RegisterUnitGossipEvent(29488, 2, "GryphonDown_OnSelect")
RegisterUnitGossipEvent(29501, 2, "GryphonUp_OnSelect")
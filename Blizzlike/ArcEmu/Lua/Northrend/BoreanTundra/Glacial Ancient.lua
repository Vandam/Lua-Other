--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: WoTD Team; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function GlacialAncient_OnCombat(Unit, Event)
	Unit:RegisterEvent("GlacialAncient_FrostBreath", 8000, 0)
end

function GlacialAncient_FrostBreath(Unit, Event) 
	Unit:CastSpell(50505) 
end

function GlacialAncient_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function GlacialAncient_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(25709, 1, "GlacialAncient_OnCombat")
RegisterUnitEvent(25709, 2, "GlacialAncient_OnLeaveCombat")
RegisterUnitEvent(25709, 4, "GlacialAncient_OnDied")
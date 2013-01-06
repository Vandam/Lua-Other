-- TODO:Timer (3 seconds before goes into combat) ,enrage when tito is killed,check video when tito is summoned.
function Dorothee_Water_Bolt(Unit, event, miscUnit, misc)
	Unit:ClearThreatList()
	Unit:FullCastSpellOnTarget(31012,Unit:GetRandomPlayer())
end

function Dorothee_Summon_Tito(Unit, event, miscUnit, misc)
	Unit:FullCastSpell(31014)
	Unit:SendChatMessage(14, 0, "Don't let them hurt us Tito! Oh, you won't, will you?")
end

function Dorothee_Fear(Unit, event, miscUnit, misc)
	Unit:SendChatMessage(14, 0, "Tito! Oh Tito, no!")
	Unit:FullCastSpellOnTarget(40453, Unit:GetClosestPlayer())
end

function DorotheeDeath(Unit , event, miscUnit, misc)
	Unit:SendChatMessage(14, 0, "Oh at last, at last I can go home!")
	Unit:RemoveEvents()
end

function Dorothee(Unit, event, miscUnit, misc)
	tito = 0
	--combatcap = 0
	--Unit:SetCombatCapable(0)
	Unit:SendChatMessage(14, 0, "Oh Tito, we simply must find a way home! The old wizard could be our only hope! Strawman, Roar, Tinhead, will you - wait... oh golly, look we have visitors!")
	Unit:RegisterEvent("Dorothee_Water_Bolt", 8000, 0)
	Unit:RegisterEvent("Dorothee_Summon_Tito", 10000, 1)
	Unit:RegisterEvent("Dorothee_Fear", 15000, 0)
end

RegisterUnitEvent(17535, 1, "Dorothee")
RegisterUnitEvent(17535, 4, "DorotheeDeath")
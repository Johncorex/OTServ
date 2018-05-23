local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)

local condition = createConditionObject(CONDITION_INVISIBLE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 200000)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
	local blue = getPlayerStorageValue(cid, dtt.storage.team_blue)
	local red = getPlayerStorageValue(cid, dtt.storage.team_red)	
	if (blue > 0) or (red > 0) then return false end
	return doCombat(cid, combat, var)
end

local function removal(position)
	doRemoveThing(getTileItemById(position, IOE_IDTP).uid, 1)
    return TRUE
end

function onDeath(cid, corpse, killer)
	if getCreatureName(cid) == IOE_NAMEBOSS1 then
		local position = getCreaturePosition(cid)
		teleport = doCreateTeleport(IOE_IDTP, IOE_POSISLAND2, position)
		doItemSetAttribute(teleport, "uid", 5551)
		doCreatureSay(cid, IOE_MSGTELEPORT, TALKTYPE_ORANGE_1)
		doBroadcastMessage(IOE_MSGBOSS1)
		doSummonCreature(IOE_NAMEBOSS2, IOE_POSBOSS2)
		addEvent(removal, IOE_TIMETOREMOVE * 1000*60, position)
		doSendMagicEffect(position, 65)
	end	
	if getCreatureName(cid) == IOE_NAMEBOSS2 then
		local position = getCreaturePosition(cid)
		teleport = doCreateTeleport(IOE_IDTP, IOE_POSISLAND3, position)
		doItemSetAttribute(teleport, "uid", 5552)
		doCreatureSay(cid, IOE_MSGTELEPORT, TALKTYPE_ORANGE_1)
		doBroadcastMessage(IOE_MSGBOSS2)
		doSummonCreature(IOE_NAMEBOSS3, IOE_POSBOSS3)
		addEvent(removal, IOE_TIMETOREMOVE * 1000*60, position)
		doSendMagicEffect(position,65)
	end
	if getCreatureName(cid) == IOE_NAMEBOSS3 then
		local position = getCreaturePosition(cid)
		teleport = doCreateTeleport(IOE_IDTP, IOE_POSISLAND4, position)
		doItemSetAttribute(teleport, "uid", 5553)
		doCreatureSay(cid, IOE_MSGTELEPORT, TALKTYPE_ORANGE_1)
		doBroadcastMessage(IOE_MSGBOSS3)
		doSummonCreature(IOE_NAMEBOSS4, IOE_POSBOSS4)
		addEvent(removal, IOE_TIMETOREMOVE * 1000*60, position)
		doSendMagicEffect(position,65)
	end
	if getCreatureName(cid) == IOE_NAMEBOSS4 then
		local position = getCreaturePosition(cid)
		teleport = doCreateTeleport(IOE_IDTP, IOE_POSISLAND5, position)
		doItemSetAttribute(teleport, "uid", 5554)
		doCreatureSay(cid, IOE_MSGTELEPORT, TALKTYPE_ORANGE_1)
		doBroadcastMessage(IOE_MSGBOSS4)
		doSummonCreature(IOE_NAMEBOSS5, IOE_POSBOSS5)
		addEvent(removal, IOE_TIMETOREMOVE * 1000*60, position)
		doSendMagicEffect(position,65)
	end
	if getCreatureName(cid) == IOE_NAMEBOSS5 then
		local position = getCreaturePosition(cid)
		teleport =	doCreateTeleport(IOE_IDTP, IOE_TP, position)
		doItemSetAttribute(teleport, "uid", 5555)
		doCreatureSay(cid, IOE_MSGTELEPORT, TALKTYPE_ORANGE_1)
		doBroadcastMessage(IOE_MSGBOSS5)
		addEvent(removal, IOE_TIMETOREMOVE * 1000*60, position)
		doSendMagicEffect(position,65)
	end	
	return true
end
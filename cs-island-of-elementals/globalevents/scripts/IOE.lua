function onTime()
    local time = os.date("*t")
	local timeopen1 = math.ceil(IOE_TIMEWAIT / 4)
	local timeopen2 = math.ceil(IOE_TIMEWAIT / 2)
	if (isInArray(IOE_DAYS,time.wday)) then
		tps = doCreateTeleport(IOE_IDTP, IOE_TPGO, IOE_TP)
		doItemSetAttribute(tps, "uid", 5550)
		doBroadcastMessage(IOE_MSGWARNING)	
		addEvent(doBroadcastMessage, timeopen1*1000*60, "[ISLAND OF ELEMENTALS] - Resta(m) ".. timeopen2 .." minuto(s) para iniciar o evento!")
		if (timeopen2 ~= timeopen1) then
			addEvent(doBroadcastMessage, timeopen2*1000*60, "[ISLAND OF ELEMENTALS] - Resta(m) ".. timeopen1 .." minuto(s) para iniciar o evento!")
		end
		addEvent(startIOE, IOE_TIMEWAIT*1000*60, nil) 
	end
    return true
end

	
function countPlayers()
    local count = 0
    for _, pid in ipairs(getPlayersOnline()) do
        if isInRange(getCreaturePosition(pid), IOE_WAITROOM[1], IOE_WAITROOM[2]) then
            count = (count + 1)
        end
    end
    return count
end

function teleportPlayers()
    for _, pid in ipairs(getPlayersOnline()) do
        if isInRange(getCreaturePosition(pid), IOE_WAITROOM[1], IOE_WAITROOM[2]) then
            if getPlayerLevel(pid) >= IOE_LVLMIN then
				doTeleportThing(pid, IOE_POSISLAND1)
			else
				doPlayerSendTextMessage(pid, MESSAGE_INFO_DESCR, "Seu level e menor que ".. IOE_LVLMIN .. ", se dirija ao teleport de saida.")	
			end
        end
    end
    return true
end

function startIOE()
if (countPlayers() >= IOE_MINPLAYERS) then 
	doSummonCreature(IOE_NAMEBOSS1, IOE_POSBOSS1)
	teleportPlayers()
	doBroadcastMessage(IOE_MSGSTART)
	doRemoveItem(getTileItemById(IOE_TP, IOE_IDTP).uid)
else
	doBroadcastMessage(IOE_MSGCANCEL)
	doRemoveItem(getTileItemById(IOE_TP, IOE_IDTP).uid)
end
return true
end
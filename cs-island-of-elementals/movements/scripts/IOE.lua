function onStepIn(cid, item, fromPos, toPos)
local random_item = IOE_REWARDS[math.random(1, #IOE_REWARDS)]
local templo = getPlayerTown(cid)
local hora = os.date("%X")
local data = os.date("%x")
	if isPlayer(cid) then
		if item.uid == 5550 then 
			doSendMagicEffect(fromPos, CONST_ME_TELEPORT)
			doSendMagicEffect(getThingPos(cid), CONST_ME_TELEPORT)
			doBroadcastMessage("[ISLANF OF ELEMENTALS] O jogador ["..getCreatureName(cid).."] ingressou!")
			doPlayerSendTextMessage(cid,25, '[ISLAND OF ELEMENTALS] Bem vindo, aguarde ate a abertura do evento. Chame seus amigos pois ha um minimo de jogadores necessario para que abra. Lembrando se voce morrer ira perder items e skills.')
		end
		if item.uid == 5551 then 
			doPlayerAddItem(cid, random_item, 1)
			db.query("INSERT INTO `ioe`  VALUES ('', ".. db.escapeString(getPlayerName(cid)) ..  ",".. db.escapeString(data) ..", ".. db.escapeString(hora) ..", ".. random_item ..", 1);")
			doPlayerSendTextMessage(cid,25, '[ISLAND OF ELEMENTALS] Parabens voce avancou um nivel!')
		end
		if item.uid == 5552 then 
			doPlayerAddItem(cid, random_item, 1)
			db.query("INSERT INTO `ioe`  VALUES ('', ".. db.escapeString(getPlayerName(cid)) ..  ",".. db.escapeString(data) ..", ".. db.escapeString(hora) ..", ".. random_item ..", 2);")
			doPlayerSendTextMessage(cid,25, '[ISLAND OF ELEMENTALS] Parabens voce avancou um nivel!')
		end
		if item.uid == 5553 then 
			doPlayerAddItem(cid, random_item, 1)
			db.query("INSERT INTO `ioe`  VALUES ('', ".. db.escapeString(getPlayerName(cid)) ..  ",".. db.escapeString(data) ..", ".. db.escapeString(hora) ..", ".. random_item ..", 3);")
			doPlayerSendTextMessage(cid,25, '[ISLAND OF ELEMENTALS] Parabens voce avancou um nivel!')
		end
		if item.uid == 5554 then 
			doPlayerAddItem(cid, random_item, 1)
			db.query("INSERT INTO `ioe`  VALUES ('', ".. db.escapeString(getPlayerName(cid)) ..  ",".. db.escapeString(data) ..", ".. db.escapeString(hora) ..", ".. random_item ..", 4);")
			doPlayerSendTextMessage(cid,25, '[ISLAND OF ELEMENTALS] Parabens voce avancou um nivel!')
		end
		if item.uid == 5555 then 
			doPlayerAddItem(cid, random_item, 1)
			db.query("INSERT INTO `ioe`  VALUES ('', ".. db.escapeString(getPlayerName(cid)) ..  ",".. db.escapeString(data) ..", ".. db.escapeString(hora) ..", ".. random_item ..", 5);")
			doTeleportThing(cid, getTownTemplePosition(templo))
			doPlayerSendTextMessage(cid,25, '[ISLAND OF ELEMENTALS] Parabens voce completou o evento!')
		end
		if item.uid == 5556 then 
			doTeleportThing(cid, getTownTemplePosition(templo))
			doPlayerSendTextMessage(cid,25, '[ISLAND OF ELEMENTALS] Voce saiu do evento!')
		end
    end
return true
end
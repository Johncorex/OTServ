-- This script is part of Weekend Exp Event
-- Copyright (C) 2016 Ale Chaito - ChaitoSoft
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

-- //
config_weekend_exp = {
	dates = {"Tuesday", "Wednesday"}, -- Dias da semana que será ativo
	rates = {
			{1, 1.05}, -- {quantidade de jogador online, taxa de bonus}
			{200, 1.10},
			{300, 1.15},
		},
	storage_bonus = 30303,
}

function countPlayersOnline()
    local count = 0
    for _, pid in ipairs(getPlayersOnline()) do
        count = (count + 1)
    end
    return count
end

function get_bonus_weekend_exp()
	for _, rate in ipairs(config_weekend_exp.rates) do
		if countPlayersOnline() >= rate[1] then
			if getGlobalStorageValue(config_weekend_exp.storage_bonus) ~= 1 then
				doBroadcastMessage("[Weekend Exp Event] The server reached "..rate[1].." players online! The bonus of exp is now "..((rate[2] - 1)*100).."%!")
			end
			setGlobalStorageValue(config_weekend_exp.storage_bonus, 1) --Bonus ativado
			return rate[2] --retornando a taxa de exp que deve ser adicionada
		else
			setGlobalStorageValue(config_weekend_exp.storage_bonus, -1)
		end
	end
	return 1
end

function set_bonus_weekend_exp(cid, monster_name)
	local rate_bonus = get_bonus_weekend_exp()
	local monster = getMonsterInfo(monster_name)
	if getGlobalStorageValue(config_weekend_exp.storage_bonus) == 1 then
		if getConfigValue("experienceStages") == true then
			doPlayerAddExp(cid, (monster.experience * getExperienceStage(getPlayerLevel(cid))) * rate_bonus)
			doPlayerSendTextMessage(cid, 25, "[Weekend Exp Event] Voce esta com "..((rate_bonus - 1)*100).."% de bonus experiencia.")
		end
	end
	return true
end
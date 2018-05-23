-- This script is part of Island of Elementals
-- Copyright (C) 2016 ChaitoSoft
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


--CONFIGS DE GERAIS
IOE_WAITROOM = {{x = 11107, y = 1104, z = 7}, {x = 1109, y = 1106, z = 7}} -- Canto superior esquerdo / inferior direito da sala de espera
IOE_POSBOSS1 = {x=1075, y=1159, z=7} -- Posicao do boss Island Fire
IOE_POSBOSS2 = {x=1075, y=1159, z=7} -- Posicao do boss Island Ice
IOE_POSBOSS3 = {x=1075, y=1159, z=7} -- Posicao do boss Island Earth
IOE_POSBOSS4 = {x=1075, y=1159, z=7} -- Posicao do boss Island Energy
IOE_POSBOSS5 = {x=1075, y=1159, z=7} -- Posicao do boss Island Death
IOE_POSISLAND1 = {x=1075, y=1159, z=7} -- Posicao do ilha fire
IOE_POSISLAND2 = {x=1075, y=1159, z=7} -- Posicao do ilha ice
IOE_POSISLAND3 = {x=1075, y=1159, z=7} -- Posicao do ilha earth
IOE_POSISLAND4 = {x=1075, y=1159, z=7} -- Posicao do ilha energy
IOE_POSISLAND5 = {x=1075, y=1159, z=7} -- Posicao do ilha death
IOE_TIMETOREMOVE = 4 -- tempo aberto em minutos do teleport dos monstros

--CONFIGS DE ABERTURA
IOE_DAYS = {1,2,3,4,5,6,7} -- dias de semana que vai abrir
IOE_TP = {x=1075, y=1159, z=7} -- local onde teleport sera criado
IOE_TPGO = {x=1075, y=1159, z=7} -- local da sala de espera
IOE_MINPLAYERS = 7 -- minimo de jogadores para iniciar o evento
IOE_TIMEWAIT = 5 -- tempo de espera para iniciar o evento, em minutos
IOE_LVLMIN = 150 -- level minimo dos jogadores para entrarem no evento

--PREMIO DO EVENTO
IOE_REWARDS = {2494, 2472, 2514, 2493, 2470, 2195, 2173, 2160}


-- // Não mexa daqui para baixo 
IOE_NAMEBOSS1 = "Island Fire" 
IOE_NAMEBOSS2 = "Island Ice"
IOE_NAMEBOSS3 = "Island Earth" 
IOE_NAMEBOSS4 = "Island Energy" 
IOE_NAMEBOSS5 = "Island Death" 
IOE_IDTP = 1387 -- ID DOS TELEPORTS
IOE_MSGBOSS1 = "[ISLAND OF ELEMENTALS] Os bravos guerreiros derrotaram o boss Island Fire!"
IOE_MSGBOSS2 = "[ISLAND OF ELEMENTALS] Os bravos guerreiros derrotaram o boss Island Ice!"
IOE_MSGBOSS3 = "[ISLAND OF ELEMENTALS] Os bravos guerreiros derrotaram o boss Island Earth!"
IOE_MSGBOSS4 = "[ISLAND OF ELEMENTALS] Os bravos guerreiros derrotaram o boss Island Energy!"
IOE_MSGBOSS5 = "[ISLAND OF ELEMENTALS] Os bravos guerreiros derrotaram o mais temido boss Island Death, o evento foi encerrado!"
IOE_MSGTELEPORT = "Suba no corpo para avancar de nivel!"
IOE_MSGWARNING = "[ISLAND OF ELEMENTALS] Abriu, corra ate o teeport localizado no templo para participar, inicia em 5 minutos!"
IOE_MSGSTART = "[ISLAND OF ELEMENTALS] Iniciou, o temido Island of Fire ja esta a espera, boa sorte!"
IOE_MSGCANCEL = "[ISLAND OF ELEMENTALS] Cancelado por falta de jogadores, se dirijam ao TP de saida."
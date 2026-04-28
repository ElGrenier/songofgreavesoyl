kill @e[tag=immune]
kill @e[tag=char_displays]
kill @e[tag=de_ladders]
scoreboard players reset Purple
scoreboard players reset Yellow
team empty yellow
team empty purple
team empty ffa
effect clear @a
scoreboard players set @a char 0
clear @a
execute as @a at @s run function core:main/game/initiate_stats
spawnpoint @a 124 12 -172
kill @a[tag=!not_kill_on_reset]
execute as @a run rotate @s 180 0
scoreboard players remove @a StatDeaths 1
execute as @a run function core:lobby/tp_lobby
gamemode adventure @a
execute as @a run function core:main/clear_chat
scoreboard objectives setdisplay sidebar

scoreboard players set map settings 0
scoreboard players set game_state settings 0
scoreboard players set @a Loading -1
scoreboard players reset * score
scoreboard players reset @a ticket
scoreboard players reset * Picks
scoreboard players reset ticket settings

tag @a remove outsider
tag @a remove in_a_team
tag @a remove in_game
tag @a remove winner
function battlegrounds:map_settings
time set day

kill @e[tag=bomb]
kill @e[type=creeper]
kill @e[type=zombie]
kill @e[type=skeleton]
kill @e[type=fireball]

kill @e[tag=projectile]

setblock 123 12 -179 oak_wall_sign[facing=south]{front_text:{messages:[{text:"===================",color:"dark_green",bold:1b,type:"text"},{text:"CHANGE",color:"green",bold:1b,type:"text"},{text:"MAP",color:"green",bold:1b,type:"text",click_event:{action:"run_command",command:"/function messages:lobby_map_info"}},{text:"===================",color:"dark_green",bold:1b,type:"text"}]}}
setblock 124 12 -179 oak_wall_sign[facing=south]{front_text:{messages:[{text:"==================",color:"gold",bold:1b,type:"text"},{text:"START",color:"yellow",bold:1b,type:"text"},{text:"GAME",color:"yellow",bold:1b,type:"text",click_event:{action:"run_command",command:"/function core:lobby/start_game"}},{text:"==================",color:"gold",bold:1b,type:"text"}]}}
setblock 125 12 -179 oak_wall_sign[facing=south]{front_text:{messages:[{text:"===================",color:"dark_green",bold:1b,type:"text"},{text:"CHANGE",color:"green",bold:1b,type:"text"},{text:"OPTIONS",color:"green",bold:1b,type:"text",click_event:{action:"run_command",command:"/trigger LobbyTrigger set 110"}},{text:"===================",color:"dark_green",bold:1b,type:"text"}]}}

kill @e[tag=ban_stand]

function crawlermode:reset
function core:lobby/initialize_lobby

function core:lobby/credit_room_stands

# Wylaczanie altarow - ruiny
setblock 185 38 -153 black_concrete destroy
setblock 216 38 -184 black_concrete destroy
setblock 243 38 -211 black_concrete destroy

# Wylaczanie altarow - crypt
setblock 248 52 -60 black_concrete destroy
setblock 204 52 -88 black_concrete destroy
setblock 226 52 -74 black_concrete destroy

# altary off - fortress

setblock 566 29 -166 black_concrete destroy
setblock 566 29 -196 black_concrete destroy
setblock 566 43 -127 black_concrete destroy

# altary off - desert
setblock 282 28 -162 black_concrete destroy
setblock 300 28 -180 black_concrete destroy
setblock 322 28 -202 black_concrete destroy

# altary off - vallley of bones
setblock 277 38 -14 black_concrete destroy
setblock 277 38 19 black_concrete destroy
setblock 277 38 51 black_concrete destroy

#altary off - frozen burrow

setblock 568 40 -287 black_concrete destroy
setblock 568 29 -344 black_concrete destroy

#altary off - island

setblock 367 31 209 black_concrete destroy
setblock 326 31 195 black_concrete destroy
setblock 312 31 153 black_concrete destroy

setblock 395 31 186 black_concrete destroy
setblock 363 31 158 black_concrete destroy
setblock 335 31 126 black_concrete destroy

setblock 411 31 159 black_concrete destroy
setblock 412 31 109 black_concrete destroy
setblock 362 31 110 black_concrete destroy

# fossiled Tomb
setblock 174 38 -601 black_concrete
setblock 216 38 -643 black_concrete
setblock 132 38 -560 black_concrete

execute as @a run function core:main/clear_chat
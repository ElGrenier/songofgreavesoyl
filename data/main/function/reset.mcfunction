kill @e[tag=immune]
kill @e[tag=GameStart]
kill @e[tag=char_displays]
scoreboard players reset Purple
scoreboard players reset Yellow
team empty yellow
team empty purple
effect clear @a
clear @a
execute as @a at @s run function main:initiate_stats
spawnpoint @a 207 34 -131
kill @a
scoreboard players remove @a StatDeaths 1
tp @a 207 34 -131
gamemode adventure @a
execute as @a run function main:clear_chat
scoreboard objectives setdisplay sidebar

time set day

kill @e[tag=bomb]
kill @e[type=minecraft:creeper]
kill @e[type=minecraft:zombie]
kill @e[type=minecraft:skeleton]
kill @e[type=minecraft:fireball]

kill @e[tag=projectile]

kill @e[tag=wav_mode]

clone 206 4 -110 218 11 -103 168 11 -94

clone 143 4 -148 165 7 -144 174 4 -150

setblock 176 12 -85 minecraft:air replace
setblock 176 12 -85 minecraft:oak_wall_sign[facing=south]{front_text:{messages:[{text:"===================",bold:1b,color:"dark_purple",type:"text"},{text:"CASUAL",color:"light_purple",bold:1b,type:"text"},{text:"GAME",color:"light_purple",bold:1b,type:"text",click_event:{action:"run_command",command:"/function lobby:unless_draft_sign"}},{text:"===================",bold:1b,color:"dark_purple",type:"text"}]},is_waxed:1b} replace

kill @e[tag=ban_stand]

kill @e[tag=credits_stands]

#credits stands

summon minecraft:armor_stand 175.2 10 -54.8 {Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["credit_stand_1","credits_stands"],Pose:{LeftArm:[292.0f,8.0f,0.0f],RightArm:[0.0f,0.0f,30.0f],Head:[7.0f,0.0f,0.0f]},Rotation:[110.0f,0.0f],equipment:{offhand:{id:"minecraft:wooden_shovel",count:1},feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":4601162},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":5323092},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":1776425},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;1019899568,1107578268,-1075045540,-1027306440],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzA3YjRiODMwNDg1MDJhYWJjYzkzYmE5ZTdmNDQxYmQzZDllYTFmZWM5YWMzNzMyYTNmNGYyNjJhNDVkYTVmIn19fQ=="}]}},count:1}}}
#summon minecraft:armor_stand 175 10 -56 {Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["credit_stand_1","credits_stands"],Pose:{LeftArm:[292.0f,8.0f,0.0f],RightArm:[0.0f,0.0f,30.0f],Head:[7.0f,0.0f,0.0f]},Rotation:[110.0f,0.0f],HandItems:[{},{id:"minecraft:wooden_shovel",count:1b}],ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:4009515}},count:1b},{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":{rgb:6582376}},count:1b},{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":{rgb:9810611}},count:1b},{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-1652800884,-394440824,-1539070152,79445693],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWZiOTkyMGNhZDg4YzlhZDEwMDJkNjJlZTY0NzkxZjFiYmYyYWQ3Y2M0ODY4Yjg3Y2YwNTczYjM1M2E4OWE1ZCJ9fX0="}]}},count:1b}]}
summon minecraft:armor_stand 174.0 9.8 -54.3 {Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["credit_stand_2","credits_stands"],Pose:{LeftArm:[310.0f,0.0f,324.0f],RightArm:[307.0f,0.0f,331.0f],Head:[52.0f,346.0f,0.0f]},Rotation:[-150.0f,0.0f],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":1441853},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":3165803},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":2175593},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;1096518971,772227499,-1319081969,566760083],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzg4YmM5YmNhMTVlZDhlMzllNjI5N2NjYzAwZjI4MGQ0YTFhM2Q1M2M4MTFkM2IyZmJkYWMzYWZjNDcxNWI4MSJ9fX0="}]}},count:1}}}
summon minecraft:armor_stand 179 10 -60 {Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["credit_stand_3","credits_stands"],Pose:{LeftArm:[29.0f,32.0f,0.0f],RightArm:[243.0f,54.0f,26.0f],LeftLeg:[12.0f,0.0f,0.0f],RightLeg:[345.0f,0.0f,0.0f],Head:[12.0f,0.0f,0.0f]},Rotation:[98.0f,0.0f],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":13817824},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":13817824},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":13357273},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;1235822765,-1260567261,-1528558890,729494523],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjhlNGIxNzM3MTg0MWFlMjg3MTEwZDAwMDhiYWNkMzQ1MmQ4OTM0OTQ3YWJmNDQxNGY3YjYyY2YzZWI4YTdjYyJ9fX0="}]}},count:1}}}
summon minecraft:armor_stand 169 10 -60 {Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["credit_stand_4","credits_stands"],Pose:{LeftArm:[303.0f,330.0f,0.0f],RightArm:[303.0f,48.0f,0.0f],LeftLeg:[338.0f,30.0f,0.0f],RightLeg:[14.0f,43.0f,0.0f],Head:[352.0f,4.0f,0.0f]},Rotation:[-90.0f,0.0f],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":0},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":2500393},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":1513497},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;1752445634,-2090057062,-1902064227,-72940958],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDliOTI5Y2IwOWFiOTQ2NTk5MDdiOGEyYTY5NjhiYTJiYzc5NmZiYWEzMmE3ZTQ2YzQ0ZWJmNDI4OGUzZDA2ZCJ9fX0="}]}},count:1}}}


#execute as @e[tag=credit_stand_1] at @s run tp @s ~-0.3 ~ ~0.7
#execute as @e[tag=credit_stand_2] at @s run tp @s ~0.5 ~-0.2 ~1.2

# Wylaczanie altarow - ruiny
setblock 185 38 -153 minecraft:black_concrete destroy
setblock 216 38 -184 minecraft:black_concrete destroy
setblock 243 38 -211 minecraft:black_concrete destroy

# Wylaczanie altarow - crypt
setblock 248 52 -60 minecraft:black_concrete destroy
setblock 204 52 -88 minecraft:black_concrete destroy
setblock 226 52 -74 minecraft:black_concrete destroy

# altary off - fortress
setblock 324 29 -90 minecraft:black_concrete destroy
setblock 324 29 -60 minecraft:black_concrete destroy
setblock 324 43 -21 minecraft:black_concrete destroy

# altary off - desert
setblock 282 28 -162 minecraft:black_concrete destroy
setblock 300 28 -180 minecraft:black_concrete destroy
setblock 322 28 -202 minecraft:black_concrete destroy

# altary off - vallley of bones
setblock 277 38 -14 minecraft:black_concrete destroy
setblock 277 38 19 minecraft:black_concrete destroy
setblock 277 38 51 minecraft:black_concrete destroy

#altary off - frozen burrow

setblock 330 37 -264 minecraft:black_concrete destroy
setblock 330 37 -321 minecraft:black_concrete destroy

#altary off - island

setblock 367 31 209 minecraft:black_concrete destroy
setblock 326 31 195 minecraft:black_concrete destroy
setblock 312 31 153 minecraft:black_concrete destroy

setblock 395 31 186 minecraft:black_concrete destroy
setblock 363 31 158 minecraft:black_concrete destroy
setblock 335 31 126 minecraft:black_concrete destroy

setblock 411 31 159 minecraft:black_concrete destroy
setblock 412 31 109 minecraft:black_concrete destroy
setblock 362 31 110 minecraft:black_concrete destroy
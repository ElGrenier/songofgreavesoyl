kill @e[tag=immune]
kill @e[tag=char_displays]
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
kill @a
scoreboard players remove @a StatDeaths 1
execute as @a run function core:lobby/tp_lobby
gamemode adventure @a
execute as @a run function core:main/clear_chat
scoreboard objectives setdisplay sidebar

scoreboard players set map settings 0
scoreboard players set game_state settings 0
scoreboard players set @a Loading -1
scoreboard players reset * score
scoreboard players reset * ticket

tag @a remove outsider
tag @a remove in_a_team
tag @a remove in_game
tag @a remove winner
function battlegrounds:map_settings
time set day

kill @e[tag=bomb]
kill @e[type=minecraft:creeper]
kill @e[type=minecraft:zombie]
kill @e[type=minecraft:skeleton]
kill @e[type=minecraft:fireball]

kill @e[tag=projectile]

setblock 176 12 -85 minecraft:air replace
setblock 176 12 -85 minecraft:oak_wall_sign[facing=south]{front_text:{messages:[{text:"===================",bold:1b,color:"dark_purple",type:"text"},{text:"CASUAL",color:"light_purple",bold:1b,type:"text"},{text:"GAME",color:"light_purple",bold:1b,type:"text",click_event:{action:"run_command",command:"/function lobby:unless_draft_sign"}},{text:"===================",bold:1b,color:"dark_purple",type:"text"}]},is_waxed:1b} replace

kill @e[tag=ban_stand]


function core:lobby/initialize_lobby

#credits stands

kill @e[tag=credits_stands]


#mrkisiel
summon armor_stand 124 13 -141 {Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["credit_stand_1","credits_stands"],Pose:{Body:[357f,0f,0f],Head:[344f,0f,7f],LeftLeg:[313f,27f,0f],RightLeg:[337f,351f,0f],LeftArm:[29f,16f,0f],RightArm:[240f,66f,0f]},Rotation:[181.0f,0.0f],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":4601162},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":5323092},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":1776425},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;1019899568,1107578268,-1075045540,-1027306440],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzA3YjRiODMwNDg1MDJhYWJjYzkzYmE5ZTdmNDQxYmQzZDllYTFmZWM5YWMzNzMyYTNmNGYyNjJhNDVkYTVmIn19fQ=="}]}},count:1}}}
summon item_display 124 13 -141 {item: {count: 1, id: "minecraft:barrel"},Tags:["credit_stand_1_1","credits_stands"], transformation: {left_rotation: [0.0f, -0.17364818f, 0.0f, 0.9848077f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0000001f, 0.99999994f, 1.0000001f], translation: [0.0f, 0.0f, 0.0f]}}
execute as @e[tag=credit_stand_1_1] at @s run tp @s ~ ~0.3 ~0.5


#azeth
summon armor_stand 126 13 -141 {Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["credit_stand_2","credits_stands"],Pose:{Head:[14f,346f,335f],LeftArm:[284f,42f,0f],RightArm:[289f,44f,0f]},Rotation:[154.0f,0.0f],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":1441853},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":3165803},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":2175593},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;1096518971,772227499,-1319081969,566760083],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzg4YmM5YmNhMTVlZDhlMzllNjI5N2NjYzAwZjI4MGQ0YTFhM2Q1M2M4MTFkM2IyZmJkYWMzYWZjNDcxNWI4MSJ9fX0="}]}},count:1}}}

#wav
summon armor_stand 118 13 -145 {Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["credit_stand_3","credits_stands"],Pose:{LeftArm:[29.0f,32.0f,0.0f],RightArm:[243.0f,54.0f,26.0f],LeftLeg:[12.0f,0.0f,0.0f],RightLeg:[345.0f,0.0f,0.0f],Head:[12.0f,0.0f,0.0f]},Rotation:[-98.0f,0.0f],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":13817824},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":13817824},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":13357273},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;1235822765,-1260567261,-1528558890,729494523],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjhlNGIxNzM3MTg0MWFlMjg3MTEwZDAwMDhiYWNkMzQ1MmQ4OTM0OTQ3YWJmNDQxNGY3YjYyY2YzZWI4YTdjYyJ9fX0="}]}},count:1}}}

#exo
summon armor_stand 118 13 -147 {Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["credit_stand_4","credits_stands"],Pose:{LeftArm:[303.0f,330.0f,0.0f],RightArm:[303.0f,48.0f,0.0f],LeftLeg:[338.0f,30.0f,0.0f],RightLeg:[14.0f,43.0f,0.0f],Head:[352.0f,4.0f,0.0f]},Rotation:[-90.0f,0.0f],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":0},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":2500393},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":1513497,"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:vex"}},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;1752445634,-2090057062,-1902064227,-72940958],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDliOTI5Y2IwOWFiOTQ2NTk5MDdiOGEyYTY5NjhiYTJiYzc5NmZiYWEzMmE3ZTQ2YzQ0ZWJmNDI4OGUzZDA2ZCJ9fX0="}]}},count:1}}}

#baguette
summon armor_stand 122 13 -141 {Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["credit_stand_5","credits_stands"],Pose:{Head:[346f,0f,0f],LeftLeg:[11f,0f,0f],RightLeg:[0f,9f,0f],LeftArm:[322f,0f,7f],RightArm:[326f,0f,-9f]},Rotation:[-174.0f,0.0f],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":0},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":2699079},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":1909299},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;1898757055,906450138,-1717234180,-878979230],properties:[{name:"textures",value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzc5MDdiMjQ5YWZlZjk3ZDlhNGFkOWNlMzMwMzdhZjBkZjFmMjM3N2Y3NDc2YWMxNTVlNzQ4MWE5M2Y0YjQyNSJ9fX0="}]}},count:1}}}
summon item_display 122 14 -142 {item: {count: 1, id: "minecraft:command_block"},Tags:["credit_stand_5_1","credits_stands"], transformation: {left_rotation: [0.9781477f, 0.0f, 0.0f, -0.2079117f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.6000001f, 0.6f, 0.6f], translation: [0.0f, 0.0f, 0.0f]}}
execute as @e[tag=credit_stand_5_1] at @s run tp @s ~ ~-0.2 ~0.5

#jajo
summon armor_stand 130 13 -145 {Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["credit_stand_6","credits_stands"],Pose:{LeftArm:[16f,0f,324f],RightArm:[88f,256f,0f],LeftLeg:[0f,0f,357f],RightLeg:[0f,9f,3f],Head:[346f,44f,0f]},Rotation:[94F,0F],equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":0}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":0}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":13371914,"minecraft:trim":{material:"minecraft:iron",pattern:"minecraft:vex"}}},head:{id:"minecraft:player_head",count:1,components:{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2U0NGYyOGJkNjU0ZGFkZmE0NDFkNjVkMTdhNzZiM2Q5NzdlMmVkOGIzZTgxZGJiNGZkOTU0N2FkNzQ4Y2JkZiJ9fX0="}]}}}}}

#frank low
summon armor_stand 130 13 -147 {Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["credit_stand_7","credits_stands"],Pose:{Body:[0f,357f,0f],Head:[346f,337f,0f],LeftLeg:[9f,0f,0f],RightLeg:[342f,0f,0f],LeftArm:[0f,0f,275f],RightArm:[42f,315f,0f]},Rotation:[91.0f,0.0f],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":2866504},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":8311924},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":4046644},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-813354239,-862562404,-1697352337,-426532949],properties:[{name:"textures",value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTlkZjg0MWZiNjUwMGJhNjM5ZjQzOGU5MWYwZmYyZjhhZGI1NDMzYjI1YTk1ZGYyYWJkNjRhNzQzM2QxOGUyZSJ9fX0="}]}},count:1}}}


# Wylaczanie altarow - ruiny
setblock 185 38 -153 minecraft:black_concrete destroy
setblock 216 38 -184 minecraft:black_concrete destroy
setblock 243 38 -211 minecraft:black_concrete destroy

# Wylaczanie altarow - crypt
setblock 248 52 -60 minecraft:black_concrete destroy
setblock 204 52 -88 minecraft:black_concrete destroy
setblock 226 52 -74 minecraft:black_concrete destroy

# altary off - fortress

setblock 566 29 -166 minecraft:black_concrete destroy
setblock 566 29 -196 minecraft:black_concrete destroy
setblock 566 43 -127 minecraft:black_concrete destroy

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

execute as @a run function core:main/clear_chat
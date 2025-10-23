kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:rail"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:saddle"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_shovel"}}]


#stempede


scoreboard players set @a[scores={universal_sprint=1..,char=57}] passive_runa_reset 15
scoreboard players add @a[scores={universal_sprint=1..,char=57}] passive_runa 1

scoreboard players set @a[scores={passive_runa=1..,passive_runa_reset=1..2,char=57}] passive_runa 0
scoreboard players remove @a[scores={passive_runa_reset=1..,char=57}] passive_runa_reset 1

effect give @a[scores={passive_runa=40..119,char=57}] minecraft:speed 1
effect give @a[scores={passive_runa=40..79,char=57}] minecraft:resistance 1
effect give @a[scores={passive_runa=81..99,char=57}] minecraft:resistance 1 1
effect give @a[scores={passive_runa=121..,char=57}] minecraft:resistance 1 2
effect give @a[scores={passive_runa=121..,char=57}] minecraft:speed 1 1

execute at @a[scores={passive_runa=41..119,char=57}] run particle minecraft:crit ~ ~ ~ 0.3 0.1 0.3 0.3 5

execute at @a[scores={passive_runa=121..,char=57}] run particle minecraft:crit ~ ~ ~ 0.5 0.2 0.5 0.4 10
execute at @a[scores={passive_runa=121..,char=57}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:gray_concrete"}} ~ ~ ~ 0.5 0.2 0.5 0.01 3

execute at @a[scores={passive_runa=121..,char=57},team=yellow] if entity @p[distance=..1,team=purple] run summon minecraft:marker ~ ~ ~ {Tags:["stempede_collision"]}
execute at @a[scores={passive_runa=121..,char=57},team=purple] if entity @p[distance=..1,team=yellow] run summon minecraft:marker ~ ~ ~ {Tags:["stempede_collision"]}


execute at @e[tag=stempede_collision] if entity @a[scores={char=57},team=yellow] run scoreboard players set @a[distance=..2,team=purple] CC_stun 20

execute at @e[tag=stempede_collision] if entity @a[scores={char=57},team=purple] run scoreboard players set @a[distance=..3,team=yellow] CC_stun 20

execute at @e[tag=stempede_collision] run effect clear @a[scores={char=57}] minecraft:speed
execute at @e[tag=stempede_collision] run effect give @a[scores={char=57}] minecraft:resistance 3 2
execute at @e[tag=stempede_collision] run scoreboard players set @a[scores={char=57}] passive_runa 0
execute at @e[tag=stempede_collision] run scoreboard players set @a[scores={char=57}] passive_runa_reset 0
execute at @e[tag=stempede_collision] run particle minecraft:cloud ~ ~1 ~ 1 1 1 0.1 10
execute at @e[tag=stempede_collision] run particle minecraft:crit ~ ~1 ~ 2 2 2 0.6 100
execute at @e[tag=stempede_collision] run playsound minecraft:entity.player.hurt master @a[distance=..15] ~ ~ ~ 1 0.2 1
execute at @e[tag=stempede_collision] run playsound minecraft:entity.zombie.break_wooden_door master @a[distance=..15] ~ ~ ~ 0.5 0.9 1
kill @e[tag=stempede_collision]

title @a[scores={char=57,passive_runa=0..19}] actionbar [{text:"[",bold:1b,color:"dark_gray",type:"text"},{text:"",color:"yellow",type:"text"},{text:"======",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_gray",type:"text"}]
title @a[scores={char=57,passive_runa=20..39}] actionbar [{text:"[",bold:1b,color:"dark_gray",type:"text"},{text:"=",color:"yellow",type:"text"},{text:"=====",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_gray",type:"text"}]
title @a[scores={char=57,passive_runa=40..59}] actionbar [{text:"[",bold:1b,color:"dark_gray",type:"text"},{text:"==",color:"gold",type:"text"},{text:"====",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_gray",type:"text"}]
title @a[scores={char=57,passive_runa=60..79}] actionbar [{text:"[",bold:1b,color:"dark_gray",type:"text"},{text:"===",color:"gold",type:"text"},{text:"===",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_gray",type:"text"}]
title @a[scores={char=57,passive_runa=80..99}] actionbar [{text:"[",bold:1b,color:"dark_gray",type:"text"},{text:"====",color:"red",type:"text"},{text:"==",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_gray",type:"text"}]
title @a[scores={char=57,passive_runa=100..119}] actionbar [{text:"[",bold:1b,color:"dark_gray",type:"text"},{text:"=====",color:"red",type:"text"},{text:"=",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_gray",type:"text"}]
title @a[scores={char=57,passive_runa=120..}] actionbar [{text:"[",bold:1b,color:"dark_gray",type:"text"},{text:"======",color:"dark_red",bold:1b,type:"text"},{text:"",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_gray",type:"text"}]

#shacke

scoreboard players set @a[scores={char=57,spell_runa_1_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=57,spell_runa_1_1=1,CC_silence=1..}] spell_runa_1_1 140

execute at @a[scores={char=57,spell_runa_1_1=1,CC_silence=0}] run playsound minecraft:block.chain.place master @a[distance=..15] ~ ~ ~ 1 0.3 1
execute at @a[scores={char=57,spell_runa_1_1=1,CC_silence=0}] run playsound minecraft:entity.player.attack.sweep master @a[distance=..15] ~ ~ ~ 0.5 0.8 1
execute at @a[scores={char=57,spell_runa_1_1=1,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:["grab_chain"],NoGravity:0b,equipment:{head:{id:"minecraft:iron_block",count:1}}}
execute at @a[scores={char=57,spell_runa_1_1=1,CC_silence=0}] run summon minecraft:marker ~ ~ ~ {Tags:["grab_chain_visual_core"]}
tp @e[tag=grab_chain,limit=1] @a[scores={char=57,spell_runa_1_1=1},limit=1]

#execute at @e[tag=ch_shackle_visuals] run particle block{block_state: 'minecraft:iron_block'} ~ ~1 ~ 0.1 0.1 0.1 0.0001 4 normal
#execute at @e[tag=grab_chain] run particle block{block_state: 'minecraft:iron_block'} ^ ^1 ^-1 0.1 0.1 0.1 0.0001 3 normal
execute as @e[tag=grab_chain] at @s run tp @s ^ ^ ^0.5

execute store result entity @e[tag=grab_chain,limit=1] Rotation[1] float 1 run clear
execute as @e[tag=grab_chain] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=grab_chain] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s


#execute at @a[tag=grab_chain] unless entity @e[tag=grab_chain_visual_core] run summon marker ~ ~ ~ {Tags:["grab_chain_visual_core"]}
execute as @e[tag=grab_chain] at @s run tp @e[tag=grab_chain_visual_core] ~ ~ ~ facing entity @p[scores={char=57}]

execute as @e[tag=grab_chain_visual_core] at @s if entity @a[scores={char=57,spell_runa_1_1=2}] unless entity @e[tag=ch_shackle1] at @s positioned ^ ^ ^1 run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:["ch_shackle1","ch_shackle_visuals","ch_shackle_visuals_1"],Marker:1b,equipment:{head:{id:"minecraft:iron_block",count:1}}}
execute as @e[tag=grab_chain_visual_core] at @s if entity @a[scores={char=57,spell_runa_1_1=4}] unless entity @e[tag=ch_shackle2] at @s positioned ^ ^ ^2 run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:["ch_shackle2","ch_shackle_visuals","ch_shackle_visuals_1"],Marker:1b,equipment:{head:{id:"minecraft:iron_block",count:1}}}
execute as @e[tag=grab_chain_visual_core] at @s if entity @a[scores={char=57,spell_runa_1_1=6}] unless entity @e[tag=ch_shackle3] at @s positioned ^ ^ ^3 run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:["ch_shackle3","ch_shackle_visuals","ch_shackle_visuals_1"],Marker:1b,equipment:{head:{id:"minecraft:iron_block",count:1}}}
execute as @e[tag=grab_chain_visual_core] at @s if entity @a[scores={char=57,spell_runa_1_1=8}] unless entity @e[tag=ch_shackle4] at @s positioned ^ ^ ^4 run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:["ch_shackle4","ch_shackle_visuals","ch_shackle_visuals_1"],Marker:1b,equipment:{head:{id:"minecraft:iron_block",count:1}}}
execute as @e[tag=grab_chain_visual_core] at @s if entity @a[scores={char=57,spell_runa_1_1=12}] unless entity @e[tag=ch_shackle5] at @s positioned ^ ^ ^5 run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:["ch_shackle5","ch_shackle_visuals","ch_shackle_visuals_1"],Marker:1b,equipment:{head:{id:"minecraft:iron_block",count:1}}}
execute as @e[tag=grab_chain_visual_core] at @s if entity @a[scores={char=57,spell_runa_1_1=14}] unless entity @e[tag=ch_shackle6] at @s positioned ^ ^ ^6 run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:["ch_shackle6","ch_shackle_visuals","ch_shackle_visuals_1"],Marker:1b,equipment:{head:{id:"minecraft:iron_block",count:1}}}
execute as @e[tag=grab_chain_visual_core] at @s if entity @a[scores={char=57,spell_runa_1_1=16}] unless entity @e[tag=ch_shackle7] at @s positioned ^ ^ ^6 run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:["ch_shackle7","ch_shackle_visuals","ch_shackle_visuals_1"],Marker:1b,equipment:{head:{id:"minecraft:iron_block",count:1}}}
execute as @e[tag=grab_chain_visual_core] at @s if entity @a[scores={char=57,spell_runa_1_1=18}] unless entity @e[tag=ch_shackle8] at @s positioned ^ ^ ^6 run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:["ch_shackle8","ch_shackle_visuals","ch_shackle_visuals_1"],Marker:1b,equipment:{head:{id:"minecraft:iron_block",count:1}}}
#execute as @e[tag=grab_chain_visual_core] at @s if entity @a[scores={char=57,spell_runa_1_1=18}] unless entity @e[tag=ch_shackle9] at @s positioned ^ ^ ^6 run summon armor_stand ~ ~ ~ {Small:1,ArmorItems:[{},{},{},{id:"iron_block",Count:1b}],Invisible:1b,Tags:["ch_shackle9","ch_shackle_visuals","ch_shackle_visuals_1"],Marker:1}


#execute as @e[tag=grab_chain_visual_core] at @s positioned ^ ^ ^9 run tp @e[tag=ch_shackle9] ~ ~ ~
execute as @e[tag=grab_chain_visual_core] at @s positioned ^ ^ ^8 run tp @e[tag=ch_shackle8] ~ ~ ~
execute as @e[tag=grab_chain_visual_core] at @s positioned ^ ^ ^7 run tp @e[tag=ch_shackle7] ~ ~ ~
execute as @e[tag=grab_chain_visual_core] at @s positioned ^ ^ ^6 run tp @e[tag=ch_shackle6] ~ ~ ~
execute as @e[tag=grab_chain_visual_core] at @s positioned ^ ^ ^5 run tp @e[tag=ch_shackle5] ~ ~ ~
execute as @e[tag=grab_chain_visual_core] at @s positioned ^ ^ ^4 run tp @e[tag=ch_shackle4] ~ ~ ~
execute as @e[tag=grab_chain_visual_core] at @s positioned ^ ^ ^3 run tp @e[tag=ch_shackle3] ~ ~ ~
execute as @e[tag=grab_chain_visual_core] at @s positioned ^ ^ ^2 run tp @e[tag=ch_shackle2] ~ ~ ~
execute as @e[tag=grab_chain_visual_core] at @s positioned ^ ^ ^1 run tp @e[tag=ch_shackle1] ~ ~ ~

execute at @a[scores={char=57,spell_runa_1_1=20..22}] run kill @e[tag=grab_chain]
execute at @a[scores={char=57,spell_runa_1_1=20..22}] run kill @e[tag=grab_chain_visual_core]
execute at @a[scores={char=57,spell_runa_1_1=20..22}] run kill @e[tag=ch_shackle_visuals_1]


execute if entity @a[scores={char=57,CC_silence=0},team=purple] at @e[tag=grab_chain] if entity @a[distance=..2,team=yellow] run playsound minecraft:block.chain.place master @a[distance=..10] ~ ~ ~ 1 0.6 1
execute if entity @a[scores={char=57,CC_silence=0},team=purple] at @e[tag=grab_chain] if entity @a[distance=..2,team=yellow] run tag @p[team=yellow] add runaway_pull
execute if entity @a[scores={char=57,CC_silence=0},team=purple] at @e[tag=grab_chain] if entity @a[distance=..2,team=yellow] run kill @e[tag=grab_chain]

execute if entity @a[scores={char=57,CC_silence=0},team=yellow] at @e[tag=grab_chain] if entity @a[distance=..2,team=purple] run playsound minecraft:block.chain.place master @a[distance=..10] ~ ~ ~ 1 0.6 1
execute if entity @a[scores={char=57,CC_silence=0},team=yellow] at @e[tag=grab_chain] if entity @a[distance=..2,team=purple] run tag @p[team=purple] add runaway_pull
execute if entity @a[scores={char=57,CC_silence=0},team=yellow] at @e[tag=grab_chain] if entity @a[distance=..2,team=purple] run kill @e[tag=grab_chain]

execute at @a[tag=runaway_pull] run kill @e[tag=grab_chain_visual_core]
execute at @a[tag=runaway_pull] run kill @e[tag=ch_shackle_visuals_1]


scoreboard players set @a[tag=runaway_pull] CC_stun 10

execute if entity @a[tag=runaway_pull] run effect give @a[scores={char=57}] minecraft:slow_falling 1 1 true

execute at @a[scores={char=57}] run scoreboard players set @a[distance=..1,tag=runaway_pull] CC_stun 0
execute at @a[scores={char=57}] run scoreboard players set @a[distance=..1,tag=runaway_pull] CC_disarm 40
execute at @a[scores={char=57}] run tag @a[distance=..1,tag=runaway_pull] remove runaway_pull

execute as @a[scores={char=57}] at @s run tp @s ~ ~ ~ facing entity @p[tag=runaway_pull,limit=1]
execute if entity @a[tag=runaway_pull] as @a[scores={char=57}] at @s run tp @s ^ ^ ^1
execute as @a[scores={char=57,spell_runa_1_1=20..22}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~

execute at @a[scores={char=57,universal_death=1..}] run tag @a remove runaway_pull
tag @a[tag=runaway_pull,scores={universal_death=1..}] remove runaway_pull

#overpower

scoreboard players set @a[scores={char=57,spell_runa_2_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=57,spell_runa_2_1=1,CC_silence=1..}] spell_runa_2_1 260

execute at @a[scores={char=57,spell_runa_2_1=1,CC_silence=0}] run playsound minecraft:entity.player.attack.strong master @a[distance=..15] ~ ~ ~ 1 1.1 1
execute at @a[scores={char=57,spell_runa_2_1=1,CC_silence=0,passive_runa=0..119}] run summon minecraft:marker ~ ~ ~ {Tags:["overpower_grab","grab_normal"]}
execute at @a[scores={char=57,spell_runa_2_1=1,CC_silence=0,passive_runa=120..}] run summon minecraft:marker ~ ~ ~ {Tags:["overpower_grab","grab_dash"]}
tp @e[tag=overpower_grab,limit=1] @a[scores={char=57,spell_runa_2_1=1},limit=1]
execute at @a[scores={char=57,spell_runa_2_1=1},limit=1] run tp @e[tag=grab_dash,limit=1] ~ ~0.5 ~


execute at @e[tag=overpower_grab] run particle minecraft:crit ~ ~1.5 ~ 0.8 0.4 0.8 0.1 30
execute as @e[tag=overpower_grab] at @s run tp @s ^ ^ ^0.5
execute as @e[tag=overpower_grab] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=overpower_grab] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s

tp @a[scores={char=57,spell_runa_2_1=1..14}] @e[tag=grab_dash,limit=1]

execute at @a[scores={char=57,spell_runa_2_1=7..}] run kill @e[tag=grab_normal]
execute at @a[scores={char=57,spell_runa_2_1=10..}] run kill @e[tag=grab_dash]

execute if entity @a[scores={char=57,CC_silence=0},team=purple] at @e[tag=overpower_grab] if entity @a[distance=..1.5,team=yellow] run playsound minecraft:item.armor.equip_leather master @a[distance=..10] ~ ~ ~ 1 0.4 1
execute if entity @a[scores={char=57,CC_silence=0},team=purple] at @e[tag=overpower_grab] if entity @a[distance=..1.5,team=yellow] run tag @p[team=yellow] add runaway_hold
execute if entity @a[scores={char=57,CC_silence=0},team=purple] at @e[tag=overpower_grab] if entity @a[distance=..1.5,team=yellow] run kill @e[tag=overpower_grab]

execute if entity @a[scores={char=57,CC_silence=0},team=yellow] at @e[tag=overpower_grab] if entity @a[distance=..1.5,team=purple] run playsound minecraft:item.armor.equip_leather master @a[distance=..10] ~ ~ ~ 1 0.4 1
execute if entity @a[scores={char=57,CC_silence=0},team=yellow] at @e[tag=overpower_grab] if entity @a[distance=..1.5,team=purple] run tag @p[team=purple] add runaway_hold
execute if entity @a[scores={char=57,CC_silence=0},team=yellow] at @e[tag=overpower_grab] if entity @a[distance=..1.5,team=purple] run kill @e[tag=overpower_grab]

execute at @a[scores={char=57,spell_runa_2_1=21,CC_silence=0}] if entity @a[tag=runaway_hold] run playsound minecraft:entity.player.attack.strong master @a[distance=..15] ~ ~ ~ 1 0.4 1
execute at @a[scores={char=57,spell_runa_2_1=21,CC_silence=0}] if entity @a[tag=runaway_hold] run playsound minecraft:entity.snowball.throw master @a[distance=..15] ~ ~ ~ 1 0.1 1
execute at @a[scores={char=57,spell_runa_2_1=21,CC_silence=0}] if entity @a[tag=runaway_hold] run summon minecraft:marker ~ ~ ~ {Tags:["overpower_throw"]}
tp @e[tag=overpower_throw,limit=1] @a[scores={char=57,spell_runa_2_1=21},limit=1]


execute at @a[scores={char=57,universal_death=1..}] run tag @a remove runaway_hold
execute at @a[tag=runaway_hold,scores={universal_death=1..}] run kill @e[tag=overpower_throw]
tag @a[tag=runaway_hold,scores={universal_death=1..}] remove runaway_hold

execute at @e[tag=overpower_throw] run particle minecraft:crit ~ ~1.5 ~ 0.8 0.4 0.8 0.1 50
execute as @e[tag=overpower_throw] at @s run tp @s ^ ^ ^0.9
execute as @e[tag=overpower_throw] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=overpower_throw] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s

execute at @a[scores={char=57,spell_runa_2_1=31..}] run kill @e[tag=overpower_throw]

execute at @a[scores={char=57,spell_runa_2_1=31..35}] as @a[tag=runaway_hold] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~

execute at @a[scores={char=57,spell_runa_2_1=31..}] run tag @a remove runaway_hold

scoreboard players set @a[tag=runaway_hold] CC_stun 5
effect give @a[tag=runaway_hold] minecraft:slow_falling 1 100 true

execute as @a[scores={char=57,CC_silence=0,spell_runa_2_1=1..20}] at @s run tp @a[tag=runaway_hold] ^ ^1.5 ^0.8
execute at @a[scores={char=57,CC_silence=0,spell_runa_2_1=21..30}] run tp @a[tag=runaway_hold] @e[tag=overpower_throw,limit=1]

execute at @a[scores={char=57,CC_silence=0,spell_runa_2_1=21..30},team=yellow] at @e[tag=overpower_throw] if entity @a[distance=0.5..2,team=purple] run summon minecraft:marker ~ ~ ~ {Tags:["throw_collision"]}


execute at @a[scores={char=57,CC_silence=0,spell_runa_2_1=21..30},team=purple] at @e[tag=overpower_throw] if entity @a[distance=0.5..2,team=yellow] run summon minecraft:marker ~ ~ ~ {Tags:["throw_collision"]}


execute at @e[tag=throw_collision] if entity @a[scores={char=57},team=yellow] run scoreboard players set @a[distance=..1.5,team=purple] CC_stun 50

execute at @e[tag=throw_collision] if entity @a[scores={char=57},team=purple] run scoreboard players set @a[distance=..1.5,team=yellow] CC_stun 50

execute at @e[tag=throw_collision] run particle minecraft:cloud ~ ~ ~ 1 1 1 0.1 30
execute at @e[tag=throw_collision] run particle minecraft:crit ~ ~ ~ 1.5 1.5 1.5 0.5 100
execute at @e[tag=throw_collision] run playsound minecraft:entity.zombie.break_wooden_door master @a[distance=..15] ~ ~ ~ 1 1.5 1
execute at @e[tag=throw_collision] run kill @e[tag=overpower_throw]
kill @e[tag=throw_collision]


# runaway


scoreboard players add @a[scores={spell_runa_1=1..}] spell_runa_1_1 1
item replace entity @a[scores={char=57,spell_runa_1_1=160..}] hotbar.1 with minecraft:rail[minecraft:custom_name={text:"Unshackled",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_runa_1_1=161..}] spell_runa_1 0
scoreboard players set @a[scores={spell_runa_1_1=161..}] spell_runa_1_1 0
scoreboard players set @a[scores={char=57,spell_runa_1_1=1}] spellCD1 160

scoreboard players add @a[scores={spell_runa_2=1..}] spell_runa_2_1 1
item replace entity @a[scores={char=57,spell_runa_2_1=280..}] hotbar.2 with minecraft:saddle[minecraft:custom_name={text:"Overpower",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":10}] 1
scoreboard players set @a[scores={spell_runa_2_1=281..}] spell_runa_2 0
scoreboard players set @a[scores={spell_runa_2_1=281..}] spell_runa_2_1 0
scoreboard players set @a[scores={spell_runa_2_1=1}] spellCD2 280

execute as @a[scores={char=57}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:iron_shovel",Slot:0b}]}] run clear @a[scores={char=57}] minecraft:iron_shovel
item replace entity @a[scores={char=57}] hotbar.0 with minecraft:iron_shovel[minecraft:custom_name={bold:1b,color:"gray",text:"Mace"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.8d,operation:"add_multiplied_base",slot:"mainhand"}]] 1


execute as @a[scores={char=57,spell_runa_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:rail",Slot:1b}]}] run clear @a[scores={char=57}] minecraft:rail
item replace entity @a[scores={char=57,spell_runa_1=0}] hotbar.1 with minecraft:rail[minecraft:custom_name={text:"Unshackled",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=57,spell_runa_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:saddle",Slot:2b}]}] run clear @a[scores={char=57}] minecraft:saddle
item replace entity @a[scores={char=57,spell_runa_2=0}] hotbar.2 with minecraft:saddle[minecraft:custom_name={text:"Overpower",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":10}] 1
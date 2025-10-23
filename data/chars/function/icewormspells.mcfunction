kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:dead_brain_coral"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:powder_snow_bucket"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_hoe"}}]

#ice worms contract

execute at @a[scores={char=43},team=purple] if entity @p[distance=1..10,team=purple] run effect give @a[scores={char=43}] minecraft:resistance 1
execute at @a[scores={char=43},team=purple] run effect give @a[distance=1..10,team=purple] minecraft:resistance 1

execute at @a[scores={char=43},team=yellow] if entity @p[distance=1..10,team=yellow] run effect give @a[scores={char=43}] minecraft:resistance 1
execute at @a[scores={char=43},team=yellow] run effect give @a[distance=1..10,team=yellow] minecraft:resistance 1


#breath of rime

scoreboard players set @a[scores={char=43,spell_icew_1_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=43,spell_icew_1_1=1,CC_silence=1..}] spell_icew_1_1 200

execute at @a[scores={char=43,spell_icew_1_1=2,CC_silence=0}] run playsound minecraft:entity.zombie.infect master @a[distance=..10] ~ ~ ~ 1 0.1 1
execute at @a[scores={char=43,spell_icew_1_1=2,CC_silence=0}] run playsound minecraft:entity.spider.death master @a[distance=..10] ~ ~ ~ 0.5 0.5 1
#execute at @a[scores={char=43,spell_icew_1_1=2,CC_silence=0}] run playsound entity.player.hurt_freeze master @a[distance=..10] ~ ~ ~ 0.3 0.8 1
execute at @a[scores={char=43,spell_icew_1_1=2..6,CC_silence=0}] run playsound minecraft:block.snow.break master @a[distance=..10] ~ ~ ~ 1 0.4 1
execute at @a[scores={char=43,spell_icew_1_1=2,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["breathofrime"],NoGravity:1b,Marker:1b}
tp @e[tag=breathofrime,limit=1] @a[scores={char=43,spell_icew_1_1=2..3},limit=1]
execute as @e[tag=breathofrime] at @s run tp @s ^ ^ ^0.4


execute if entity @a[scores={char=43},team=purple] at @e[tag=breathofrime] run effect give @a[distance=..2,team=yellow] minecraft:slowness 4 1
execute if entity @a[scores={char=43},team=purple] at @e[tag=breathofrime] run effect give @a[distance=..2,team=yellow] minecraft:blindness 4 1
execute if entity @a[scores={char=43},team=yellow] at @e[tag=breathofrime] run effect give @a[distance=..2,team=purple] minecraft:slowness 4 1
execute if entity @a[scores={char=43},team=yellow] at @e[tag=breathofrime] run effect give @a[distance=..2,team=purple] minecraft:blindness 4 1

execute if entity @a[scores={char=43},team=purple] at @e[tag=breathofrime] run effect give @a[distance=..2,team=purple] minecraft:absorption 3 1

execute if entity @a[scores={char=43},team=yellow] at @e[tag=breathofrime] run effect give @a[distance=..2,team=yellow] minecraft:absorption 3 1



execute at @a[scores={char=43,spell_icew_1_1=4..11}] at @e[tag=breathofrime] run particle minecraft:cloud ~ ~1.5 ~ 0.5 0.5 0.5 0.01 3
execute at @a[scores={char=43,spell_icew_1_1=4..12}] at @e[tag=breathofrime] run particle minecraft:falling_dust{block_state:{Name:"minecraft:snow"}} ~ ~1.5 ~ 0.5 0.5 0.5 0.01 2
execute at @a[scores={char=43,spell_icew_1_1=5..18}] at @e[tag=breathofrime] run particle minecraft:cloud ~ ~1.5 ~ 1 1 1 0.01 5
execute at @a[scores={char=43,spell_icew_1_1=12..20}] at @e[tag=breathofrime] run particle minecraft:falling_dust{block_state:{Name:"minecraft:snow"}} ~ ~1.5 ~ 1 1 1 0.01 3
execute at @a[scores={char=43,spell_icew_1_1=15..20}] at @e[tag=breathofrime] run particle minecraft:cloud ~ ~1.5 ~ 1.5 1.5 1.5 0.01 7

execute at @a[scores={char=43,spell_icew_1_1=20..}] run kill @e[tag=breathofrime]

#frozen burrow

scoreboard players set @a[scores={char=43,spell_icew_2_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=43,spell_icew_2_1=1,CC_silence=1..}] spell_icew_2_1 100

execute at @e[tag=skryal_tunnel,scores={SummonAge=3..}] run particle minecraft:cloud ~ ~0.3 ~ 1 0.5 1 0.5 5
execute at @e[tag=skryal_tunnel,scores={SummonAge=3..}] run particle minecraft:block{block_state:{Name:"minecraft:snow_block"}} ~ ~0.3 ~ 1 0.5 1 0.5 20
execute at @e[tag=skryal_tunnel,scores={SummonAge=3..}] run playsound minecraft:block.gravel.break master @a[distance=..10] ~ ~ ~ 1 0.4 1
kill @e[tag=skryal_tunnel,scores={SummonAge=3..}]

execute at @a[scores={char=43,spell_icew_2_1=2}] run summon minecraft:marker ~ ~ ~ {Tags:["skryal_tunnel"]}
execute at @a[scores={char=43,spell_icew_2_1=3}] run scoreboard players add @e[tag=skryal_tunnel] SummonAge 1
scoreboard players set @a[scores={char=43,spell_icew_2_1=1..20}] tunneling -5
scoreboard players set @a[scores={char=43,spell_icew_2_1=21}] tunneling 0

execute at @a[scores={char=43,spell_icew_2_1=2}] run playsound minecraft:block.gravel.break master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=43,spell_icew_2_1=5}] run playsound minecraft:block.gravel.break master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=43,spell_icew_2_1=10}] run playsound :block.gravel.break master @a[distance=..10] ~ ~ ~ 1 0.8 1


execute at @e[tag=skryal_tunnel] run particle minecraft:falling_dust{block_state:{Name:"minecraft:snow"}} ~ ~0.2 ~ 0.6 0.6 0.6 0.01 1
execute at @e[tag=skryal_tunnel] run particle minecraft:cloud ~ ~0.2 ~ 0.5 0.5 0.5 0.01 1
execute as @e[tag=skryal_tunnel] at @s if block ~ ~ ~ #minecraft:dash run tp @s ~ ~-0.2 ~

execute as @e[tag=skryal_tunnel_visuals] at @s unless entity @e[distance=..2,tag=skryal_tunnel] run kill @s

execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] unless entity @e[tag=skryal_tunnel_visual_a_1] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[0.0f,0.0f],Small:1b,Invisible:1b,Tags:["skryal_tunnel_visual_a_1","skryal_tunnel_visuals"],Marker:1b,equipment:{head:{id:"minecraft:snow_block",count:1}}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] unless entity @e[tag=skryal_tunnel_visual_a_2] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[0.0f,0.0f],Small:1b,Invisible:1b,Tags:["skryal_tunnel_visual_a_2","skryal_tunnel_visuals"],Marker:1b,equipment:{head:{id:"minecraft:snow_block",count:1}}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] unless entity @e[tag=skryal_tunnel_visual_a_3] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[0.0f,0.0f],Small:1b,Invisible:1b,Tags:["skryal_tunnel_visual_a_3","skryal_tunnel_visuals"],Marker:1b,equipment:{head:{id:"minecraft:snow_block",count:1}}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] unless entity @e[tag=skryal_tunnel_visual_a_4] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[0.0f,0.0f],Small:1b,Invisible:1b,Tags:["skryal_tunnel_visual_a_4","skryal_tunnel_visuals"],Marker:1b,equipment:{head:{id:"minecraft:snow_block",count:1}}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] unless entity @e[tag=skryal_tunnel_visual_a_5] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[0.0f,0.0f],Small:1b,Invisible:1b,Tags:["skryal_tunnel_visual_a_5","skryal_tunnel_visuals"],Marker:1b,equipment:{head:{id:"minecraft:snow_block",count:1}}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] unless entity @e[tag=skryal_tunnel_visual_a_6] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[0.0f,0.0f],Small:1b,Invisible:1b,Tags:["skryal_tunnel_visual_a_6","skryal_tunnel_visuals"],Marker:1b,equipment:{head:{id:"minecraft:snow_block",count:1}}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] unless entity @e[tag=skryal_tunnel_visual_a_7] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[0.0f,0.0f],Small:1b,Invisible:1b,Tags:["skryal_tunnel_visual_a_7","skryal_tunnel_visuals"],Marker:1b,equipment:{head:{id:"minecraft:snow_block",count:1}}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] unless entity @e[tag=skryal_tunnel_visual_a_8] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[0.0f,0.0f],Small:1b,Invisible:1b,Tags:["skryal_tunnel_visual_a_8","skryal_tunnel_visuals"],Marker:1b,equipment:{head:{id:"minecraft:snow_block",count:1}}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] unless entity @e[tag=skryal_tunnel_visual_a_9] run summon minecraft:armor_stand ~ ~-1.5 ~ {Rotaion:[0.0f,0.0f],Invisible:1b,Tags:["skryal_tunnel_visual_a_9","skryal_tunnel_visuals"],Marker:1b,equipment:{head:{id:"minecraft:packed_ice",count:1}}}

execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] run tp @e[tag=skryal_tunnel_visual_a_1] ~ ~-0.7 ~0.5
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] run tp @e[tag=skryal_tunnel_visual_a_2] ~ ~-0.7 ~-0.5
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] run tp @e[tag=skryal_tunnel_visual_a_3] ~0.5 ~-0.7 ~
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] run tp @e[tag=skryal_tunnel_visual_a_4] ~-0.5 ~-0.7 ~
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] run tp @e[tag=skryal_tunnel_visual_a_5] ~0.4 ~-0.7 ~0.4
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] run tp @e[tag=skryal_tunnel_visual_a_6] ~-0.4 ~-0.7 ~-0.4
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] run tp @e[tag=skryal_tunnel_visual_a_7] ~-0.4 ~-0.7 ~0.4
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] run tp @e[tag=skryal_tunnel_visual_a_8] ~0.4 ~-0.7 ~-0.4
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] run tp @e[tag=skryal_tunnel_visual_a_9] ~ ~-1.7 ~

execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] unless entity @e[tag=skryal_tunnel_visual_b_1] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[0.0f,0.0f],Small:1b,Invisible:1b,Tags:["skryal_tunnel_visual_b_1","skryal_tunnel_visuals"],Marker:1b,equipment:{head:{id:"minecraft:snow_block",count:1}}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] unless entity @e[tag=skryal_tunnel_visual_b_2] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[0.0f,0.0f],Small:1b,Invisible:1b,Tags:["skryal_tunnel_visual_b_2","skryal_tunnel_visuals"],Marker:1b,equipment:{head:{id:"minecraft:snow_block",count:1}}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] unless entity @e[tag=skryal_tunnel_visual_b_3] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[0.0f,0.0f],Small:1b,Invisible:1b,Tags:["skryal_tunnel_visual_b_3","skryal_tunnel_visuals"],Marker:1b,equipment:{head:{id:"minecraft:snow_block",count:1}}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] unless entity @e[tag=skryal_tunnel_visual_b_4] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[0.0f,0.0f],Small:1b,Invisible:1b,Tags:["skryal_tunnel_visual_b_4","skryal_tunnel_visuals"],Marker:1b,equipment:{head:{id:"minecraft:snow_block",count:1}}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] unless entity @e[tag=skryal_tunnel_visual_b_5] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[0.0f,0.0f],Small:1b,Invisible:1b,Tags:["skryal_tunnel_visual_b_5","skryal_tunnel_visuals"],Marker:1b,equipment:{head:{id:"minecraft:snow_block",count:1}}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] unless entity @e[tag=skryal_tunnel_visual_b_6] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[0.0f,0.0f],Small:1b,Invisible:1b,Tags:["skryal_tunnel_visual_b_6","skryal_tunnel_visuals"],Marker:1b,equipment:{head:{id:"minecraft:snow_block",count:1}}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] unless entity @e[tag=skryal_tunnel_visual_b_7] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[0.0f,0.0f],Small:1b,Invisible:1b,Tags:["skryal_tunnel_visual_b_7","skryal_tunnel_visuals"],Marker:1b,equipment:{head:{id:"minecraft:snow_block",count:1}}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] unless entity @e[tag=skryal_tunnel_visual_b_8] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[0.0f,0.0f],Small:1b,Invisible:1b,Tags:["skryal_tunnel_visual_b_8","skryal_tunnel_visuals"],Marker:1b,equipment:{head:{id:"minecraft:snow_block",count:1}}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] unless entity @e[tag=skryal_tunnel_visual_b_9] run summon minecraft:armor_stand ~ ~-1.5 ~ {Rotaion:[0.0f,0.0f],Invisible:1b,Tags:["skryal_tunnel_visual_b_9","skryal_tunnel_visuals"],Marker:1b,equipment:{head:{id:"minecraft:packed_ice",count:1}}}

execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] run tp @e[tag=skryal_tunnel_visual_b_1] ~ ~-0.7 ~0.5
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] run tp @e[tag=skryal_tunnel_visual_b_2] ~ ~-0.7 ~-0.5
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] run tp @e[tag=skryal_tunnel_visual_b_3] ~0.5 ~-0.7 ~
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] run tp @e[tag=skryal_tunnel_visual_b_4] ~-0.5 ~-0.7 ~
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] run tp @e[tag=skryal_tunnel_visual_b_5] ~0.4 ~-0.7 ~0.4
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] run tp @e[tag=skryal_tunnel_visual_b_6] ~-0.4 ~-0.7 ~-0.4
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] run tp @e[tag=skryal_tunnel_visual_b_7] ~-0.4 ~-0.7 ~0.4
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] run tp @e[tag=skryal_tunnel_visual_b_8] ~0.4 ~-0.7 ~-0.4
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] run tp @e[tag=skryal_tunnel_visual_b_9] ~ ~-1.7 ~

execute as @e[tag=skryal_tunnel_visuals] at @s run tp @s ~ ~ ~ facing entity @e[tag=skryal_tunnel,sort=nearest,limit=1]

scoreboard players set @a[scores={CC_silence=1..}] tunneling 0
execute as @a[scores={tunneling=1..40}] at @s unless entity @e[distance=..1,tag=skryal_tunnel] run scoreboard players set @s tunneling 0

execute at @e[tag=skryal_tunnel] run scoreboard players add @a[distance=..1,scores={tunneling=0..40}] tunneling 1

scoreboard players add @a[scores={tunneling=41..}] tunneling 1
scoreboard players set @a[scores={tunneling=140..}] tunneling 0



#travel + sound effects
execute if entity @a[scores={char=43},team=yellow] at @a[scores={tunneling=1..41},team=yellow] run particle minecraft:block{block_state:{Name:"minecraft:snow_block"}} ~ ~1.5 ~ 0.1 0.5 0.1 0.01 1
execute if entity @a[scores={char=43},team=yellow] at @a[scores={tunneling=1..41},team=yellow] run playsound minecraft:block.gravel.place master @a[distance=..10] ~ ~ ~ 0.6 0.6 1
execute if entity @a[scores={char=43},team=yellow] at @a[scores={tunneling=42..43},team=yellow] run particle minecraft:cloud ~ ~1.5 ~ 0.5 1 0.5 0.01 20
execute if entity @a[scores={char=43},team=yellow] at @a[scores={tunneling=42..43},team=yellow] run playsound minecraft:block.gravel.break master @a[distance=..10] ~ ~ ~ 1 0.7 1

execute if entity @a[scores={char=43},team=purple] at @a[scores={tunneling=1..41},team=purple] run particle minecraft:block{block_state:{Name:"minecraft:snow_block"}} ~ ~1.5 ~ 0.1 0.5 0.1 0.01 1
execute if entity @a[scores={char=43},team=purple] at @a[scores={tunneling=1..41},team=purple] run playsound minecraft:block.gravel.place master @a[distance=..10] ~ ~ ~ 0.6 0.6 1
execute if entity @a[scores={char=43},team=purple] at @a[scores={tunneling=42..43},team=purple] run particle minecraft:cloud ~ ~1.5 ~ 0.5 1 0.5 0.01 20
execute if entity @a[scores={char=43},team=purple] at @a[scores={tunneling=42..43},team=purple] run playsound minecraft:block.gravel.break master @a[distance=..10] ~ ~ ~ 1 0.7 1

execute if entity @a[scores={char=43},team=yellow] as @a[scores={tunneling=42},team=yellow] at @s at @e[tag=skryal_tunnel,sort=furthest,limit=1] run tp @s ~ ~1 ~
execute if entity @a[scores={char=43},team=purple] as @a[scores={tunneling=42},team=purple] at @s at @e[tag=skryal_tunnel,sort=furthest,limit=1] run tp @s ~ ~1 ~

execute if entity @a[scores={char=43},team=yellow] run effect give @a[scores={tunneling=42},team=yellow] minecraft:speed 3
execute if entity @a[scores={char=43},team=yellow] run effect give @a[scores={tunneling=42},team=yellow] minecraft:speed 3
execute if entity @a[scores={char=43},team=yellow] run effect give @a[scores={tunneling=42},team=yellow] minecraft:levitation 1 7 true
execute if entity @a[scores={char=43},team=yellow] run effect give @a[scores={tunneling=42},team=yellow] minecraft:levitation 1 7 true
execute if entity @a[scores={char=43},team=yellow] run effect clear @a[scores={tunneling=44},team=yellow] minecraft:levitation
execute if entity @a[scores={char=43},team=yellow] run effect clear @a[scores={tunneling=44},team=yellow] minecraft:levitation



title @a[scores={tunneling=1..5}] times 0 3 1
title @a[scores={tunneling=1..40}] title {text:" ",type:"text"}

execute if entity @a[scores={char=43},team=yellow] run title @a[scores={tunneling=1..10},team=yellow] subtitle [{text:"[",bold:1b,color:"blue",type:"text"},{text:"=",color:"aqua",type:"text"},{text:"===",color:"gray",type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]
execute if entity @a[scores={char=43},team=yellow] run title @a[scores={tunneling=11..20},team=yellow] subtitle [{text:"[",bold:1b,color:"blue",type:"text"},{text:"==",color:"aqua",type:"text"},{text:"==",color:"gray",type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]
execute if entity @a[scores={char=43},team=yellow] run title @a[scores={tunneling=21..30},team=yellow] subtitle [{text:"[",bold:1b,color:"blue",type:"text"},{text:"===",color:"aqua",type:"text"},{text:"=",color:"gray",type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]
execute if entity @a[scores={char=43},team=yellow] run title @a[scores={tunneling=31..40},team=yellow] subtitle [{text:"[",bold:1b,color:"blue",type:"text"},{text:"====",color:"aqua",type:"text"},{text:"",color:"gray",type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]

execute if entity @a[scores={char=43},team=purple] run title @a[scores={tunneling=1..10},team=purple] subtitle [{text:"[",bold:1b,color:"blue",type:"text"},{text:"=",color:"aqua",type:"text"},{text:"===",color:"gray",type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]
execute if entity @a[scores={char=43},team=purple] run title @a[scores={tunneling=11..20},team=purple] subtitle [{text:"[",bold:1b,color:"blue",type:"text"},{text:"==",color:"aqua",type:"text"},{text:"==",color:"gray",type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]
execute if entity @a[scores={char=43},team=purple] run title @a[scores={tunneling=21..30},team=purple] subtitle [{text:"[",bold:1b,color:"blue",type:"text"},{text:"===",color:"aqua",type:"text"},{text:"=",color:"gray",type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]
execute if entity @a[scores={char=43},team=purple] run title @a[scores={tunneling=31..40},team=purple] subtitle [{text:"[",bold:1b,color:"blue",type:"text"},{text:"====",color:"aqua",type:"text"},{text:"",color:"gray",type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]


#breaking tunnels

execute if entity @a[scores={char=43},team=yellow] at @a[scores={tunneling=1..41},team=purple] run particle minecraft:block{block_state:{Name:"minecraft:snow_block"}} ~ ~0.5 ~ 0.5 0.5 0.5 0.01 1
execute if entity @a[scores={char=43},team=yellow] at @a[scores={tunneling=1..41},team=purple] run playsound minecraft:block.gravel.break master @a[distance=..10] ~ ~ ~ 0.6 0.6 1

execute if entity @a[scores={char=43},team=purple] at @a[scores={tunneling=1..41},team=yellow] run particle minecraft:block{block_state:{Name:"minecraft:snow_block"}} ~ ~0.5 ~ 0.5 0.5 0.5 0.01 1
execute if entity @a[scores={char=43},team=purple] at @a[scores={tunneling=1..41},team=yellow] run playsound minecraft:block.gravel.break master @a[distance=..10] ~ ~ ~ 0.6 0.6 1


execute if entity @a[scores={char=43},team=yellow] as @a[scores={tunneling=42},team=purple] run playsound minecraft:block.gravel.break master @a[distance=..10] ~ ~ ~ 1 0.4 1
execute if entity @a[scores={char=43},team=yellow] as @a[scores={tunneling=42},team=purple] run scoreboard players set @e[tag=skryal_tunnel] SummonAge 3

execute if entity @a[scores={char=43},team=purple] as @a[scores={tunneling=42},team=yellow] run playsound minecraft:block.gravel.break master @a[distance=..10] ~ ~ ~ 1 0.4 1
execute if entity @a[scores={char=43},team=purple] as @a[scores={tunneling=42},team=yellow] run scoreboard players set @e[tag=skryal_tunnel] SummonAge 3


# ice worm

scoreboard players add @a[scores={spell_icew_1=1..}] spell_icew_1_1 1
item replace entity @a[scores={char=43,spell_icew_1_1=220..}] hotbar.1 with minecraft:dead_brain_coral[minecraft:custom_name={text:"Breath of Rime",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:frost_walker":1}] 1
scoreboard players set @a[scores={spell_icew_1_1=221..}] spell_icew_1 0
scoreboard players set @a[scores={spell_icew_1_1=221..}] spell_icew_1_1 0
scoreboard players set @a[scores={spell_icew_1_1=1}] spellCD1 220

scoreboard players add @a[scores={spell_icew_2=1..}] spell_icew_2_1 1
item replace entity @a[scores={char=43,spell_icew_2_1=120..}] hotbar.2 with minecraft:powder_snow_bucket[minecraft:custom_name={text:"Frozen Burrow",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_icew_2_1=121..}] spell_icew_2 0
scoreboard players set @a[scores={spell_icew_2_1=121..}] spell_icew_2_1 0
scoreboard players set @a[scores={spell_icew_2_1=1}] spellCD2 120

execute as @a[scores={char=43}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:iron_hoe",Slot:0b}]}] run clear @a[scores={char=43}] minecraft:iron_hoe
item replace entity @a[scores={char=43}] hotbar.0 with minecraft:iron_hoe[minecraft:custom_name={bold:1b,color:"gray",text:"Worm Claw"},minecraft:unbreakable={},minecraft:enchantments={"minecraft:frost_walker":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"}]] 1


execute as @a[scores={char=43,spell_icew_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:dead_brain_coral",Slot:1b}]}] run clear @a[scores={char=43}] minecraft:dead_brain_coral
item replace entity @a[scores={char=43,spell_icew_1=0}] hotbar.1 with minecraft:dead_brain_coral[minecraft:custom_name={text:"Breath of Rime",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:frost_walker":1}] 1

execute as @a[scores={char=43,spell_icew_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:powder_snow_bucket",Slot:2b}]}] run clear @a[scores={char=43}] minecraft:powder_snow_bucket
item replace entity @a[scores={char=43,spell_icew_2=0}] hotbar.2 with minecraft:powder_snow_bucket[minecraft:custom_name={text:"Frozen Burrow",color:"dark_aqua",bold:1b}] 1

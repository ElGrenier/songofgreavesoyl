kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_pickaxe"}}]

#passive


execute as @a[scores={passive_drow=0,char=31}] as @a[advancements={chars:drowned_passive=true}] unless score @s Team = @p[scores={char=31}] Team run scoreboard players set @s CC_root 20
execute as @a[scores={passive_drow=0,char=31}] as @a[advancements={chars:drowned_passive=true}] unless score @s Team = @p[scores={char=31}] Team run scoreboard players set @s drownedroot_visual 5
advancement revoke @a[advancements={chars:drowned_passive=true}] only chars:drowned_passive

execute at @a[scores={drownedroot_visual=1..}] run particle minecraft:block{block_state:{Name:"minecraft:tuff"}} ~ ~0.5 ~ 0.5 1 0.5 0.1 5
execute at @a[scores={drownedroot_visual=1..}] run particle minecraft:block{block_state:{Name:"minecraft:water"}} ~ ~0.5 ~ 0.5 1 0.5 0.1 5
execute at @a[scores={drownedroot_visual=1..}] run particle minecraft:dripping_water ~ ~0.5 ~ 0.5 1 0.5 0.1 5

scoreboard players set @a[scores={passive_drow=0,universal_hit=1..}] passive_drow 160
scoreboard players remove @a[scores={passive_drow=1..}] passive_drow 1
scoreboard players remove @a[scores={drownedroot_visual=1..}] drownedroot_visual 1


title @a[scores={char=31,passive_drow=0}] actionbar [{text:"[",color:"dark_blue",bold:1b,type:"text"},{text:" Captain's Ire is ready ",bold:0b,color:"blue",type:"text"},{text:"]",color:"dark_blue",bold:1b,type:"text"}]
title @a[scores={char=31,passive_drow=1..20}] actionbar [{text:"[",color:"dark_blue",bold:1b,type:"text"},{text:"=======",color:"blue",type:"text"},{text:"",color:"gray",type:"text"},{text:"]",color:"dark_blue",bold:1b,type:"text"}]
title @a[scores={char=31,passive_drow=21..40}] actionbar [{text:"[",color:"dark_blue",bold:1b,type:"text"},{text:"======",color:"blue",type:"text"},{text:"=",color:"gray",type:"text"},{text:"]",color:"dark_blue",bold:1b,type:"text"}]
title @a[scores={char=31,passive_drow=41..60}] actionbar [{text:"[",color:"dark_blue",bold:1b,type:"text"},{text:"=====",color:"blue",type:"text"},{text:"==",color:"gray",type:"text"},{text:"]",color:"dark_blue",bold:1b,type:"text"}]
title @a[scores={char=31,passive_drow=61..80}] actionbar [{text:"[",color:"dark_blue",bold:1b,type:"text"},{text:"====",color:"blue",type:"text"},{text:"===",color:"gray",type:"text"},{text:"]",color:"dark_blue",bold:1b,type:"text"}]
title @a[scores={char=31,passive_drow=81..100}] actionbar [{text:"[",color:"dark_blue",bold:1b,type:"text"},{text:"===",color:"blue",type:"text"},{text:"====",color:"gray",type:"text"},{text:"]",color:"dark_blue",bold:1b,type:"text"}]
title @a[scores={char=31,passive_drow=101..120}] actionbar [{text:"[",color:"dark_blue",bold:1b,type:"text"},{text:"==",color:"blue",type:"text"},{text:"=====",color:"gray",type:"text"},{text:"]",color:"dark_blue",bold:1b,type:"text"}]
title @a[scores={char=31,passive_drow=121..140}] actionbar [{text:"[",color:"dark_blue",bold:1b,type:"text"},{text:"=",color:"blue",type:"text"},{text:"======",color:"gray",type:"text"},{text:"]",color:"dark_blue",bold:1b,type:"text"}]
title @a[scores={char=31,passive_drow=141..160}] actionbar [{text:"[",color:"dark_blue",bold:1b,type:"text"},{text:"",color:"blue",type:"text"},{text:"=======",color:"gray",type:"text"},{text:"]",color:"dark_blue",bold:1b,type:"text"}]


#keelhaul this filthy landubber send that bastard to the depths below

scoreboard players set @a[scores={char=31,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=31,s1_timer=1,CC_silence=1..}] s1_timer 300

execute at @a[scores={s1_timer=1,CC_silence=0}] run playsound minecraft:entity.drowned.ambient_water master @a[distance=..15] ~ ~ ~ 1 2 1
execute at @a[scores={char=31,s1_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["keelhaul_hook","entities_drownedcaptain"]}
tp @e[tag=keelhaul_hook,limit=1] @a[scores={char=31,s1_timer=2},limit=1]

#execute unless entity @e[tag=keelhaul_hook] run kill @e[tag=keelhaul_visual]
#execute unless entity @e[tag=keelhaul_visual] if entity @e[tag=keelhaul_hook] run summon armor_stand ~ ~ ~ {Pose:{Head:[89f,37f,0f]},Marker:1b,Invisible:1b,Tags:["keelhaul_visual","entities_drownedcaptain"],ArmorItems:[{},{},{},{id:"stone_pickaxe",Count:1b}]}
#execute at @e[tag=keelhaul_hook] positioned ^1 ^ ^-0.5 run tp @e[tag=keelhaul_visual] ^1 ^ ^-0.5

execute at @e[tag=keelhaul_hook] run particle minecraft:block{block_state:{Name:"minecraft:water"}} ^ ^1.4 ^ 0.2 0.2 0.2 0.001 5 normal
execute at @e[tag=keelhaul_hook] run particle minecraft:crit ^ ^1.4 ^ 0.1 0.2 0.1 0.001 5 normal
execute at @e[tag=keelhaul_hook] run particle minecraft:crit ^ ^1.4 ^-1 0.1 0.2 0.1 0.001 5 normal
execute at @e[tag=keelhaul_hook] run particle minecraft:crit ^ ^1.4 ^-2 0.1 0.2 0.1 0.001 5 normal
execute as @e[tag=keelhaul_hook] at @s run tp @s ^ ^ ^0.7
execute at @a[scores={char=31,s1_timer=30..}] run kill @e[tag=keelhaul_hook]

execute at @e[tag=keelhaul_hook] as @a[distance=..1.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=31}] Team run scoreboard players set @s keelhauling 5
execute at @e[tag=keelhaul_hook] as @a[distance=..1.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=31}] Team run playsound minecraft:item.crossbow.loading_start master @a[distance=..15] ~ ~ ~ 1 0.8 1

execute if entity @a[scores={keelhauling=1..}] run kill @e[tag=keelhaul_hook]




execute as @a[scores={keelhauling=4..5}] at @s run tp @s ~ ~ ~ facing entity @a[scores={char=31},limit=1]
execute as @a[scores={keelhauling=4..5}] at @s if entity @a[distance=..5,scores={char=31}] run tp @s ^ ^ ^0.4
execute as @a[scores={keelhauling=4..5}] at @s if entity @a[distance=5..,scores={char=31}] run tp @s ^ ^ ^0.5
scoreboard players set @a[scores={keelhauling=4..5}] CC_intangible 5
scoreboard players set @a[scores={keelhauling=3..5}] CC_stun 2
effect give @a[scores={keelhauling=3..5}] minecraft:resistance 2 100 true
effect give @a[scores={keelhauling=3..5}] minecraft:slow_falling 1 100 true

execute as @a[scores={keelhauling=4..5}] at @s if entity @a[distance=..1,scores={char=31}] run scoreboard players set @a[scores={keelhauling=4..5}] keelhauling 3

execute at @a[scores={keelhauling=5}] run playsound minecraft:item.crossbow.loading_middle master @a[distance=..15] ~ ~ ~ 0.4 1.2 1
scoreboard players set @a[scores={keelhauling=1..2}] CC_intangible 0
scoreboard players set @a[scores={keelhauling=1..2}] CC_stun 0
scoreboard players set @a[scores={keelhauling=1..2}] CC_silence 0
effect clear @a[scores={keelhauling=1..2}] minecraft:resistance
effect clear @a[scores={keelhauling=1..2}] minecraft:weakness
effect clear @a[scores={keelhauling=1..2}] minecraft:slow_falling
tp @a[scores={keelhauling=1..2}] @p[scores={char=31},limit=1]

scoreboard players remove @a[scores={keelhauling=1..3}] keelhauling 1
execute at @a[scores={char=31,CC_silence=1..}] run scoreboard players set @a keelhauling 0

#lifeline
clear @a[scores={char=31,s2_timer=1,CC_silence=0}] *[custom_data={s2:1}]

scoreboard players set @a[scores={char=31,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=31,s2_timer=1,CC_silence=1..}] s2_timer 480

execute at @a[scores={universal_death=1..,char=31}] run scoreboard players set @a keelhauling 0
execute at @a[scores={universal_death=1..,char=31}] run kill @e[tag=lifeline_return]

execute as @e[tag=lifeline_point_visual] at @s run tp @e[tag=lifeline_point] ~-1 ~1 ~
execute as @e[tag=lifeline_point_visual] at @s if block ~-1 ~0.5 ~ #minecraft:dash run tp @s ~ ~-0.1 ~

execute at @e[tag=lifeline_point] run particle minecraft:bubble ~ ~ ~ 1 1 1 0.001 4
execute at @e[tag=lifeline_point] run particle minecraft:crit ~ ~ ~ 0.3 0.3 0.3 0.001 1
execute at @e[tag=lifeline_point] run particle minecraft:block{block_state:{Name:"minecraft:water"}} ~ ~ ~ 0.3 0.2 0.3 0.01 3
clear @a[scores={char=31,s2_timer=1,CC_silence=0}] minecraft:stone_pickaxe
item replace entity @a[scores={char=31,s2_timer=20,CC_silence=0}] hotbar.2 with minecraft:warped_fungus_on_a_stick[custom_data={s2:2},minecraft:item_model="minecraft:lightning_rod",minecraft:custom_name={text:"Emerge",color:"dark_aqua",bold:1b}] 1


item replace entity @a[scores={s2_timer_recast=1..,CC_silence=1..}] hotbar.2 with minecraft:warped_fungus_on_a_stick[custom_data={s2:2},minecraft:item_model="minecraft:lightning_rod",minecraft:custom_name={text:"Emerge",color:"dark_aqua",bold:1b}] 1

scoreboard players set @a[scores={s2_timer_recast=1..,char=31,CC_silence=0}] s2_timer 98
scoreboard players set @a[scores={s2_timer_recast=1..}] s2_timer_recast 0

execute at @a[scores={char=31,s2_timer=1,CC_silence=0}] run playsound minecraft:entity.drowned.swim master @a[distance=..15] ~ ~ ~ 0.6 0.2 1
execute at @a[scores={char=31,s2_timer=1,CC_silence=0}] run playsound minecraft:block.iron_trapdoor.close master @a[distance=..15] ~ ~ ~ 1 0.1 1
execute at @a[scores={char=31,s2_timer=2..100,CC_silence=0}] run particle minecraft:dripping_water ~ ~ ~ 0.5 1 0.5 0.001 5
execute at @a[scores={char=31,s2_timer=100..110,CC_silence=0}] run particle minecraft:bubble ~ ~ ~ 0.5 1 0.5 0.001 40

execute at @a[scores={char=31,s2_timer=2,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["lifeline_point","entities_drownedcaptain"]}
execute at @a[scores={char=31,s2_timer=2,CC_silence=0}] run summon armor_stand ~1 ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["lifeline_point_visual","entities_drownedcaptain"],Pose:{RightArm:[0.0f,-90.0f,90.0f]},equipment:{mainhand:{id:"minecraft:stone_pickaxe",count:1}}}
effect give @e[scores={char=31,s2_timer=1,CC_silence=0}] minecraft:speed 2 2 true
effect clear @e[scores={char=31,s2_timer=20}] minecraft:speed
effect give @e[scores={char=31,s2_timer=20,CC_silence=0}] minecraft:speed 4 0 true
effect clear @e[scores={char=31,s2_timer=100}] minecraft:speed
clear @a[scores={char=31,s2_timer=99}] minecraft:diamond_pickaxe
clear @a[scores={char=31,s2_timer=100..}] minecraft:lightning_rod

execute at @a[scores={char=31,s2_timer=101}] run playsound minecraft:entity.drowned.death master @a[distance=..15] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=31,s2_timer=100..}] unless entity @e[tag=lifeline_return] run summon marker ~ ~ ~ {Tags:["lifeline_return","entities_drownedcaptain"]}
execute unless entity @e[tag=lifeline_point] run kill @e[tag=lifeline_return]
execute as @e[tag=lifeline_return] at @s run tp @s ~ ~ ~ facing entity @e[tag=lifeline_point,limit=1]
execute as @e[tag=lifeline_return] at @s run tp @s ^ ^ ^0.9
execute as @a[scores={char=31}] run tp @e[tag=lifeline_return,limit=1]
#execute at @e[tag=lifeline_return,limit=1] run tp @a[scores={char=31}] ~ ~ ~


execute if entity @e[tag=lifeline_return] run scoreboard players set @a[scores={char=31}] CC_intangible 5
execute if entity @e[tag=lifeline_return] run effect give @a[scores={char=31}] minecraft:resistance 2 100 true
execute if entity @e[tag=lifeline_return] run effect give @a[scores={char=31}] minecraft:slow_falling 1 1 true
execute as @e[tag=lifeline_return] at @s if entity @e[distance=..1,tag=lifeline_point] run effect clear @a[scores={char=31}] minecraft:slow_falling
execute as @e[tag=lifeline_return] at @s if entity @e[distance=..1,tag=lifeline_point] run tp @a[scores={char=31}] ~ ~1 ~
execute as @e[tag=lifeline_return] at @s if entity @e[distance=..1,tag=lifeline_point] run particle minecraft:bubble ~ ~ ~ 8 3 8 0.001 500
execute as @e[tag=lifeline_return] at @s if entity @e[distance=..1,tag=lifeline_point] run particle minecraft:block{block_state:{Name:"minecraft:water"}} ~ ~1 ~ 8 2 8 1 500
execute as @e[tag=lifeline_return] at @s if entity @e[distance=..1,tag=lifeline_point] run particle minecraft:block{block_state:{Name:"minecraft:tuff"}} ~ ~1 ~ 8 2 8 1 500
execute as @e[tag=lifeline_return] at @s if entity @e[distance=..1,tag=lifeline_point] run playsound minecraft:entity.drowned.ambient master @a[distance=..15] ~ ~ ~ 1 1.2 1
execute as @e[tag=lifeline_return] at @s if entity @e[distance=..1,tag=lifeline_point] run playsound minecraft:entity.drowned.swim master @a[distance=..15] ~ ~ ~ 1 0.5 1

execute as @e[tag=lifeline_return] at @s if entity @e[distance=..1,tag=lifeline_point] as @a[distance=..4,tag=valid_spell_target] unless score @s Team = @p[scores={char=31}] Team at @s run scoreboard players set @s CC_stun 20


execute at @e[tag=lifeline_return] run kill @e[distance=..1,tag=lifeline_point]
execute as @e[tag=lifeline_return] unless entity @e[tag=lifeline_point] run kill @s
execute as @e[tag=lifeline_point_visual] unless entity @e[tag=lifeline_point] run kill @s


# drowned

scoreboard players set @a[scores={s1_timer=1,char=31}] spellCD1 320
scoreboard players add @a[scores={s1_timer=1..,char=31}] s1_timer 1
scoreboard players set @a[scores={s1_timer=321..,char=31}] s1_timer 0

scoreboard players set @a[scores={s2_timer=101,char=31}] spellCD2 400
scoreboard players add @a[scores={s2_timer=1..,char=31}] s2_timer 1
scoreboard players set @a[scores={s2_timer=501..,char=31}] s2_timer 0
scoreboard players add @a[scores={s2_timer_recast=1..,char=31}] s2_timer_recast 1
scoreboard players set @a[scores={s2_timer_recast=10..,char=31}] s2_timer 0

execute as @a[scores={char=31,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:stone_pickaxe",Slot:0b}]}] run clear @a[scores={char=31}] minecraft:stone_pickaxe
item replace entity @a[scores={char=31,s2_timer=0}] hotbar.0 with minecraft:stone_pickaxe[custom_data={drowned:1},minecraft:custom_name={bold:1b,color:"gray",text:"Anchor"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.65d,operation:"add_multiplied_base",slot:"mainhand"}]] 1
execute as @a[scores={char=31,s2_timer=101..}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:stone_pickaxe",Slot:0b}]}] run clear @a[scores={char=31}] minecraft:stone_pickaxe
item replace entity @a[scores={char=31,s2_timer=101..}] hotbar.0 with minecraft:stone_pickaxe[custom_data={drowned:1},minecraft:custom_name={bold:1b,color:"gray",text:"Anchor"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.65d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=31,s2_timer=1..100}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:diamond_pickaxe",Slot:0b}]}] run clear @a[scores={char=31}] minecraft:diamond_pickaxe
item replace entity @a[scores={char=31,s2_timer=1..100}] hotbar.0 with minecraft:diamond_pickaxe[custom_data={drowned:1},minecraft:custom_name={bold:1b,color:"gray",text:"Tentacles"},minecraft:unbreakable={},minecraft:enchantments={"minecraft:power":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:4.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.65d,operation:"add_multiplied_base",slot:"mainhand"}]] 1


execute as @a[scores={char=31,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=31}] minecraft:carrot_on_a_stick
item replace entity @a[scores={char=31,s1_timer=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:tripwire_hook",minecraft:custom_name={text:"Keelhaul",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=31,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=31}] minecraft:warped_fungus_on_a_stick
item replace entity @a[scores={char=31,s2_timer=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:lead",minecraft:custom_name={text:"Lifeline",color:"dark_aqua",bold:1b}] 1


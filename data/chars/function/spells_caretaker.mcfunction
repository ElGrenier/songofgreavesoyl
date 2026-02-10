


#nectar


execute at @a[advancements={chars:caretaker_caretaking_your_ass=true}] run scoreboard players add @a[scores={char=72}] nectar 1
advancement revoke @a[advancements={chars:caretaker_caretaking_your_ass=true}] only chars:caretaker_caretaking_your_ass


scoreboard players set @a[scores={char=72,nectar=..-1}] nectar 0
scoreboard players set @a[scores={char=72,nectar=6..}] nectar 5

title @a[scores={char=72,nectar=0}] actionbar ["",{"text":"(","color":"gold","bold":true},{"text":" ----- ","color":"gray","bold":true},{"text":")","color":"gold","bold":true}]
title @a[scores={char=72,nectar=1}] actionbar ["",{"text":"(","color":"gold","bold":true},{"text":" =","color":"yellow","bold":true},{"text":"---- ","color":"gray","bold":true},{"text":")","color":"gold","bold":true}]
title @a[scores={char=72,nectar=2}] actionbar ["",{"text":"(","color":"gold","bold":true},{"text":" ==","color":"yellow","bold":true},{"text":"--- ","color":"gray","bold":true},{"text":")","color":"gold","bold":true}]
title @a[scores={char=72,nectar=3}] actionbar ["",{"text":"(","color":"gold","bold":true},{"text":" ===","color":"yellow","bold":true},{"text":"-- ","color":"gray","bold":true},{"text":")","color":"gold","bold":true}]
title @a[scores={char=72,nectar=4}] actionbar ["",{"text":"(","color":"gold","bold":true},{"text":" ====","color":"yellow","bold":true},{"text":"- ","color":"gray","bold":true},{"text":")","color":"gold","bold":true}]
title @a[scores={char=72,nectar=5}] actionbar ["",{"text":"(","color":"gold","bold":true},{"text":" =====","color":"yellow","bold":true},{"text":" ","color":"gray","bold":true},{"text":")","color":"gold","bold":true}]

scoreboard players set @a[scores={char=72,nectar=1..4}] passive_caretaker 0
scoreboard players set @a[scores={char=72,nectar=5,passive_caretaker=0}] passive_caretaker 1
scoreboard players add @a[scores={char=72,passive_caretaker=1..5}] passive_caretaker 1

execute at @a[scores={char=72,passive_caretaker=3}] run playsound entity.allay.ambient_with_item master @a[distance=..8] ~ ~ ~ 1 0.8 1
effect give @a[scores={char=72,passive_caretaker=3}] instant_health
effect give @a[scores={char=72,passive_caretaker=3}] speed 2 2


execute at @a[scores={char=72,passive_caretaker=3}] unless entity @e[tag=nectar_burst_1] run summon block_display ~0.5 ~1 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:cherry_leaves"},Tags:["nectar_burst_1","nectar_burst_visuals","entities_caretaker"]}
execute at @a[scores={char=72,passive_caretaker=3}] unless entity @e[tag=nectar_burst_2] run summon block_display ~-0.5 ~1 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:cherry_leaves"},Tags:["nectar_burst_2","nectar_burst_visuals","entities_caretaker"]}
execute at @a[scores={char=72,passive_caretaker=3}] unless entity @e[tag=nectar_burst_3] run summon block_display ~ ~1 ~0.5 {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:cherry_leaves"},Tags:["nectar_burst_3","nectar_burst_visuals","entities_caretaker"]}
execute at @a[scores={char=72,passive_caretaker=3}] unless entity @e[tag=nectar_burst_4] run summon block_display ~ ~1 ~-0.5 {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:cherry_leaves"},Tags:["nectar_burst_4","nectar_burst_visuals","entities_caretaker"]}
execute at @a[scores={char=72,passive_caretaker=3}] unless entity @e[tag=nectar_burst_5] run summon block_display ~0.4 ~1 ~0.4 {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:cherry_leaves"},Tags:["nectar_burst_5","nectar_burst_visuals","entities_caretaker"]}
execute at @a[scores={char=72,passive_caretaker=3}] unless entity @e[tag=nectar_burst_6] run summon block_display ~-0.4 ~1 ~0.4 {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:cherry_leaves"},Tags:["nectar_burst_6","nectar_burst_visuals","entities_caretaker"]}
execute at @a[scores={char=72,passive_caretaker=3}] unless entity @e[tag=nectar_burst_7] run summon block_display ~0.4 ~1 ~-0.4 {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:cherry_leaves"},Tags:["nectar_burst_7","nectar_burst_visuals","entities_caretaker"]}
execute at @a[scores={char=72,passive_caretaker=3}] unless entity @e[tag=nectar_burst_8] run summon block_display ~-0.4 ~1 ~-0.4 {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:cherry_leaves"},Tags:["nectar_burst_8","nectar_burst_visuals","entities_caretaker"]}



execute as @e[tag=nectar_burst_visuals] at @s run tp @s ~ ~ ~ facing entity @n[scores={char=72}]
execute as @e[tag=nectar_burst_visuals] at @s run tp @s ~ ~ ~ ~ 0
execute as @e[tag=nectar_burst_visuals] at @s run tp @s ^0.6 ^ ^-0.5

execute at @e[tag=nectar_burst_visuals] run particle block{block_state:{Name:"minecraft:cherry_leaves"}} ~ ~ ~ 0.3 0.1 0.3 0.1 8
scoreboard players add @e[tag=nectar_burst_visuals] nectar 1
kill @e[tag=nectar_burst_visuals,scores={nectar=8..}]

#transfer

execute at @a[scores={char=72}] as @a[distance=1..8] if score @s Team = @p[scores={char=72}] Team run tag @s add caretaker_valid_heal_target
execute at @a[scores={char=72}] as @a[distance=8.1..] if score @s Team = @p[scores={char=72}] Team run tag @s remove caretaker_valid_heal_target
execute at @a[scores={char=72}] as @a unless score @s Team = @p[scores={char=72}] Team run tag @s remove caretaker_valid_heal_target

execute at @a[scores={char=72,s1_timer=1,CC_silence=0}] unless entity @a[distance=1..8,tag=caretaker_valid_heal_target] run scoreboard players set @a[scores={char=72}] spellCD1 20
execute at @a[scores={char=72,s1_timer=1,CC_silence=0}] unless entity @a[distance=1..8,tag=caretaker_valid_heal_target] run scoreboard players set @a[scores={char=72}] s1_timer 140


execute at @a[scores={char=72,s1_timer=1,CC_silence=0}] as @p[distance=1..8,tag=caretaker_valid_heal_target] run tag @s add caretaker_heal


scoreboard players set @p[tag=caretaker_heal] regen 0
execute at @a[scores={char=72,nectar=0}] run scoreboard players set @p[tag=caretaker_heal] caretaker_regen_timer 41
execute at @a[scores={char=72,nectar=1}] run scoreboard players set @p[tag=caretaker_heal] caretaker_regen_timer 61
execute at @a[scores={char=72,nectar=2}] run scoreboard players set @p[tag=caretaker_heal] caretaker_regen_timer 81
execute at @a[scores={char=72,nectar=3}] run scoreboard players set @p[tag=caretaker_heal] caretaker_regen_timer 101
execute at @a[scores={char=72,nectar=4}] run scoreboard players set @p[tag=caretaker_heal] caretaker_regen_timer 121
execute at @a[scores={char=72,nectar=5}] run scoreboard players set @p[tag=caretaker_heal] caretaker_regen_timer 141
#effect give @p[tag=caretaker_heal] speed 2
execute at @p[tag=caretaker_heal] run particle block{block_state:{Name:honey_block}} ~ ~1 ~ 0.5 0.8 0.5 0 20 normal
execute at @p[tag=caretaker_heal] run playsound block.honey_block.hit master @a[distance=..8] ~ ~ ~ 1 0.2 1
execute at @p[tag=caretaker_heal] run playsound entity.breeze.idle_air master @a[distance=..8] ~ ~ ~ 0.2 0.5 1
execute at @p[tag=caretaker_heal] run scoreboard players set @a[scores={char=72}] nectar 0

tag @a remove caretaker_heal

execute at @a[scores={caretaker_regen_timer=1..}] run particle entity_effect{color:[1.0,0.33,1.0,1.0]} ~ ~1 ~ 0.8 1.6 0.8 0.5 1
scoreboard players remove @a[scores={caretaker_regen_timer=1..}] caretaker_regen_timer 1
scoreboard players set @a[scores={caretaker_regen_timer=10}] caretaker_regen 1
scoreboard players set @a[scores={caretaker_regen_timer=20}] caretaker_regen 1
scoreboard players set @a[scores={caretaker_regen_timer=30}] caretaker_regen 1
scoreboard players set @a[scores={caretaker_regen_timer=40}] caretaker_regen 1
scoreboard players set @a[scores={caretaker_regen_timer=50}] caretaker_regen 1
scoreboard players set @a[scores={caretaker_regen_timer=60}] caretaker_regen 1
scoreboard players set @a[scores={caretaker_regen_timer=70}] caretaker_regen 1
scoreboard players set @a[scores={caretaker_regen_timer=80}] caretaker_regen 1
scoreboard players set @a[scores={caretaker_regen_timer=90}] caretaker_regen 1
scoreboard players set @a[scores={caretaker_regen_timer=100}] caretaker_regen 1
scoreboard players set @a[scores={caretaker_regen_timer=110}] caretaker_regen 1
scoreboard players set @a[scores={caretaker_regen_timer=120}] caretaker_regen 1
scoreboard players set @a[scores={caretaker_regen_timer=130}] caretaker_regen 1
scoreboard players set @a[scores={caretaker_regen_timer=140}] caretaker_regen 1


scoreboard players add @a[scores={caretaker_regen=1..}] caretaker_regen 1
effect give @a[scores={caretaker_regen=2}] regeneration 1 3
effect clear @a[scores={caretaker_regen=5..}] regeneration
scoreboard players set @a[scores={caretaker_regen=5..}] caretaker_regen 0
scoreboard players set @a[scores={caretaker_regen_timer=0}] caretaker_regen 0

#pollen burst


execute at @a[scores={char=72,death_dash_reset=1..}] run kill @e[tag=pollen_dash]
execute at @a[scores={char=72,universal_death=1..}] run kill @e[tag=pollen_dash]
execute at @a[scores={char=72,CC_grounded=1..}] run kill @e[tag=pollen_dash]
execute at @a[scores={char=72,CC_root=1..}] run kill @e[tag=pollen_dash]
execute at @a[scores={char=72,CC_stun=1..}] run kill @e[tag=pollen_dash]
execute at @a[scores={char=72,CC_silence=1..}] run kill @e[tag=pollen_dash]

effect give @a[scores={char=72,s2_timer=2,CC_silence=0}] slow_falling 1 1 true
#execute at @a[scores={char=72,s2_timer=2}] run particle dripping_water ~ ~0.1 ~ 0.4 0.15 0.4 1 50

execute at @a[scores={char=72,s2_timer=1..2}] run kill @e[tag=pollen_dash]
execute at @a[scores={char=72,s2_timer=1,CC_silence=0}] run playsound entity.player.attack.sweep master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=72,s2_timer=1,CC_silence=0}] run playsound entity.breeze.jump master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=72,s2_timer=2,CC_silence=0}] run playsound entity.zombie.infect master @a[distance=..10] ~ ~ ~ 0.8 2 1

execute at @a[scores={char=72,s2_timer=2}] run summon marker ~ ~ ~ {Tags:["pollen_cloud","pollen_1","entities_caretaker"]}
execute at @a[scores={char=72,s2_timer=2,nectar=0}] run scoreboard players set @n[tag=pollen_1] s0_timer 20
execute at @a[scores={char=72,s2_timer=2,nectar=1}] run scoreboard players set @n[tag=pollen_1] s0_timer 40
execute at @a[scores={char=72,s2_timer=2,nectar=2}] run scoreboard players set @n[tag=pollen_1] s0_timer 60
execute at @a[scores={char=72,s2_timer=2,nectar=3}] run scoreboard players set @n[tag=pollen_1] s0_timer 80
execute at @a[scores={char=72,s2_timer=2,nectar=4}] run scoreboard players set @n[tag=pollen_1] s0_timer 100
execute at @a[scores={char=72,s2_timer=2,nectar=5}] run scoreboard players set @n[tag=pollen_1] s0_timer 120

execute at @a[scores={char=72,s2_timer=2}] run summon marker ~ ~ ~ {Tags:["pollen_dash","entities_caretaker"]}
scoreboard players set @a[scores={char=72,s2_timer=2}] CC_intangible 20
effect give @a[scores={char=72,s2_timer=2}] resistance 1 100 true
tp @e[tag=pollen_dash,limit=1] @a[scores={char=72,s2_timer=2},limit=1]
execute at @a[scores={char=72,s2_timer=2},limit=1] run tp @e[tag=pollen_dash,limit=1] ~ ~0.5 ~

execute as @e[tag=pollen_dash] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=pollen_dash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=pollen_dash] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=pollen_dash] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=pollen_dash] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=pollen_dash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute as @e[tag=pollen_dash] at @s run tp @s ^ ^ ^0.8

execute at @a[scores={char=72,s2_timer=10,CC_silence=0}] run playsound entity.zombie.infect master @a[distance=..10] ~ ~ ~ 0.4 2 1
execute at @a[scores={char=72,s2_timer=10,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["pollen_cloud","pollen_2","entities_caretaker"]}
execute at @a[scores={char=72,s2_timer=10,nectar=0}] run scoreboard players set @n[tag=pollen_2] s0_timer 20
execute at @a[scores={char=72,s2_timer=10,nectar=1}] run scoreboard players set @n[tag=pollen_2] s0_timer 40
execute at @a[scores={char=72,s2_timer=10,nectar=2}] run scoreboard players set @n[tag=pollen_2] s0_timer 60
execute at @a[scores={char=72,s2_timer=10,nectar=3}] run scoreboard players set @n[tag=pollen_2] s0_timer 80
execute at @a[scores={char=72,s2_timer=10,nectar=4}] run scoreboard players set @n[tag=pollen_2] s0_timer 100
execute at @a[scores={char=72,s2_timer=10,nectar=5}] run scoreboard players set @n[tag=pollen_2] s0_timer 120


tp @a[scores={char=72,s2_timer=2..10,death_dash_reset=0}] @e[tag=pollen_dash,limit=1]
execute at @a[scores={char=72,s2_timer=10..11}] run kill @e[tag=pollen_dash]
execute as @a[scores={char=72,s2_timer=10}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~
effect clear @a[scores={char=72,s2_timer=10..11,CC_silence=0}] slow_falling
scoreboard players set @a[scores={char=72,s2_timer=11}] CC_intangible 0

scoreboard players set @a[scores={char=72,s2_timer=11}] nectar 0

scoreboard players remove @e[tag=pollen_cloud] s0_timer 1
kill @e[tag=pollen_cloud,scores={s0_timer=..0}]

execute at @e[tag=pollen_cloud] run particle cherry_leaves ~ ~1 ~ 1.1 0.8 1.1 0.5 10
execute at @e[tag=pollen_cloud] as @e[tag=valid_spell_target,distance=..2] unless score @s Team = @p[scores={char=72}] Team unless entity @s[nbt={active_effects:[{id:"minecraft:poison"}]}] run effect give @s poison 2 3
execute at @e[tag=pollen_cloud] as @e[tag=valid_spell_target,distance=..2] unless score @s Team = @p[scores={char=72}] Team run scoreboard players set @s CC_disarm 10


execute as @e[tag=pollen_cloud] at @s if block ~ ~-0.2 ~ #minecraft:dash run tp @s ~ ~-0.2 ~
execute as @e[tag=pollen_cloud] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~
execute as @e[tag=pollen_cloud] at @s run tp @s ~ ~ ~ ~8 ~


execute as @e[tag=pollen_cloud] at @s run particle dust{color:[1.0,0.33,1.0],scale:1} ^ ^ ^2 0.1 0.1 0.1 0 5
execute as @e[tag=pollen_cloud] at @s run particle dust{color:[1.0,0.33,1.0],scale:1} ^ ^ ^-2 0.1 0.1 0.1 0 5
execute as @e[tag=pollen_cloud] at @s run particle dust{color:[1.0,0.33,1.0],scale:1} ^2 ^ ^ 0.1 0.1 0.1 0 5
execute as @e[tag=pollen_cloud] at @s run particle dust{color:[1.0,0.33,1.0],scale:1} ^-2 ^ ^ 0.1 0.1 0.1 0 5
execute as @e[tag=pollen_cloud] at @s run particle dust{color:[1.0,0.33,1.0],scale:1} ^1.5 ^ ^1.5 0.1 0.1 0.1 0 5
execute as @e[tag=pollen_cloud] at @s run particle dust{color:[1.0,0.33,1.0],scale:1} ^-1.5 ^ ^-1.5 0.1 0.1 0.1 0 5
execute as @e[tag=pollen_cloud] at @s run particle dust{color:[1.0,0.33,1.0],scale:1} ^1.5 ^ ^-1.5 0.1 0.1 0.1 0 5
execute as @e[tag=pollen_cloud] at @s run particle dust{color:[1.0,0.33,1.0],scale:1} ^-1.5 ^ ^1.5 0.1 0.1 0.1 0 5

# caretaker

scoreboard players set @a[scores={s1_timer=1,char=72}] spellCD1 160
scoreboard players add @a[scores={s1_timer=1..,char=72}] s1_timer 1
scoreboard players set @a[scores={s1_timer=160..,char=72}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=72}] spellCD2 240
scoreboard players add @a[scores={s2_timer=1..,char=72}] s2_timer 1
scoreboard players set @a[scores={s2_timer=240..,char=72}] s2_timer 0

execute as @a[scores={char=72}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:0b,components:{"minecraft:custom_data":{proboscis:1,s0:1}}}]}] run clear @a[scores={char=72}] warped_fungus_on_a_stick[custom_data={proboscis:1,s0:1}]
item replace entity @a[scores={char=72}] hotbar.0 with warped_fungus_on_a_stick[minecraft:custom_name={bold:1b,color:"gray",text:"Staff"},minecraft:item_model="minecraft:wooden_shovel",minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:1.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.65d,operation:"add_multiplied_base",slot:"mainhand"}],custom_data={proboscis:1},minimum_attack_charge=0.8] 1

execute as @a[scores={char=72,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=72}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=72,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:honey_block",minecraft:custom_name={text:"Gift of Life",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=72,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=72}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=72,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:pink_petals",minecraft:custom_name={text:"Pollen Burst",color:"dark_aqua",bold:1b}] 1

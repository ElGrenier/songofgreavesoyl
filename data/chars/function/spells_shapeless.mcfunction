kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:stone_hoe"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_hoe"}}]

# devour memory


execute at @a[scores={universal_hit=1..,char=37,passive_shap=0}] as @a[advancements={chars:shapeless_hit=true},tag=valid_spell_target] unless score @s Team = @p[scores={char=37}] Team run scoreboard players set @s CC_silence 20
execute at @a[scores={universal_hit=1..,char=37,passive_shap=0}] as @a[advancements={chars:shapeless_hit=true},tag=valid_spell_target] unless score @s Team = @p[scores={char=37}] Team run effect give @p[scores={char=37}] absorption 2 0
execute at @a[scores={universal_hit=1..,char=37,passive_shap=0}] as @a[advancements={chars:shapeless_hit=true},tag=valid_spell_target] unless score @s Team = @p[scores={char=37}] Team run scoreboard players set @a[scores={char=37}] passive_shap 1

scoreboard players add @a[scores={passive_shap=1..}] passive_shap 1
scoreboard players set @a[scores={passive_shap=200..}] passive_shap 0


title @a[scores={char=37,passive_shap=1..20}] actionbar [{text:"[",bold:1b,color:"black",type:"text"},{text:"=",color:"gray",obfuscated:1b,type:"text"},{text:"=========",color:"dark_gray",obfuscated:1b,type:"text"},{text:"]",bold:1b,color:"black",type:"text"}]
title @a[scores={char=37,passive_shap=21..40}] actionbar [{text:"[",bold:1b,color:"black",type:"text"},{text:"==",color:"gray",obfuscated:1b,type:"text"},{text:"========",color:"dark_gray",obfuscated:1b,type:"text"},{text:"]",bold:1b,color:"black",type:"text"}]
title @a[scores={char=37,passive_shap=41..60}] actionbar [{text:"[",bold:1b,color:"black",type:"text"},{text:"===",color:"gray",obfuscated:1b,type:"text"},{text:"=======",color:"dark_gray",obfuscated:1b,type:"text"},{text:"]",bold:1b,color:"black",type:"text"}]
title @a[scores={char=37,passive_shap=61..80}] actionbar [{text:"[",bold:1b,color:"black",type:"text"},{text:"====",color:"gray",obfuscated:1b,type:"text"},{text:"======",color:"dark_gray",obfuscated:1b,type:"text"},{text:"]",bold:1b,color:"black",type:"text"}]
title @a[scores={char=37,passive_shap=81..100}] actionbar [{text:"[",bold:1b,color:"black",type:"text"},{text:"=====",color:"gray",obfuscated:1b,type:"text"},{text:"=====",color:"dark_gray",obfuscated:1b,type:"text"},{text:"]",bold:1b,color:"black",type:"text"}]
title @a[scores={char=37,passive_shap=101..120}] actionbar [{text:"[",bold:1b,color:"black",type:"text"},{text:"======",color:"gray",obfuscated:1b,type:"text"},{text:"====",color:"dark_gray",obfuscated:1b,type:"text"},{text:"]",bold:1b,color:"black",type:"text"}]
title @a[scores={char=37,passive_shap=121..140}] actionbar [{text:"[",bold:1b,color:"black",type:"text"},{text:"=======",color:"gray",obfuscated:1b,type:"text"},{text:"===",color:"dark_gray",obfuscated:1b,type:"text"},{text:"]",bold:1b,color:"black",type:"text"}]
title @a[scores={char=37,passive_shap=141..160}] actionbar [{text:"[",bold:1b,color:"black",type:"text"},{text:"========",color:"gray",obfuscated:1b,type:"text"},{text:"==",color:"dark_gray",obfuscated:1b,type:"text"},{text:"]",bold:1b,color:"black",type:"text"}]
title @a[scores={char=37,passive_shap=161..180}] actionbar [{text:"[",bold:1b,color:"black",type:"text"},{text:"=========",color:"gray",obfuscated:1b,type:"text"},{text:"=",color:"dark_gray",obfuscated:1b,type:"text"},{text:"]",bold:1b,color:"black",type:"text"}]
title @a[scores={char=37,passive_shap=181..200}] actionbar [{text:"[",bold:1b,color:"black",type:"text"},{text:"==========",color:"gray",obfuscated:1b,type:"text"},{text:"",color:"dark_gray",obfuscated:1b,type:"text"},{text:"]",bold:1b,color:"black",type:"text"}]

title @a[scores={passive_shap=0,char=37}] actionbar [{text:"[",color:"black",bold:1b,type:"text"},{text:"Devour Memory is ready",color:"gray",bold:0b,type:"text"},{text:"]",color:"black",bold:1b,type:"text"}]


#into the void

scoreboard players set @a[scores={char=37,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=37,s1_timer=1,CC_silence=1..}] s1_timer 260

execute at @a[scores={char=37,s1_timer=1..2,CC_silence=0}] run playsound minecraft:entity.wither_skeleton.ambient master @a[distance=..1] ~ ~ ~ 0.5 0.1 1
execute at @a[scores={char=37,s1_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["void_blade","entities_shapeless"]}
tp @e[tag=void_blade,limit=1] @a[scores={char=37,s1_timer=1},limit=1]

execute if entity @a[scores={char=37,CC_silence=1..}] run kill @e[tag=void_gate]



execute as @e[tag=void_gate] at @s if block ~ ~-0.5 ~ #minecraft:dash run tp @s ~ ~-1 ~
execute as @e[tag=void_gate] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~
execute at @e[tag=void_gate] run playsound entity.wither_skeleton.ambient master @a[distance=..10] ~ ~ ~ 0.03 0.1 1

execute at @e[tag=void_blade] run particle block{block_state:{Name:"minecraft:black_concrete_powder"}} ~ ~ ~ 0.1 1.5 0.1 0.0001 50 normal
execute at @e[tag=void_blade] run particle smoke ~ ~ ~ 0.2 1 0.2 0.0001 20 normal
execute at @e[tag=void_blade] run particle falling_dust{block_state:{Name:"minecraft:crying_obsidian"}} ~ ~ ~ 0.2 1 0.2 0.0001 20 normal


execute store result entity @e[tag=void_blade,limit=1] Rotation[1] float 1 run clear
execute as @e[tag=void_blade] at @s unless block ^ ^0.5 ^0.5 #minecraft:dash run kill @e[tag=voidgate_visuals]
execute as @e[tag=void_blade] at @s unless block ^ ^0.5 ^0.5 #minecraft:dash run kill @e[tag=void_gate]
execute as @e[tag=void_blade] at @s unless block ^ ^0.5 ^0.5 #minecraft:dash align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["void_gate","void_gate_visual_core","entities_shapeless"]}
execute as @e[tag=void_blade] at @s unless block ^ ^0.5 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=void_blade] at @s run tp @s ^ ^ ^0.5
execute as @e[tag=void_blade] at @s if block ~ ~-0.2 ~ #minecraft:dash run tp @s ~ ~-0.2 ~
execute as @e[tag=void_blade] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~
execute as @e[tag=void_blade] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~

execute at @e[tag=void_blade] as @e[tag=valid_spell_target,distance=..2] unless score @s Team = @p[scores={char=37}] Team run summon marker ~ ~ ~ {Tags:["void_banish","entities_shapeless"]}
execute if entity @e[tag=void_banish] run kill @e[tag=void_blade]
execute at @a[scores={char=37,s1_timer=30..}] run kill @e[tag=void_blade]

execute at @e[tag=void_banish] as @p[distance=..3,tag=valid_spell_target] unless score @s Team = @p[scores={char=37}] Team run scoreboard players set @s CC_banish 40
execute at @e[tag=void_banish] as @p[distance=..3,tag=valid_spell_target] unless score @s Team = @p[scores={char=37}] Team run scoreboard players set @s CC_silence 5
execute at @e[tag=void_banish] as @p[distance=..3,tag=valid_spell_target] unless score @s Team = @p[scores={char=37}] Team run scoreboard players set @s void 1
execute at @e[tag=void_banish] run particle smoke ~ ~1 ~ 2 2 2 0.001 400 force
execute at @e[tag=void_banish] run playsound entity.elder_guardian.curse master @a[distance=..20] ~ ~ ~ 1 0.8 1
kill @e[tag=void_banish]

scoreboard players add @a[scores={void=1..}] void 1
scoreboard players set @a[scores={void=50..}] void 0

execute at @e[tag=void_marker] run particle smoke ~ ~1 ~ 0.4 1 0.4 0.1 15
execute at @e[tag=void_marker] run particle falling_dust{block_state:{Name:"minecraft:black_concrete_powder"}} ~ ~1 ~ 0.4 1 0.4 0.1 8

execute at @a[scores={void=1..,universal_death=1..}] run kill @e[tag=void_marker]
scoreboard players set @a[scores={void=1..,universal_death=1..}] void 0

execute at @a[scores={void=2}] run summon marker ~ ~ ~ {Tags:["void_marker","entities_shapeless"]}
tp @a[scores={void=3}] 128 10 -215
effect give @a[scores={void=1..20}] slowness 2 1 true
effect give @a[scores={void=1..30}] blindness 2 0 true
execute as @a[scores={void=40}] at @e[tag=void_marker,limit=1] run tp @s ~ ~ ~
execute at @a[scores={void=40..41}] run particle smoke ~ ~1 ~ 1 1 1 0.01 80
execute at @a[scores={void=41}] run kill @e[tag=void_marker]

execute at @e[tag=voidgate_visuals] run particle smoke ~ ~0.5 ~ 0.5 0.5 0.5 0.0001 2 normal
execute at @e[tag=voidgate_visuals] run particle falling_dust{block_state:{Name:"minecraft:crying_obsidian"}} ~ ~0.5 ~ 0.5 0.5 0.5 0.001 2 normal

execute at @e[tag=void_gate_visual_core] run tp @e[tag=voidgate_visual_N_1] ~ ~0.5 ~-0.49
execute at @e[tag=void_gate_visual_core] run tp @e[tag=voidgate_visual_N_2] ~ ~1.5 ~-0.49
execute at @e[tag=void_gate_visual_core] run tp @e[tag=voidgate_visual_S_1] ~ ~0.5 ~0.49
execute at @e[tag=void_gate_visual_core] run tp @e[tag=voidgate_visual_S_2] ~ ~1.5 ~0.49
execute at @e[tag=void_gate_visual_core] run tp @e[tag=voidgate_visual_E_1] ~0.49 ~0.5 ~
execute at @e[tag=void_gate_visual_core] run tp @e[tag=voidgate_visual_E_2] ~0.49 ~1.5 ~
execute at @e[tag=void_gate_visual_core] run tp @e[tag=voidgate_visual_W_1] ~-0.49 ~0.5 ~
execute at @e[tag=void_gate_visual_core] run tp @e[tag=voidgate_visual_W_2] ~-0.49 ~1.5 ~

execute at @e[tag=void_gate_visual_core] run tp @e[tag=voidgate_visual_SE_1] ~0.49 ~0.5 ~0.49 
execute at @e[tag=void_gate_visual_core] run tp @e[tag=voidgate_visual_SE_2] ~0.49 ~1.5 ~0.49 
execute at @e[tag=void_gate_visual_core] run tp @e[tag=voidgate_visual_NW_1] ~-0.49 ~0.5 ~-0.49 
execute at @e[tag=void_gate_visual_core] run tp @e[tag=voidgate_visual_NW_2] ~-0.49 ~1.5 ~-0.49 
execute at @e[tag=void_gate_visual_core] run tp @e[tag=voidgate_visual_NE_1] ~0.49 ~0.5 ~-0.49 
execute at @e[tag=void_gate_visual_core] run tp @e[tag=voidgate_visual_NE_2] ~0.49 ~1.5 ~-0.49 
execute at @e[tag=void_gate_visual_core] run tp @e[tag=voidgate_visual_SW_1] ~-0.49 ~0.5 ~0.49 
execute at @e[tag=void_gate_visual_core] run tp @e[tag=voidgate_visual_SW_2] ~-0.49 ~1.5 ~0.49 

execute at @e[tag=void_gate_visual_core] unless block ~1 ~ ~1 #dash unless entity @e[tag=voidgate_visual_SE_1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_visual_SE_1","voidgate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.5f,-0.1f],scale:[0.2f,1f,0.2f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute at @e[tag=void_gate_visual_core] unless block ~1 ~1 ~1 #dash unless entity @e[tag=voidgate_visual_SE_2] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_visual_SE_2","voidgate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.5f,-0.1f],scale:[0.2f,1f,0.2f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute at @e[tag=void_gate_visual_core] unless block ~-1 ~ ~-1 #dash unless entity @e[tag=voidgate_visual_NW_1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_visual_NW_1","voidgate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.5f,-0.1f],scale:[0.2f,1f,0.2f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute at @e[tag=void_gate_visual_core] unless block ~-1 ~1 ~-1 #dash unless entity @e[tag=voidgate_visual_NW_2] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_visual_NW_2","voidgate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.5f,-0.1f],scale:[0.2f,1f,0.2f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute at @e[tag=void_gate_visual_core] unless block ~1 ~ ~-1 #dash unless entity @e[tag=voidgate_visual_NE_1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_visual_NE_1","voidgate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.5f,-0.1f],scale:[0.2f,1f,0.2f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute at @e[tag=void_gate_visual_core] unless block ~1 ~1 ~-1 #dash unless entity @e[tag=voidgate_visual_NE_2] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_visual_NE_2","voidgate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.5f,-0.1f],scale:[0.2f,1f,0.2f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute at @e[tag=void_gate_visual_core] unless block ~-1 ~ ~1 #dash unless entity @e[tag=voidgate_visual_SW_1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_visual_SW_1","voidgate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.5f,-0.1f],scale:[0.2f,1f,0.2f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute at @e[tag=void_gate_visual_core] unless block ~-1 ~1 ~1 #dash unless entity @e[tag=voidgate_visual_SW_2] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_visual_SW_2","voidgate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.5f,-0.1f],scale:[0.2f,1f,0.2f]},block_state:{Name:"minecraft:black_concrete_powder"}}

execute at @e[tag=void_gate_visual_core] unless block ~ ~ ~-1 #dash unless entity @e[tag=voidgate_visual_N_1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_visual_N_1","voidgate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.45f,-0.5f,-0.05f],scale:[0.9f,1f,0.1f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute at @e[tag=void_gate_visual_core] unless block ~ ~1 ~-1 #dash unless entity @e[tag=voidgate_visual_N_2] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_visual_N_2","voidgate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.45f,-0.5f,-0.05f],scale:[0.9f,1f,0.1f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute at @e[tag=void_gate_visual_core] unless block ~ ~ ~1 #dash unless entity @e[tag=voidgate_visual_S_1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_visual_S_1","voidgate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.45f,-0.5f,-0.05f],scale:[0.9f,1f,0.1f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute at @e[tag=void_gate_visual_core] unless block ~ ~1 ~1 #dash unless entity @e[tag=voidgate_visual_S_2] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_visual_S_2","voidgate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.45f,-0.5f,-0.05f],scale:[0.9f,1f,0.1f]},block_state:{Name:"minecraft:black_concrete_powder"}}

execute at @e[tag=void_gate_visual_core] unless block ~1 ~ ~ #dash unless entity @e[tag=voidgate_visual_E_1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_visual_E_1","voidgate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.5f,-0.45f],scale:[0.1f,1f,0.9f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute at @e[tag=void_gate_visual_core] unless block ~1 ~1 ~ #dash unless entity @e[tag=voidgate_visual_E_2] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_visual_E_2","voidgate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.5f,-0.45f],scale:[0.1f,1f,0.9f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute at @e[tag=void_gate_visual_core] unless block ~-1 ~ ~ #dash unless entity @e[tag=voidgate_visual_W_1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_visual_W_1","voidgate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.5f,-0.45f],scale:[0.1f,1f,0.9f]},block_state:{Name:"minecraft:black_concrete_powder"}}
execute at @e[tag=void_gate_visual_core] unless block ~-1 ~1 ~ #dash unless entity @e[tag=voidgate_visual_W_2] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_visual_W_2","voidgate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.5f,-0.45f],scale:[0.1f,1f,0.9f]},block_state:{Name:"minecraft:black_concrete_powder"}}


execute unless entity @e[tag=void_gate_visual_core] run kill @e[tag=voidgate_visuals]

#bycie w voidzie AAAAAAAAAAAAAAAAAAAAAAA ==================================================================================================================================================================================================================================================================================================================

execute at @e[tag=void_gate] run scoreboard players set @a[distance=..1,scores={char=37,universal_sprint=0}] s3_timer 0
execute at @e[tag=void_gate] run tag @a[distance=..1,scores={char=37,universal_sprint=0}] add in_the_void

execute if entity @e[tag=void_gate] as @a[tag=in_the_void,scores={char=37}] at @s run tp @s ~ ~-50 ~

execute if entity @e[tag=void_gate] run playsound entity.wither.ambient master @a[tag=in_the_void,scores={char=37}] ~ ~ ~ 16 0.8 1
execute if entity @e[tag=void_gate] run playsound block.soul_sand.break master @a[tag=in_the_void,scores={char=37}] ~ ~ ~ 16 1 1
execute if entity @e[tag=void_gate] run playsound block.soul_sand.break master @a[tag=in_the_void,scores={char=37}] ~ ~ ~ 16 0.8 1
execute if entity @e[tag=void_gate] run playsound block.soul_sand.break master @a[tag=in_the_void,scores={char=37}] ~ ~ ~ 16 0.6 1
execute if entity @e[tag=void_gate] run playsound block.soul_sand.break master @a[tag=in_the_void,scores={char=37}] ~ ~ ~ 16 0.4 1
execute if entity @e[tag=void_gate] run playsound block.soul_sand.break master @a[tag=in_the_void,scores={char=37}] ~ ~ ~ 16 0.2 1

execute if entity @a[tag=in_the_void,scores={char=37}] run kill @e[tag=void_gate]
effect clear @a[tag=in_the_void,scores={char=37}] glowing
effect give @a[tag=in_the_void,scores={char=37}] speed 1 1 true
effect give @a[tag=in_the_void,scores={char=37}] weakness 1 100 true
effect give @a[tag=in_the_void,scores={char=37}] resistance 1 100 true
effect give @a[tag=in_the_void,scores={char=37}] night_vision 1 100 true
scoreboard players set @a[tag=in_the_void,scores={char=37}] CC_intangible 20

scoreboard players set @a[tag=in_the_void,scores={char=37}] spellCD1 20
scoreboard players set @a[tag=in_the_void,scores={char=37}] spellCD2 20
scoreboard players set @a[tag=in_the_void,scores={char=37}] s1_timer 2 
scoreboard players set @a[tag=in_the_void,scores={char=37}] s2_timer 2


execute at @a[scores={char=37,s3_timer=1}] run kill @e[tag=void_blade_return]
execute at @a[scores={char=37,s3_timer=1}] run summon marker ~ ~ ~ {Tags:["void_blade_return","entities_shapeless"]}
tp @e[tag=void_blade_return,limit=1] @a[scores={char=37,s3_timer=1},limit=1]


execute at @e[tag=void_blade_return] run particle block{block_state:{Name:"minecraft:white_concrete_powder"}} ~ ~ ~ 0.2 1.5 0.2 0.0001 50 normal
execute at @e[tag=void_blade_return] run particle smoke ~ ~ ~ 0.2 1 0.2 0.0001 20 normal
execute at @e[tag=void_blade_return] run particle falling_dust{block_state:{Name:"minecraft:crying_obsidian"}} ~ ~ ~ 0.2 1 0.2 0.0001 20 normal


execute store result entity @e[tag=void_blade_return,limit=1] Rotation[1] float 1 run clear

execute as @e[tag=void_blade_return] at @s unless block ^ ^0.5 ^0.5 #minecraft:dash run kill @e[tag=voidgate_visuals]
execute as @e[tag=void_blade_return] at @s unless block ^ ^0.5 ^0.5 #minecraft:dash run kill @e[tag=returngate_visuals]
execute as @e[tag=void_blade_return] at @s unless block ^ ^0.5 ^0.5 #minecraft:dash run kill @e[tag=void_gate_return]
execute as @e[tag=void_blade_return] at @s unless block ^ ^0.5 ^0.5 #minecraft:dash align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["void_gate_return","void_return_visual_core","entities_shapeless"]}
execute as @e[tag=void_blade_return] at @s unless block ^ ^0.5 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=void_blade_return] at @s run tp @s ^ ^ ^0.5
execute as @e[tag=void_blade_return] at @s if block ~ ~-0.2 ~ #minecraft:dash run tp @s ~ ~-0.2 ~
execute as @e[tag=void_blade_return] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~
execute as @e[tag=void_blade_return] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~

execute at @e[tag=void_return_visual_core] run tp @e[tag=voidgate_return_visual_N_1] ~ ~0.5 ~-0.49
execute at @e[tag=void_return_visual_core] run tp @e[tag=voidgate_return_visual_N_2] ~ ~1.5 ~-0.49
execute at @e[tag=void_return_visual_core] run tp @e[tag=voidgate_return_visual_S_1] ~ ~0.5 ~0.49
execute at @e[tag=void_return_visual_core] run tp @e[tag=voidgate_return_visual_S_2] ~ ~1.5 ~0.49
execute at @e[tag=void_return_visual_core] run tp @e[tag=voidgate_return_visual_E_1] ~0.49 ~0.5 ~
execute at @e[tag=void_return_visual_core] run tp @e[tag=voidgate_return_visual_E_2] ~0.49 ~1.5 ~
execute at @e[tag=void_return_visual_core] run tp @e[tag=voidgate_return_visual_W_1] ~-0.49 ~0.5 ~
execute at @e[tag=void_return_visual_core] run tp @e[tag=voidgate_return_visual_W_2] ~-0.49 ~1.5 ~

execute at @e[tag=void_return_visual_core] run tp @e[tag=voidgate_return_visual_SE_1] ~0.49 ~0.5 ~0.49 
execute at @e[tag=void_return_visual_core] run tp @e[tag=voidgate_return_visual_SE_2] ~0.49 ~1.5 ~0.49 
execute at @e[tag=void_return_visual_core] run tp @e[tag=voidgate_return_visual_NW_1] ~-0.49 ~0.5 ~-0.49 
execute at @e[tag=void_return_visual_core] run tp @e[tag=voidgate_return_visual_NW_2] ~-0.49 ~1.5 ~-0.49 
execute at @e[tag=void_return_visual_core] run tp @e[tag=voidgate_return_visual_NE_1] ~0.49 ~0.5 ~-0.49 
execute at @e[tag=void_return_visual_core] run tp @e[tag=voidgate_return_visual_NE_2] ~0.49 ~1.5 ~-0.49 
execute at @e[tag=void_return_visual_core] run tp @e[tag=voidgate_return_visual_SW_1] ~-0.49 ~0.5 ~0.49 
execute at @e[tag=void_return_visual_core] run tp @e[tag=voidgate_return_visual_SW_2] ~-0.49 ~1.5 ~0.49 

execute at @e[tag=void_return_visual_core] unless block ~1 ~ ~1 #dash unless entity @e[tag=voidgate_return_visual_SE_1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_return_visual_SE_1","returngate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.5f,-0.1f],scale:[0.2f,1f,0.2f]},block_state:{Name:"minecraft:white_concrete_powder"}}
execute at @e[tag=void_return_visual_core] unless block ~1 ~1 ~1 #dash unless entity @e[tag=voidgate_return_visual_SE_2] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_return_visual_SE_2","returngate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.5f,-0.1f],scale:[0.2f,1f,0.2f]},block_state:{Name:"minecraft:white_concrete_powder"}}
execute at @e[tag=void_return_visual_core] unless block ~-1 ~ ~-1 #dash unless entity @e[tag=voidgate_return_visual_NW_1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_return_visual_NW_1","returngate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.5f,-0.1f],scale:[0.2f,1f,0.2f]},block_state:{Name:"minecraft:white_concrete_powder"}}
execute at @e[tag=void_return_visual_core] unless block ~-1 ~1 ~-1 #dash unless entity @e[tag=voidgate_return_visual_NW_2] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_return_visual_NW_2","returngate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.5f,-0.1f],scale:[0.2f,1f,0.2f]},block_state:{Name:"minecraft:white_concrete_powder"}}
execute at @e[tag=void_return_visual_core] unless block ~1 ~ ~-1 #dash unless entity @e[tag=voidgate_return_visual_NE_1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_return_visual_NE_1","returngate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.5f,-0.1f],scale:[0.2f,1f,0.2f]},block_state:{Name:"minecraft:white_concrete_powder"}}
execute at @e[tag=void_return_visual_core] unless block ~1 ~1 ~-1 #dash unless entity @e[tag=voidgate_return_visual_NE_2] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_return_visual_NE_2","returngate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.5f,-0.1f],scale:[0.2f,1f,0.2f]},block_state:{Name:"minecraft:white_concrete_powder"}}
execute at @e[tag=void_return_visual_core] unless block ~-1 ~ ~1 #dash unless entity @e[tag=voidgate_return_visual_SW_1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_return_visual_SW_1","returngate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.5f,-0.1f],scale:[0.2f,1f,0.2f]},block_state:{Name:"minecraft:white_concrete_powder"}}
execute at @e[tag=void_return_visual_core] unless block ~-1 ~1 ~1 #dash unless entity @e[tag=voidgate_return_visual_SW_2] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_return_visual_SW_2","returngate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.5f,-0.1f],scale:[0.2f,1f,0.2f]},block_state:{Name:"minecraft:white_concrete_powder"}}


execute at @e[tag=void_return_visual_core] unless block ~ ~ ~-1 #dash unless entity @e[tag=voidgate_return_visual_N_1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_return_visual_N_1","returngate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.45f,-0.5f,-0.05f],scale:[0.9f,1f,0.1f]},block_state:{Name:"minecraft:white_concrete_powder"}}
execute at @e[tag=void_return_visual_core] unless block ~ ~1 ~-1 #dash unless entity @e[tag=voidgate_return_visual_N_2] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_return_visual_N_2","returngate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.45f,-0.5f,-0.05f],scale:[0.9f,1f,0.1f]},block_state:{Name:"minecraft:white_concrete_powder"}}
execute at @e[tag=void_return_visual_core] unless block ~ ~ ~1 #dash unless entity @e[tag=voidgate_return_visual_S_1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_return_visual_S_1","returngate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.45f,-0.5f,-0.05f],scale:[0.9f,1f,0.1f]},block_state:{Name:"minecraft:white_concrete_powder"}}
execute at @e[tag=void_return_visual_core] unless block ~ ~1 ~1 #dash unless entity @e[tag=voidgate_return_visual_S_2] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_return_visual_S_2","returngate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.45f,-0.5f,-0.05f],scale:[0.9f,1f,0.1f]},block_state:{Name:"minecraft:white_concrete_powder"}}

execute at @e[tag=void_return_visual_core] unless block ~1 ~ ~ #dash unless entity @e[tag=voidgate_return_visual_E_1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_return_visual_E_1","returngate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.5f,-0.45f],scale:[0.1f,1f,0.9f]},block_state:{Name:"minecraft:white_concrete_powder"}}
execute at @e[tag=void_return_visual_core] unless block ~1 ~1 ~ #dash unless entity @e[tag=voidgate_return_visual_E_2] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_return_visual_E_2","returngate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.5f,-0.45f],scale:[0.1f,1f,0.9f]},block_state:{Name:"minecraft:white_concrete_powder"}}
execute at @e[tag=void_return_visual_core] unless block ~-1 ~ ~ #dash unless entity @e[tag=voidgate_return_visual_W_1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_return_visual_W_1","returngate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.5f,-0.45f],scale:[0.1f,1f,0.9f]},block_state:{Name:"minecraft:white_concrete_powder"}}
execute at @e[tag=void_return_visual_core] unless block ~-1 ~1 ~ #dash unless entity @e[tag=voidgate_return_visual_W_2] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["voidgate_return_visual_W_2","returngate_visuals","entities_shapeless"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.5f,-0.45f],scale:[0.1f,1f,0.9f]},block_state:{Name:"minecraft:white_concrete_powder"}}

execute unless entity @e[tag=void_return_visual_core] run kill @e[tag=returngate_visuals]


execute at @e[tag=returngate_visuals] run particle minecraft:falling_dust{block_state:{Name:"minecraft:white_concrete_powder"}} ~ ~0.5 ~ 0.5 0.5 0.5 0.0001 1 normal
execute as @e[tag=void_gate_return] at @s if block ~ ~-0.5 ~ #minecraft:dash run tp @s ~ ~-1 ~
execute as @e[tag=void_gate_return] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~
execute at @e[tag=void_gate_return] run playsound entity.wither_skeleton.ambient master @a[distance=..10] ~ ~ ~ 0.03 0.1 1

execute at @e[tag=void_gate_return] positioned ~ ~50 ~ unless entity @e[tag=returnal_gate] run summon marker ~ ~ ~ {Tags:["returnal_gate","void_gate_visual_core","entities_shapeless"]}
execute at @e[tag=void_gate_return] positioned ~ ~50 ~ run tp @e[tag=returnal_gate] ~ ~ ~
execute at @e[tag=void_gate_return] positioned ~ ~50 ~ run playsound minecraft:entity.wither_skeleton.ambient master @a[distance=..10] ~ ~ ~ 0.03 0.1 1

execute at @a[scores={char=37,s1_timer=170..171}] run kill @e[tag=returnal_gate]



execute at @e[tag=void_gate_return] run scoreboard players set @a[distance=..1,scores={char=37}] spellCD1 140
execute at @e[tag=void_gate_return] run scoreboard players set @a[distance=..1,scores={char=37}] s1_timer 1
execute at @e[tag=void_gate_return] run scoreboard players set @a[distance=..1,scores={char=37}] s1_timer 140
execute at @e[tag=void_gate_return] run scoreboard players set @a[distance=..1,scores={char=37}] void_empower 60
execute at @e[tag=void_gate_return] run tag @a[distance=..1,scores={char=37}] remove invisible
execute at @e[tag=void_gate_return] run tag @a[distance=..1,scores={char=37}] remove in_the_void
execute at @e[tag=void_gate_return] unless entity @a[tag=in_the_void,scores={char=37}] run effect clear @a[scores={char=37}]
execute at @e[tag=void_gate_return] unless entity @a[tag=in_the_void,scores={char=37}] run particle smoke ~ ~ ~ 3 2 3 0.0001 200 normal
#execute at @e[tag=void_gate_return] unless entity @a[scores={char=37},tag=in_the_void] run playsound entity.enderman.scream master @a[distance=..20] ~ ~ ~ 1 0.6 1

execute at @e[tag=void_gate_return] as @a[distance=..1,scores={char=37}] at @s run scoreboard players set @s spellCD3 0
execute at @e[tag=void_gate_return] as @a[distance=..1,scores={char=37}] at @s run clear @s barrier
execute at @e[tag=void_gate_return] as @a[distance=..1,scores={char=37}] at @s run tp @s ~ ~50 ~
execute unless entity @a[tag=in_the_void,scores={char=37}] run kill @e[tag=void_gate_return]


execute at @a[scores={void_empower=50..60}] run playsound block.soul_sand.break master @a[distance=..10] ~ ~ ~ 1 0.2 1
execute at @a[scores={void_empower=1..}] run particle smoke ~ ~ ~ 3 2 3 0.01 20
scoreboard players remove @a[scores={void_empower=1..}] void_empower 1


execute at @a[tag=in_the_void,scores={char=37}] run particle smoke ~ ~ ~ 15 15 15 0.01 300

execute if entity @a[tag=in_the_void,scores={char=37}] as @e[tag=valid_spell_target] at @s unless score @s Team = @p[scores={char=37}] Team run particle minecraft:dust{color:[1.0,0.0,0],scale:1.0f} ~ ~-49 ~ 0.3 0.7 0.3 0.1 5
execute if entity @a[tag=in_the_void,scores={char=37}] as @e[tag=valid_spell_target] at @s if score @s Team = @p[scores={char=37}] Team run particle minecraft:dust{color:[1.0,1.0,1.0],scale:1.0f} ~ ~-49 ~ 0.3 0.7 0.3 0.1 5


# ==================================================================================================================================================================================================================================================================================================================

#remember me

scoreboard players set @a[scores={char=37,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=37,s2_timer=1,CC_silence=1..}] s2_timer 240

execute at @a[tag=remember_me] run particle smoke ~ ~0.5 ~ 0.5 0.5 0.5 0.001 8
execute as @a[scores={universal_death=1..}] run tag @s remove remember_me
execute at @a[scores={universal_death=1..,char=37}] run tag @a remove remember_me
execute at @a[scores={universal_hit=1..,char=37,CC_silence=0}] run tag @a remove remember_me

scoreboard players set @a[scores={char=37,s2_timer=1,CC_silence=0}] shapeless_s2_empower 1
execute at @a[scores={universal_hit=1..,char=37,CC_silence=0,s2_timer=0}] as @a[advancements={chars:shapeless_hit=true},tag=valid_spell_target] unless score @s Team = @p[scores={char=37}] Team run tag @s add remember_me

execute unless entity @p[tag=remember_me] run scoreboard players set @a[scores={char=37,s2_timer=2,CC_silence=0}] spellCD2 20
execute unless entity @p[tag=remember_me] run scoreboard players set @a[scores={char=37,s2_timer=2,CC_silence=0}] s2_timer 240

#execute if entity @p[tag=remember_me] run clear @a[scores={char=37,s2_timer=1,CC_silence=0}] minecraft:stone_hoe
#execute if entity @p[tag=remember_me] run item replace entity @a[scores={char=37,s2_timer=1,CC_silence=0}] hotbar.0 with stone_hoe[custom_data={shapeless:1},minecraft:custom_name={bold:1b,color:"gray",text:"Melted Grasp"},minecraft:max_damage=5,minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_speed",amount:-0.4d,operation:"add_multiplied_base",slot:"mainhand"},{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"}]] 1

execute as @a[scores={char=37,s2_timer=2..3,CC_silence=0}] run tp @p[tag=remember_me]
execute if entity @p[tag=remember_me] at @a[scores={char=37,s2_timer=1,CC_silence=0}] run playsound minecraft:entity.drowned.hurt master @a[distance=..10] ~ ~ ~ 1 0.1 1
execute at @a[scores={char=37,s2_timer=5,CC_silence=0}] run tag @a remove remember_me

scoreboard players set @a[scores={char=37,shapeless_s2_empower=4..}] shapeless_s2_empower 0

#shapeless

advancement revoke @a[advancements={chars:shapeless_hit=true}] only chars:shapeless_hit

scoreboard players set @a[scores={s1_timer=1,char=37}] spellCD1 280
scoreboard players add @a[scores={s1_timer=1..,char=37}] s1_timer 1
scoreboard players set @a[scores={s1_timer=281..,char=37}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=37}] spellCD2 260
scoreboard players add @a[scores={s2_timer=1..,char=37}] s2_timer 1
scoreboard players set @a[scores={s2_timer=261..,char=37}] s2_timer 0

scoreboard players set @a[scores={s3_timer=1,char=37}] spellCD3 60
scoreboard players add @a[scores={s3_timer=1..,char=37}] s3_timer 1
scoreboard players set @a[scores={s3_timer=60..,char=37}] s3_timer 0

execute as @a[scores={char=37,shapeless_s2_empower=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:stone_hoe",Slot:0b}]}] run clear @a[scores={char=37}] stone_hoe
item replace entity @a[scores={char=37,shapeless_s2_empower=0}] hotbar.0 with minecraft:stone_hoe[custom_data={shapeless:1},minecraft:custom_name={bold:1b,color:"gray",text:"Melted Grasp"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"},{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"}],minimum_attack_charge=0.8] 1

execute as @a[scores={char=37,shapeless_s2_empower=1..}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_hoe",Slot:0b}]}] run clear @a[scores={char=37}] netherite_hoe
item replace entity @a[scores={char=37,shapeless_s2_empower=1..}] hotbar.0 with netherite_hoe[custom_data={shapeless:1},minecraft:custom_name={bold:1b,color:"gray",text:"Melted Grasp"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_speed",amount:-0.4d,operation:"add_multiplied_base",slot:"mainhand"},{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"}],minimum_attack_charge=0.8] 1

execute as @a[scores={char=37,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=37}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=37,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:crying_obsidian",minecraft:custom_name={text:"Into the Void",color:"dark_aqua",bold:1b}] 1

execute as @a[tag=!in_the_void,scores={char=37,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=37}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[tag=!in_the_void,scores={char=37,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:netherite_ingot",minecraft:custom_name={text:"Remember Me",color:"dark_aqua",bold:1b}] 1

clear @a[tag=!in_the_void,scores={char=37}] carrot_on_a_stick[custom_data={s3:1}]
execute as @a[tag=in_the_void,scores={char=37,s3_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:3b}]}] run clear @a[scores={char=37}] minecraft:carrot_on_a_stick[custom_data={s3:1}]
item replace entity @a[tag=in_the_void,scores={char=37,s3_timer=0,CC_silence=0}] hotbar.3 with minecraft:carrot_on_a_stick[custom_data={s3:1},minecraft:item_model="minecraft:white_glazed_terracotta",minecraft:custom_name={text:"From the Void",color:"dark_aqua",bold:1b}] 1

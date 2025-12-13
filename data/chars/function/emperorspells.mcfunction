#kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:glow_ink_sac"}}]
#kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_boots"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:wooden_hoe"}}]



#abyssal tremor

scoreboard players set @a[scores={char=32,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=32,s1_timer=1,CC_silence=1..}] s1_timer 300

execute at @a[scores={char=32,s1_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["nautilus","entities_emperor"]}
execute at @a[scores={char=32,s1_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["emperor_face_target","entities_emperor"]}
tp @e[tag=nautilus,limit=1] @a[scores={char=32,s1_timer=1},limit=1]
execute store result entity @e[tag=nautilus,limit=1] Rotation[1] float 1 run clear
execute as @e[tag=nautilus] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s

execute at @a[scores={char=32,s1_timer=1,CC_silence=0}] run playsound entity.zombie.converted_to_drowned master @a[distance=..15] ~ ~ ~ 1 0.1 1
execute at @a[scores={char=32,s1_timer=1,CC_silence=0}] run playsound entity.lightning_bolt.impact master @a[distance=..15] ~ ~ ~ 0.6 1.5 1
#execute at @e[tag=nautilus] run playsound minecraft:block.tuff.place master @a[distance=..10] ~ ~ ~ 0.8 1.4 1
execute at @a[scores={char=32,s1_timer=..40}] at @e[tag=nautilus] run playsound minecraft:entity.drowned.swim master @a[distance=..10] ~ ~ ~ 0.4 0.5 1

execute at @e[tag=nautilus] run particle block{block_state:{Name:"minecraft:water"}} ~ ~0.5 ~ 1 1 1 0.3 50 normal
execute at @e[tag=nautilus] run particle block{block_state:{Name:"minecraft:water"}} ^ ^ ^-1 1 1 1 0.3 50 normal
execute at @e[tag=nautilus] run particle block{block_state:{Name:"minecraft:tuff"}} ~ ~0.5 ~ 1.5 0.3 1.5 0.3 5 normal

execute as @e[tag=nautilus] at @s run tp @s ^ ^ ^0.4
execute as @e[tag=nautilus] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-1 ~
execute as @e[tag=nautilus] at @s if block ~ ~-0.5 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=nautilus] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~
execute as @e[tag=nautilus] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~

scoreboard players add @e[tag=nautilus] s1_timer 1
execute as @e[tag=nautilus,scores={s1_timer=3..}] at @s run summon block_display ~ ~2 ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2f,0.75f,43f],translation:[-1f,-1.2f,-2f]},block_state:{Name:blue_stained_glass},Tags:["emperor_wave","entities_emperor"]}
scoreboard players set @e[tag=nautilus,scores={s1_timer=3..}] s1_timer 0

scoreboard players add @e[tag=emperor_wave] s1_timer 1
execute as @e[tag=emperor_wave,scores={s1_timer=1}] at @s facing entity @n[tag=emperor_face_target] feet rotated ~ 20 run tp @s ~ ~ ~ ~ ~
kill @e[tag=emperor_wave,scores={s1_timer=25..}]

execute as @e[tag=emperor_wave] at @s run tp @s ~ ~-0.1 ~

execute at @e[tag=nautilus] as @e[tag=valid_spell_target,distance=..2.5,scores={CC_knockup=0}] at @s unless score @s Team = @p[scores={char=32}] Team run summon marker ~ ~ ~ {Tags:["deepexplosion","entities_emperor"]}

execute at @a[scores={char=32,s1_timer=40..}] run kill @e[tag=emperor_face_target]
execute at @a[scores={char=32,s1_timer=40..}] run kill @e[tag=nautilus]


execute at @e[tag=deepexplosion] as @e[tag=valid_spell_target,distance=..3,scores={CC_knockup=0}] unless score @s Team = @p[scores={char=32}] Team run scoreboard players set @s CC_knockup 40

execute at @e[tag=deepexplosion] run particle block{block_state:{Name:"minecraft:tuff"}} ~ ~1 ~ 0.8 1.5 0.8 0.001 100
execute at @e[tag=deepexplosion] run particle block{block_state:{Name:"minecraft:water"}} ~ ~ ~ 1.5 2 1.5 0.001 100
execute at @e[tag=deepexplosion] run playsound entity.drowned.swim master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @e[tag=deepexplosion] run playsound entity.lightning_bolt.impact master @a[distance=..10] ~ ~ ~ 0.6 1.5 1
kill @e[tag=deepexplosion]


#crashing pincers

scoreboard players set @a[scores={char=32,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=32,s2_timer=1,CC_silence=1..}] s2_timer 180

execute at @a[scores={char=32,s2_timer=1,CC_silence=0}] run playsound entity.evoker_fangs.attack master @a[distance=..15] ~ ~ ~ 1 1.7 1
execute at @a[scores={char=32,s2_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["pincers","projectile","entities_emperor"]}
scoreboard players operation @e[tag=projectile,tag=pincers] Team = @p[scores={char=32}] Team
tp @e[tag=pincers,limit=1] @a[scores={char=32,s2_timer=1},limit=1]
execute at @a[scores={char=32,s2_timer=1,CC_silence=0}] as @e[tag=pincers,limit=1] at @s run tp @s ~ ~1.5 ~ 
execute as @e[tag=pincers] at @s run tp @s ^ ^ ^0.7
execute at @a[scores={char=32,s2_timer=12}] run kill @e[tag=pincers]


execute at @e[tag=pincers] run particle crit ~ ~ ~ 0.1 0.5 0.1 0.01 30 force
execute at @e[tag=pincers] run particle block{block_state:{Name:"minecraft:deepslate"}} ~ ~ ~ 0.1 0.3 0.1 0.01 3 force


execute at @e[tag=pincers] positioned ~-.5 ~-1 ~-.5 as @a[dx=0,dy=0.5,dz=0,tag=valid_spell_target,limit=1] unless score @s Team = @p[scores={char=32}] Team run tag @s add crab_rend

execute at @a[tag=crab_rend] run kill @e[tag=pincers]
scoreboard players set @a[tag=crab_rend] CC_grounded 20
effect give @a[tag=crab_rend] slowness 1 4
execute at @a[tag=crab_rend] run effect give @p[scores={char=32}] instant_health
execute at @a[tag=crab_rend] run particle block{block_state:{Name:"minecraft:tuff"}} ~ ~1 ~ 0.3 0.5 0.3 0.1 5
execute at @a[tag=crab_rend] run particle block{block_state:{Name:"minecraft:deepslate"}} ~ ~1 ~ 0.2 0.5 0.2 1 1
execute at @a[tag=crab_rend] run particle block{block_state:{Name:"minecraft:water"}} ~ ~1 ~ 0.2 0.5 0.2 1 1
tag @a remove crab_rend


#shipwreck shell (na dole for reasons)

scoreboard players set @a[scores={universal_damagetaken=1..}] passive_empe 0
scoreboard players set @a[scores={char=32,CC_shieldbreak=1..}] passive_empe 1

scoreboard players add @a[scores={char=32}] passive_empe 1
effect clear @a[scores={char=32,passive_empe=1..3}] absorption
scoreboard players set @a[scores={char=32,passive_empe=210..}] passive_empe 203
effect give @a[scores={char=32,passive_empe=199..200}] absorption infinite 2 true

effect give @a[scores={char=32},nbt={active_effects:[{id:"minecraft:absorption"}]}] resistance 1 1

title @a[scores={char=32,passive_empe=200..}] actionbar [{text:"[",bold:1b,color:"blue",type:"text"},{text:" Shipwreck Shell is active ",color:"aqua",bold:0b,type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]

title @a[scores={char=32,passive_empe=1..20}] actionbar [{text:"[",bold:1b,color:"blue",type:"text"},{text:"=",color:"gray",type:"text"},{text:"=========",color:"dark_gray",type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]
title @a[scores={char=32,passive_empe=21..40}] actionbar [{text:"[",bold:1b,color:"blue",type:"text"},{text:"==",color:"gray",type:"text"},{text:"========",color:"dark_gray",type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]
title @a[scores={char=32,passive_empe=41..60}] actionbar [{text:"[",bold:1b,color:"blue",type:"text"},{text:"===",color:"gray",type:"text"},{text:"=======",color:"dark_gray",type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]
title @a[scores={char=32,passive_empe=61..80}] actionbar [{text:"[",bold:1b,color:"blue",type:"text"},{text:"====",color:"gray",type:"text"},{text:"======",color:"dark_gray",type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]
title @a[scores={char=32,passive_empe=81..100}] actionbar [{text:"[",bold:1b,color:"blue",type:"text"},{text:"=====",color:"gray",type:"text"},{text:"=====",color:"dark_gray",type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]
title @a[scores={char=32,passive_empe=101..120}] actionbar [{text:"[",bold:1b,color:"blue",type:"text"},{text:"======",color:"gray",type:"text"},{text:"====",color:"dark_gray",type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]
title @a[scores={char=32,passive_empe=121..140}] actionbar [{text:"[",bold:1b,color:"blue",type:"text"},{text:"=======",color:"gray",type:"text"},{text:"===",color:"dark_gray",type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]
title @a[scores={char=32,passive_empe=141..160}] actionbar [{text:"[",bold:1b,color:"blue",type:"text"},{text:"========",color:"gray",type:"text"},{text:"==",color:"dark_gray",type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]
title @a[scores={char=32,passive_empe=161..180}] actionbar [{text:"[",bold:1b,color:"blue",type:"text"},{text:"=========",color:"gray",type:"text"},{text:"=",color:"dark_gray",type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]
title @a[scores={char=32,passive_empe=181..200}] actionbar [{text:"[",bold:1b,color:"blue",type:"text"},{text:"==========",color:"gray",type:"text"},{text:"",color:"dark_gray",type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]

execute unless entity @a[scores={char=32,passive_empe=200..}] run kill @e[tag=shell_visuals]
execute at @a[scores={char=32,passive_empe=200..}] unless entity @e[tag=shell_visual_core] run summon marker ~ ~ ~ {Tags:["shell_visual_core","shell_visuals","entities_emperor"]}
execute as @a[scores={char=32,passive_empe=200..}] at @s run tp @e[tag=shell_visual_core] ~ ~0.2 ~
execute as @e[tag=shell_visual_core] at @s run tp @s ~ ~ ~ ~-6 0

execute at @a[scores={char=32,passive_empe=200..}] unless entity @e[tag=shell_fragment_1] run summon block_display ~ ~ ~ {Tags:["shell_fragment_1","shell_visuals","entities_emperor"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:tuff"}}
execute at @a[scores={char=32,passive_empe=200..}] unless entity @e[tag=shell_fragment_2] run summon block_display ~ ~ ~ {Tags:["shell_fragment_2","shell_visuals","entities_emperor"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:mangrove_planks"}}
execute at @a[scores={char=32,passive_empe=200..}] unless entity @e[tag=shell_fragment_3] run summon block_display ~ ~ ~ {Tags:["shell_fragment_3","shell_visuals","entities_emperor"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:cobbled_deepslate"}}
execute at @a[scores={char=32,passive_empe=200..}] unless entity @e[tag=shell_fragment_4] run summon block_display ~ ~ ~ {Tags:["shell_fragment_4","shell_visuals","entities_emperor"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:crimson_planks"}}
execute at @a[scores={char=32,passive_empe=200..}] unless entity @e[tag=shell_fragment_5] run summon block_display ~ ~ ~ {Tags:["shell_fragment_5","shell_visuals","entities_emperor"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:cobbled_deepslate"}}
execute at @a[scores={char=32,passive_empe=200..}] unless entity @e[tag=shell_fragment_6] run summon block_display ~ ~ ~ {Tags:["shell_fragment_6","shell_visuals","entities_emperor"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:mangrove_planks"}}
execute at @a[scores={char=32,passive_empe=200..}] unless entity @e[tag=shell_fragment_7] run summon block_display ~ ~ ~ {Tags:["shell_fragment_7","shell_visuals","entities_emperor"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:tuff"}}
execute at @a[scores={char=32,passive_empe=200..}] unless entity @e[tag=shell_fragment_8] run summon block_display ~ ~ ~ {Tags:["shell_fragment_8","shell_visuals","entities_emperor"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:crimson_planks"}}

execute as @e[tag=shell_visual_core] at @s run tp @e[tag=shell_fragment_1] ^ ^ ^0.8
execute as @e[tag=shell_visual_core] at @s run tp @e[tag=shell_fragment_2] ^ ^ ^-0.8
execute as @e[tag=shell_visual_core] at @s run tp @e[tag=shell_fragment_3] ^0.8 ^ ^
execute as @e[tag=shell_visual_core] at @s run tp @e[tag=shell_fragment_4] ^-0.8 ^ ^
execute as @e[tag=shell_visual_core] at @s run tp @e[tag=shell_fragment_5] ^-0.6 ^ ^-0.6
execute as @e[tag=shell_visual_core] at @s run tp @e[tag=shell_fragment_6] ^-0.6 ^ ^0.6
execute as @e[tag=shell_visual_core] at @s run tp @e[tag=shell_fragment_7] ^0.6 ^ ^-0.6
execute as @e[tag=shell_visual_core] at @s run tp @e[tag=shell_fragment_8] ^0.6 ^ ^0.6

# emperor

scoreboard players set @a[scores={char=32}] MaxHP 28

scoreboard players set @a[scores={char=32,s1_timer=1,char=32}] spellCD1 320
scoreboard players add @a[scores={char=32,s1_timer=1..,char=32}] s1_timer 1
scoreboard players set @a[scores={char=32,s1_timer=321..,char=32}] s1_timer 0

scoreboard players set @a[scores={char=32,s2_timer=1,char=32}] spellCD2 200
scoreboard players add @a[scores={char=32,s2_timer=1..,char=32}] s2_timer 1
scoreboard players set @a[scores={char=32,s2_timer=201..,char=32}] s2_timer 0


execute as @a[scores={char=32}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_hoe",Slot:0b}]}] run clear @a[scores={char=32}] wooden_hoe
item replace entity @a[scores={char=32}] hotbar.0 with wooden_hoe[minecraft:custom_name={bold:1b,color:"gray",text:"Pincers"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.7d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=32,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=32}] carrot_on_a_stick
item replace entity @a[scores={char=32,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:glow_ink_sac",minecraft:custom_name={text:"Abyssal Tremor",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=32,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=32}] warped_fungus_on_a_stick
item replace entity @a[scores={char=32,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:netherite_boots",minecraft:custom_name={text:"Crashing Pincers",color:"dark_aqua",bold:1b}] 1


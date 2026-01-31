
scoreboard players set @e[tag=!operator_brainrot_initiated] CC_mindrot 0
tag @e add operator_brainrot_initiated

scoreboard players set @a[scores={char=28}] CC_disarm 0

#overload

scoreboard players set @a[scores={char=28,s0_timer=1,CC_silence=1..}] spellCD0 20
scoreboard players set @a[scores={char=28,s0_timer=1,CC_silence=1..}] s0_timer 40

scoreboard players set @a[scores={char=28,s0_timer=1..20,CC_silence=1..}] spellCD0 21
scoreboard players set @a[scores={char=28,s0_timer=1..20,CC_silence=1..}] s0_timer 21

effect give @a[scores={char=28,s0_timer=1..2,CC_silence=0}] slowness 1 2 true
attribute @p[scores={char=28,s0_timer=1..2,CC_silence=0}] jump_strength base set 0
#execute at @a[scores={char=28,s0_timer=1..20,CC_silence=0}] run particle enchanted_hit ~ ~0.5 ~ 0.4 1 0.4 1 20 normal
execute at @a[scores={char=28,s0_timer=1,CC_silence=0}] run playsound block.beacon.activate master @a[distance=..10] ~ ~ ~ 1 2 1

execute at @a[scores={char=28,s0_timer=20,CC_silence=0}] run playsound block.beacon.power_select master @a[distance=..15] ~ ~ ~ 1 2 1
execute at @a[scores={char=28,s0_timer=20,CC_silence=0}] run playsound entity.zombie_villager.cure master @a[distance=..15] ~ ~ ~ 0.5 2 1
execute as @a[scores={char=28,s0_timer=20,CC_silence=0}] at @s positioned ~ ~1.7 ~ run function chars:operator_overload
execute as @a[scores={char=28,s0_timer=20,CC_silence=0}] at @s positioned ~ ~1.7 ~ run function chars:operator_overload_circles
execute at @a[scores={char=28,s0_timer=21,CC_silence=0}] run kill @e[tag=overload_vis_core]
attribute @p[scores={char=28,s0_timer=20..22}] jump_strength base set 0.41

scoreboard players set @a[tag=overloaded,scores={CC_mindrot=1..}] CC_mindrot 100
execute if entity @e[tag=overloaded] at @a[scores={char=28}] run playsound entity.experience_orb.pickup master @a[scores={char=28}] ~ ~ ~ 1 0.1 1
execute as @e[tag=overloaded,scores={CC_mindrot=0}] as @s run damage @s 4 generic by @p[scores={char=28}]
execute as @e[tag=overloaded,scores={CC_mindrot=1..}] as @s run damage @s 6 generic by @p[scores={char=28}]
tag @e remove overloaded

execute at @a[scores={char=28,s0_timer=1..20,CC_silence=0}] unless entity @e[tag=overload_vis_core] run summon marker ~ ~ ~ {Tags:["overload_vis_core","entities_operator"]}
execute at @a[scores={char=28,s0_timer=1..20,CC_silence=0}] run tp @e[tag=overload_vis_core] ~ ~1 ~
execute as @e[tag=overload_vis_core] at @s run tp @s ~ ~ ~ ~11 ~

execute at @a[scores={char=28,s0_timer=1..4,CC_silence=0}] as @e[tag=overload_vis_core] at @s run particle enchanted_hit ^ ^ ^1.2 0 0 0 0 5 force 
execute at @a[scores={char=28,s0_timer=5..8,CC_silence=0}] as @e[tag=overload_vis_core] at @s run particle enchanted_hit ^ ^ ^1 0 0 0 0 5 force 
execute at @a[scores={char=28,s0_timer=9..12,CC_silence=0}] as @e[tag=overload_vis_core] at @s run particle enchanted_hit ^ ^ ^0.8 0 0 0 0 5 force 
execute at @a[scores={char=28,s0_timer=13..16,CC_silence=0}] as @e[tag=overload_vis_core] at @s run particle enchanted_hit ^ ^ ^0.6 0 0 0 0 5 force 
execute at @a[scores={char=28,s0_timer=17..20,CC_silence=0}] as @e[tag=overload_vis_core] at @s run particle enchanted_hit ^ ^ ^0.2 0 0 0 0 5 force 
execute at @a[scores={char=28,s0_timer=1..4,CC_silence=0}] as @e[tag=overload_vis_core] at @s run particle enchanted_hit ^ ^ ^-1.2 0 0 0 0 5 force 
execute at @a[scores={char=28,s0_timer=5..8,CC_silence=0}] as @e[tag=overload_vis_core] at @s run particle enchanted_hit ^ ^ ^-1 0 0 0 0 5 force 
execute at @a[scores={char=28,s0_timer=9..12,CC_silence=0}] as @e[tag=overload_vis_core] at @s run particle enchanted_hit ^ ^ ^-0.8 0 0 0 0 5 force 
execute at @a[scores={char=28,s0_timer=13..16,CC_silence=0}] as @e[tag=overload_vis_core] at @s run particle enchanted_hit ^ ^ ^-0.6 0 0 0 0 5 force 
execute at @a[scores={char=28,s0_timer=17..20,CC_silence=0}] as @e[tag=overload_vis_core] at @s run particle enchanted_hit ^ ^ ^-0.4 0 0 0 0 5 force 
execute at @a[scores={char=28,s0_timer=1..4,CC_silence=0}] as @e[tag=overload_vis_core] at @s run particle enchanted_hit ^-1.1 ^ ^ 0 0 0 0 5 force 
execute at @a[scores={char=28,s0_timer=5..8,CC_silence=0}] as @e[tag=overload_vis_core] at @s run particle enchanted_hit ^-1 ^ ^ 0 0 0 0 5 force 
execute at @a[scores={char=28,s0_timer=9..12,CC_silence=0}] as @e[tag=overload_vis_core] at @s run particle enchanted_hit ^-0.8 ^ ^ 0 0 0 0 5 force 
execute at @a[scores={char=28,s0_timer=13..16,CC_silence=0}] as @e[tag=overload_vis_core] at @s run particle enchanted_hit ^-0.6 ^ ^ 0 0 0 0 5 force 
execute at @a[scores={char=28,s0_timer=17..20,CC_silence=0}] as @e[tag=overload_vis_core] at @s run particle enchanted_hit ^-0.4 ^ ^ 0 0 0 0 5 force 
execute at @a[scores={char=28,s0_timer=1..4,CC_silence=0}] as @e[tag=overload_vis_core] at @s run particle enchanted_hit ^1.2 ^ ^ 0 0 0 0 5 force 
execute at @a[scores={char=28,s0_timer=5..8,CC_silence=0}] as @e[tag=overload_vis_core] at @s run particle enchanted_hit ^1 ^ ^ 0 0 0 0 5 force 
execute at @a[scores={char=28,s0_timer=9..12,CC_silence=0}] as @e[tag=overload_vis_core] at @s run particle enchanted_hit ^0.8 ^ ^ 0 0 0 0 5 force 
execute at @a[scores={char=28,s0_timer=13..16,CC_silence=0}] as @e[tag=overload_vis_core] at @s run particle enchanted_hit ^0.6 ^ ^ 0 0 0 0 5 force 
execute at @a[scores={char=28,s0_timer=17..20,CC_silence=0}] as @e[tag=overload_vis_core] at @s run particle enchanted_hit ^0.4 ^ ^ 0 0 0 0 5 force 



#anguish given form

execute at @a[scores={char=28}] as @e[tag=valid_spell_target] unless score @s Team = @p[scores={char=28}] Team run tag @s add operator_valid_anguish_target
execute at @a[scores={char=28}] as @e[tag=valid_spell_target] if score @s Team = @p[scores={char=28}] Team run tag @s remove operator_valid_anguish_target

scoreboard players set @a[scores={char=28,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=28,s1_timer=1,CC_silence=1..}] s1_timer 280


execute at @a[scores={char=28,s1_timer=1,CC_silence=0}] run playsound block.beacon.power_select master @a[distance=..15] ~ ~ ~ 1 2 1
execute at @a[scores={char=28,s1_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["anguish_sphere_main","anguish_sphere_things","projectile","entities_operator"]}
scoreboard players operation @e[tag=projectile,tag=anguish_sphere_main] Team = @p[scores={char=28}] Team
tp @e[tag=anguish_sphere_main,limit=1] @a[scores={char=28,s1_timer=1},limit=1]
execute at @a[scores={char=28,s1_timer=1,CC_silence=0}] as @e[tag=anguish_sphere_main,limit=1] at @s run tp @s ~ ~1.2 ~ 

execute as @e[tag=anguish_sphere_main] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute at @e[tag=anguish_sphere_main] unless entity @e[tag=anguish_sphere_glass] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.4f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:blue_stained_glass"},Tags:["anguish_sphere_glass","anguish_sphere_things","entities_operator"]}
execute at @e[tag=anguish_sphere_main] unless entity @e[tag=anguish_sphere_soulsand] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.3f],scale:[0.6f,0.6f,0.6f]},block_state:{Name:"minecraft:soul_sand"},Tags:["anguish_sphere_soulsand","anguish_sphere_things","entities_operator"]}
execute at @e[tag=anguish_sphere_main] run playsound entity.ghast.ambient master @a[distance=..10] ~ ~ ~ 0.1 1 1
execute at @e[tag=anguish_sphere_main] run tp @e[tag=anguish_sphere_glass] ~ ~ ~
execute at @e[tag=anguish_sphere_main] run tp @e[tag=anguish_sphere_soulsand] ~ ~ ~
execute as @e[tag=anguish_sphere_glass] at @s run tp @s ~ ~ ~ ~11 ~
execute as @e[tag=anguish_sphere_soulsand] at @s run tp @s ~ ~ ~ ~-11 ~
execute at @e[tag=anguish_sphere_main] run particle enchanted_hit ~ ~ ~ 0.8 0.8 0.8 0.01 10 normal
execute at @e[tag=anguish_sphere_main] run particle soul ~ ~ ~ 0.8 0 0.8 0 1 normal
execute unless entity @e[tag=anguish_sphere_main] run kill @e[tag=anguish_sphere_things]


execute at @a[scores={char=28,s1_timer=1..20}] as @e[tag=anguish_sphere_main] at @s run tp @s ^ ^ ^0.2
execute at @a[scores={char=28,s1_timer=20..100}] as @e[tag=anguish_sphere_main] at @s run tp @s ^ ^ ^0.1
#execute as @e[tag=anguish_sphere_main] at @s run tp @s ^ ^ ^0.2

execute if entity @a[scores={char=28,s1_timer=30}] at @e[tag=anguish_sphere_main] run summon marker ~ ~ ~ {Tags:["anguish_shoot","projectile","entities_operator"]}
execute if entity @a[scores={char=28,s1_timer=40}] at @e[tag=anguish_sphere_main] run summon marker ~ ~ ~ {Tags:["anguish_shoot","projectile","entities_operator"]}
execute if entity @a[scores={char=28,s1_timer=50}] at @e[tag=anguish_sphere_main] run summon marker ~ ~ ~ {Tags:["anguish_shoot","projectile","entities_operator"]}
execute if entity @a[scores={char=28,s1_timer=60}] at @e[tag=anguish_sphere_main] run summon marker ~ ~ ~ {Tags:["anguish_shoot","projectile","entities_operator"]}
execute if entity @a[scores={char=28,s1_timer=70}] at @e[tag=anguish_sphere_main] run summon marker ~ ~ ~ {Tags:["anguish_shoot","projectile","entities_operator"]}

execute at @a[scores={char=28,s1_timer=100..}] run kill @e[tag=anguish_sphere_things]

execute at @e[tag=anguish_shoot] run particle enchanted_hit ~ ~ ~ 0.1 0.1 0.1 0 20 normal
execute at @e[tag=anguish_shoot] run particle enchanted_hit ^ ^ ^0.3 0.1 0.1 0.1 0 20 normal
execute at @e[tag=anguish_shoot] run particle enchanted_hit ^ ^ ^-0.3 0.1 0.1 0.1 0 20 normal
execute at @e[tag=anguish_shoot] run particle enchanted_hit ^ ^ ^-0.6 0.1 0.1 0.1 0 20 normal
execute at @e[tag=anguish_shoot] run particle soul ~ ~ ~ 0.2 0.2 0.2 0.01 2 normal
execute at @e[tag=anguish_shoot] run particle minecraft:block{block_state:{Name:"minecraft:diamond_block"}} ~ ~ ~ 0.2 0.2 0.2 0.01 2 normal
execute at @e[tag=anguish_shoot,scores={knowledgelife=1}] run playsound entity.ghast.shoot master @a[distance=..15] ~ ~ ~ 1 0.5 1

execute as @e[tag=anguish_shoot,scores={knowledgelife=1..4}] at @s run tp @s ~ ~ ~ facing entity @e[tag=operator_valid_anguish_target,sort=nearest,limit=1] eyes
execute as @e[tag=anguish_shoot,scores={knowledgelife=1..4}] at @s run tp @s ^ ^ ^0.3
execute as @e[tag=anguish_shoot,scores={knowledgelife=5..}] at @s run tp @s ^ ^ ^0.5
scoreboard players add @e[tag=anguish_shoot] knowledgelife 1
kill @e[tag=anguish_shoot,scores={knowledgelife=15..}]

execute at @e[tag=anguish_shoot] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=28}] Team run tag @s add anguished
execute at @e[tag=anguish_shoot] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=28}] Team run kill @e[dx=0,dy=0,dz=0,tag=anguish_shoot]

execute at @e[tag=anguished] run kill @e[tag=anguish_shoot,distance=..1,limit=1,sort=nearest]
scoreboard players set @a[tag=anguished,scores={CC_mindrot=1..}] CC_mindrot 100
damage @e[tag=anguished,limit=1,scores={CC_mindrot=0}] 2 dragon_breath by @p[scores={char=28}] from @p[scores={char=28}]
damage @e[tag=anguished,limit=1,scores={CC_mindrot=1..}] 4 dragon_breath by @p[scores={char=28}] from @p[scores={char=28}]
tag @e remove anguished


execute at @e[tag=anguish_sphere_main,tag=anguish_spere_boom] run summon marker ~ ~ ~ {Tags:["sphere_goes_boom","entities_operator"]}

execute if entity @e[tag=sphere_goes_boom] run kill @e[tag=anguish_sphere_things]
execute at @e[tag=sphere_goes_boom] run playsound entity.dragon_fireball.explode master @a[distance=..20] ~ ~ ~ 1 0.3 1
execute at @e[tag=sphere_goes_boom] run playsound block.end_portal.spawn master @a[distance=..20] ~ ~ ~ 0.4 2 1
execute at @e[tag=sphere_goes_boom] run particle explosion ~ ~ ~ 3 2 3 0.01 100 force
execute at @e[tag=sphere_goes_boom] run particle enchanted_hit ~ ~ ~ 3 2 3 0.01 500 force
execute at @e[tag=sphere_goes_boom] run particle soul ~ ~ ~ 2 2 2 0.1 50 force
execute at @e[tag=sphere_goes_boom] run particle enchant ~ ~ ~ 2 2 2 0.1 250 force

execute at @e[tag=sphere_goes_boom] as @e[distance=..6,tag=valid_spell_target,scores={CC_mindrot=0}] unless score @s Team = @p[scores={char=28}] Team run damage @s 6 dragon_breath by @p[scores={char=28}] from @p[scores={char=28}]
execute at @e[tag=sphere_goes_boom] as @e[distance=..6,tag=valid_spell_target,scores={CC_mindrot=1..}] unless score @s Team = @p[scores={char=28}] Team run damage @s 8 dragon_breath by @p[scores={char=28}] from @p[scores={char=28}]
execute at @e[tag=sphere_goes_boom] as @e[distance=..6,tag=valid_spell_target] unless score @s Team = @p[scores={char=28}] Team run scoreboard players set @s CC_silence 20

kill @e[tag=sphere_goes_boom]



#brain damage

scoreboard players set @a[scores={char=28,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=28,s2_timer=1,CC_silence=1..}] s2_timer 120

execute at @a[scores={char=28,s2_timer=1,CC_silence=0}] run playsound entity.enderman.ambient master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=28,s2_timer=1,CC_silence=0}] run playsound block.beacon.deactivate master @a[distance=..10] ~ ~ ~ 1 0.5 1
execute at @a[scores={char=28,s2_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["brainrot_1","braindamage","projectile","entities_operator"]}
execute at @a[scores={char=28,s2_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["brainrot_2","braindamage","projectile","entities_operator"]}
execute at @a[scores={char=28,s2_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["brainrot_3","braindamage","projectile","entities_operator"]}
execute at @a[scores={char=28,s2_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["brainrot_4","braindamage","projectile","entities_operator"]}
execute at @a[scores={char=28,s2_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["brainrot_5","braindamage","projectile","entities_operator"]}
execute at @a[scores={char=28,s2_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["brainrot_6","braindamage","projectile","entities_operator"]}
execute at @a[scores={char=28,s2_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["brainrot_7","braindamage","projectile","entities_operator"]}
execute at @a[scores={char=28,s2_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["brainrot_8","braindamage","projectile","entities_operator"]}
execute at @a[scores={char=28,s2_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["brainrot_9","braindamage","projectile","entities_operator"]}

execute as @e[tag=braindamage] at @s unless entity @e[tag=braindamage_visual,distance=..0.6] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,-0.2f,-0.2f],scale:[0.4f,0.4f,0.4f]},block_state:{Name:"minecraft:light_blue_stained_glass"},Tags:["braindamage_visual","entities_operator"]}
execute at @e[tag=braindamage] run tp @e[tag=braindamage_visual,distance=..0.6] ~ ~ ~
execute as @e[tag=braindamage_visual] at @s run tp @s ~ ~ ~ ~-16 ~
execute as @e[tag=braindamage_visual] at @s unless entity @e[tag=braindamage,distance=..0.6] run kill @s


scoreboard players operation @e[tag=projectile,tag=braindamage] Team = @p[scores={char=28}] Team
tp @e[tag=braindamage] @a[scores={char=28,s2_timer=1},limit=1]

execute as @a[scores={char=28,s2_timer=1,CC_silence=0}] at @s run tp @e[tag=brainrot_1] ^-2.4 ^ ^-1.2
execute as @a[scores={char=28,s2_timer=1,CC_silence=0}] at @s run tp @e[tag=brainrot_2] ^-1.8 ^ ^-0.5
execute as @a[scores={char=28,s2_timer=1,CC_silence=0}] at @s run tp @e[tag=brainrot_3] ^-1.2 ^ ^0.2

execute as @a[scores={char=28,s2_timer=1,CC_silence=0}] at @s run tp @e[tag=brainrot_4] ^-0.6 ^ ^0.5
execute as @a[scores={char=28,s2_timer=1,CC_silence=0}] at @s run tp @e[tag=brainrot_5] ^ ^ ^0.7
execute as @a[scores={char=28,s2_timer=1,CC_silence=0}] at @s run tp @e[tag=brainrot_6] ^0.6 ^ ^0.5

execute as @a[scores={char=28,s2_timer=1,CC_silence=0}] at @s run tp @e[tag=brainrot_7] ^1.2 ^ ^0.2
execute as @a[scores={char=28,s2_timer=1,CC_silence=0}] at @s run tp @e[tag=brainrot_8] ^1.8 ^ ^-0.5
execute as @a[scores={char=28,s2_timer=1,CC_silence=0}] at @s run tp @e[tag=brainrot_9] ^2.4 ^ ^-1.2

execute at @a[scores={char=28,s2_timer=1,CC_silence=0}] as @e[tag=braindamage] at @s run tp @s ~ ~1 ~ 

execute as @e[tag=braindamage] at @s run tp @s ^ ^ ^0.5


execute at @e[tag=braindamage] run particle enchant ~ ~ ~ 0.3 0 0.3 0 4 normal
execute at @e[tag=braindamage] run particle enchanted_hit ~ ~ ~ 0.3 0 0.3 0 1 normal

execute at @a[scores={char=28,s2_timer=35}] run kill @e[tag=braindamage]
execute at @a[scores={char=28,s2_timer=35}] run kill @e[tag=braindamage_visual]

execute at @e[tag=braindamage] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=28}] Team run scoreboard players set @s CC_mindrot 100
execute at @e[tag=braindamage] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=28}] Team run effect give @s glowing 5 1 true
execute at @e[tag=braindamage] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=28}] Team run kill @e[dx=0,dy=0,dz=0,tag=braindamage]

execute at @a[scores={CC_mindrot=1..}] run particle minecraft:block{block_state:{Name:"minecraft:diamond_block"}} ~ ~1.6 ~ 0.3 0.1 0.3 0.1 2 force

scoreboard players set @a[scores={universal_death=1..}] CC_mindrot 0


# operator

scoreboard players set @a[scores={s0_timer=1,char=28}] spellCD0 60
scoreboard players add @a[scores={s0_timer=1..,char=28}] s0_timer 1
scoreboard players set @a[scores={s0_timer=61..,char=28}] s0_timer 0

scoreboard players set @a[scores={s1_timer=1,char=28}] spellCD1 300
scoreboard players add @a[scores={s1_timer=1..,char=28}] s1_timer 1
scoreboard players set @a[scores={s1_timer=301..,char=28}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=28}] spellCD2 140
scoreboard players add @a[scores={s2_timer=1..,char=28}] s2_timer 1
scoreboard players set @a[scores={s2_timer=141..,char=28}] s2_timer 0


execute as @a[scores={char=28,s0_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:0b}]}] run clear @a[scores={char=28}] warped_fungus_on_a_stick[custom_data={s0:1}]
item replace entity @a[scores={char=28,s0_timer=0,CC_silence=0}] hotbar.0 with warped_fungus_on_a_stick[custom_data={s0:1},minecraft:item_model="minecraft:flower_banner_pattern",minecraft:custom_name={text:"Overload",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=28,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=28}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=28,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:heart_of_the_sea",minecraft:custom_name={text:"Anguish Given Focus",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=28,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=28}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=28,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:glow_squid_spawn_egg",minecraft:custom_name={text:"Brain Damage",color:"dark_aqua",bold:1b}] 1



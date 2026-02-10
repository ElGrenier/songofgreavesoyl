kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_hoe"}}]


#armguard


effect give @a[scores={char=45},tag=armguarded] absorption 3 1
execute at @a[scores={char=45},tag=armguarded] run particle dust{color:[1.0,0.67,0.0],scale:1} ~ ~1 ~ 0.3 0.5 0.3 0 50
tag @a remove armguarded

#snare

scoreboard players set @a[scores={char=45,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=45,s1_timer=1,CC_silence=1..}] s1_timer 100

execute at @a[scores={char=45,s1_timer=1,CC_silence=0}] run playsound block.enchantment_table.use master @a[distance=..10] ~ ~ ~ 1 2 1
execute at @a[scores={char=45,s1_timer=1,CC_silence=0}] run playsound entity.evoker.cast_spell master @a[distance=..10] ~ ~ ~ 1 1.2 1
execute at @a[scores={char=45,s1_timer=1,CC_silence=0}] run playsound entity.allay.ambient_without_item master @a[distance=..10] ~ ~ ~ 1 2 1
execute at @a[scores={char=45,s1_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["fate_snare","entities_stargazer"]}
execute at @a[scores={char=45,s1_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["fate_snare_visual","entities_stargazer"]}
scoreboard players operation @e[tag=projectile,tag=fate_snare] Team = @p[scores={char=45}] Team
tp @e[tag=fate_snare,limit=1] @a[scores={char=45,s1_timer=1},limit=1]
execute at @a[scores={char=45,s1_timer=1,CC_silence=0}] as @e[tag=fate_snare] at @s run tp @s ~ ~1.2 ~
execute as @e[tag=fate_snare] at @s run tp @s ^ ^ ^0.7


execute at @e[tag=fate_snare] run particle enchanted_hit ~ ~ ~ 0.1 0.1 0.1 0 4
execute at @e[tag=fate_snare] run particle sculk_charge_pop ~ ~ ~ 0.3 0.3 0.3 0 14

execute at @e[tag=fate_snare] positioned ~-0.75 ~-0.75 ~-0.75 as @e[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target,limit=1] unless score @s Team = @p[scores={char=45}] Team run scoreboard players set @s fate_snared 1

execute at @a[scores={char=45,s1_timer=20..}] run kill @e[tag=fate_snare]

execute as @e[tag=fate_snare] at @s run tp @e[tag=fate_snare_visual] ~ ~ ~
execute as @e[tag=fate_snare_visual] at @s run tp @s ~ ~ ~ ~-20 ~
execute at @e[tag=fate_snare_visual] run particle enchanted_hit ^1 ^ ^ 0.1 0.1 0.1 0 30
execute at @e[tag=fate_snare_visual] run particle enchanted_hit ^-1 ^ ^ 0.1 0.1 0.1 0 30
execute unless entity @e[tag=fate_snare] run kill @e[tag=fate_snare_visual]

scoreboard players add @e[scores={fate_snared=1..}] fate_snared 1
execute at @e[scores={fate_snared=2},tag=valid_spell_target] run tag @a[scores={char=45}] add armguarded
execute at @e[scores={fate_snared=1..30},tag=valid_spell_target] run playsound block.enchantment_table.use master @a[distance=..10] ~ ~ ~ 0.3 0.1 1
execute at @e[scores={fate_snared=1..5}] run kill @e[tag=fate_snare]

execute at @e[scores={fate_snared=1..}] run particle enchant ~ ~ ~ 0.5 0.5 0.5 0.1 20
execute at @e[scores={fate_snared=1..}] run particle enchanted_hit ~ ~ ~ 1 0.5 1 0.1 6
execute at @e[scores={fate_snared=20..}] run particle sculk_charge_pop ~ ~ ~ 0.5 1 0.5 0.001 16

execute at @e[scores={fate_snared=30}] run particle sonic_boom ~ ~1 ~ 0.3 0.5 0.3 0.01 5
execute at @e[scores={fate_snared=40}] run playsound entity.allay.hurt master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @e[scores={fate_snared=40}] run particle enchant ~ ~1 ~ 3 0.3 3 0.1 300

execute at @e[scores={fate_snared=40}] run summon marker ~ ~0.5 ~ {Tags:["snare_explosion_visual_core","snare_explosion_visuals","entities_stargazer"]}
execute at @e[scores={fate_snared=40}] run summon marker ~0.5 ~0.5 ~ {Tags:["blessing_visual_1","snare_explosion_visuals","entities_stargazer"]}
execute at @e[scores={fate_snared=40}] run summon marker ~-0.5 ~0.5 ~ {Tags:["blessing_visual_2","snare_explosion_visuals","entities_stargazer"]}
execute at @e[scores={fate_snared=40}] run summon marker ~ ~0.5 ~0.5 {Tags:["blessing_visual_3","snare_explosion_visuals","entities_stargazer"]}
execute at @e[scores={fate_snared=40}] run summon marker ~ ~0.5 ~-0.5 {Tags:["blessing_visual_4","snare_explosion_visuals","entities_stargazer"]}

execute at @e[scores={fate_snared=40}] as @e[distance=..4,tag=valid_spell_target] unless score @s Team = @p[scores={char=45}] Team run damage @s 6 generic by @p[scores={char=45}] from @p[scores={char=45}]

execute at @e[tag=snare_explosion_visuals,tag=!snare_explosion_visual_core] run particle sculk_charge_pop ~ ~0.2 ~ 0.1 0.1 0.1 0.001 15
execute as @e[tag=snare_explosion_visuals,tag=!snare_explosion_visual_core] at @s run tp @s ~ ~ ~ facing entity @e[tag=snare_explosion_visual_core,limit=1]
execute as @e[tag=snare_explosion_visuals,tag=!snare_explosion_visual_core] store result entity @s Rotation[1] float 1 run clear
execute as @e[tag=snare_explosion_visuals,tag=!snare_explosion_visual_core] at @s run tp @s ^-0.3 ^ ^-0.07
execute at @e[tag=snare_explosion_visuals,tag=!snare_explosion_visual_core] run particle sculk_charge_pop ~ ~0.2 ~ 0.1 0.1 0.1 0.001 15
execute as @e[tag=snare_explosion_visuals,tag=!snare_explosion_visual_core] at @s run tp @s ^-0.3 ^ ^-0.07
execute at @e[tag=snare_explosion_visuals,tag=!snare_explosion_visual_core] run particle sculk_charge_pop ~ ~0.2 ~ 0.1 0.1 0.1 0.001 15
execute as @e[tag=snare_explosion_visuals,tag=!snare_explosion_visual_core] at @s run tp @s ^-0.3 ^ ^-0.07
execute at @e[tag=snare_explosion_visuals,tag=!snare_explosion_visual_core] run particle sculk_charge_pop ~ ~0.2 ~ 0.1 0.1 0.1 0.001 15
execute as @e[tag=snare_explosion_visuals,tag=!snare_explosion_visual_core] at @s run tp @s ^-0.3 ^ ^-0.07


scoreboard players add @e[tag=snare_explosion_visuals] fate_snared 1
kill @e[tag=snare_explosion_visuals,scores={fate_snared=11..}]

scoreboard players set @e[scores={fate_snared=41..}] fate_snared 0


#gravity field

scoreboard players set @a[scores={char=45,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=45,s2_timer=1,CC_silence=1..}] s2_timer 220

execute at @a[scores={char=45,s2_timer=2,CC_silence=0}] run playsound block.copper_chest.open master @a[distance=..10] ~ ~ ~ 1 1.2 1
execute at @a[scores={char=45,s2_timer=2,CC_silence=0}] run playsound block.enchantment_table.use master @a[distance=..10] ~ ~ ~ 0.5 2 1
execute at @a[scores={char=45,s2_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["orrery","entities_stargazer"]}
tp @e[tag=orrery,limit=1] @a[scores={char=45,s2_timer=1},limit=1]

clear @a[scores={char=45,s2_timer=1,CC_silence=0}] *[custom_data={s2:1}]

execute store result entity @e[tag=orrery,limit=1] Rotation[1] float 1 run clear

execute at @e[tag=orrery] unless entity @e[tag=orrery_visual_core] run summon marker ~ ~ ~ {Tags:["orrery_visual_core","entities_stargazer"]}
execute at @e[tag=orrery] unless entity @e[tag=orrery_vis_main_part] run summon block_display ~ ~ ~ {Tags:["orrery_vis_main_part","orrery_visuals","entities_stargazer"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5,0.5f,0.5f]},block_state:{Name:"minecraft:beacon"}}
execute at @e[tag=orrery] unless entity @e[tag=orrery_visual_2] run summon block_display ~ ~ ~ {Tags:["orrery_visual_2","orrery_visuals","entities_stargazer"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.15f,-0.15f,-0.15f],scale:[0.3f,0.3f,0.3f]},block_state:{Name:"minecraft:waxed_copper_bulb"}}
execute at @e[tag=orrery] unless entity @e[tag=orrery_visual_3] run summon block_display ~ ~ ~ {Tags:["orrery_visual_3","orrery_visuals","entities_stargazer"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.15f,-0.15f,-0.15f],scale:[0.3f,0.3f,0.3f]},block_state:{Name:"minecraft:waxed_copper_bulb"}}
execute at @e[tag=orrery] unless entity @e[tag=orrery_visual_4] run summon block_display ~ ~ ~ {Tags:["orrery_visual_4","orrery_visuals","entities_stargazer"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.15f,-0.05f],scale:[0.1f,0.3f,0.1f]},block_state:{Name:"minecraft:cut_copper"}}
execute at @e[tag=orrery] unless entity @e[tag=orrery_visual_5] run summon block_display ~ ~ ~ {Tags:["orrery_visual_5","orrery_visuals","entities_stargazer"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.15f,-0.05f],scale:[0.1f,0.3f,0.1f]},block_state:{Name:"minecraft:cut_copper"}}
execute at @e[tag=orrery] unless entity @e[tag=orrery_visual_6] run summon block_display ~ ~ ~ {Tags:["orrery_visual_6","orrery_visuals","entities_stargazer"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.05f,-0.25f],scale:[0.1f,0.1f,0.5f]},block_state:{Name:"minecraft:cut_copper"}}
execute at @e[tag=orrery] unless entity @e[tag=orrery_visual_7] run summon block_display ~ ~ ~ {Tags:["orrery_visual_7","orrery_visuals","entities_stargazer"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.05f,-0.25f],scale:[0.1f,0.1f,0.5f]},block_state:{Name:"minecraft:cut_copper"}}
execute at @e[tag=orrery] unless entity @e[tag=orrery_visual_8] run summon block_display ~ ~ ~ {Tags:["orrery_visual_8","orrery_visuals","entities_stargazer"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.3f,-0.1f],scale:[0.2f,0.6f,0.2f]},block_state:{Name:"minecraft:chiseled_copper"}}


execute as @e[tag=orrery_pull] at @s run tp @e[tag=orrery_visual_core] ~ ~-0.5 ~
execute as @e[tag=orrery] at @s run tp @e[tag=orrery_visual_core] ~ ~ ~


execute as @e[tag=orrery_visual_core] at @s run tp @e[tag=orrery_vis_main_part] ~ ~1.1 ~
execute as @e[tag=orrery_visual_core] at @s run tp @e[tag=orrery_visual_8] ~ ~0.6 ~
execute as @e[tag=orrery_vis_main_part] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=orrery_visual_core] at @s run tp @s ~ ~ ~ ~-5 ~
execute as @e[tag=orrery_visual_core] at @s run tp @e[tag=orrery_visual_2] ^-0.5 ^1 ^
execute as @e[tag=orrery_visual_core] at @s run tp @e[tag=orrery_visual_3] ^0.5 ^1 ^
execute as @e[tag=orrery_visual_core] at @s run tp @e[tag=orrery_visual_4] ^-0.5 ^0.8 ^
execute as @e[tag=orrery_visual_core] at @s run tp @e[tag=orrery_visual_5] ^0.5 ^0.8 ^
execute as @e[tag=orrery_visual_core] at @s run tp @e[tag=orrery_visual_6] ^-0.2 ^0.7 ^
execute as @e[tag=orrery_visual_core] at @s run tp @e[tag=orrery_visual_7] ^0.2 ^0.7 ^


execute as @e[tag=orrery_visuals,tag=!orrery_vis_main_part] at @s run tp @s ~ ~ ~ facing entity @e[tag=orrery_visual_core,limit=1]
execute as @e[tag=orrery_visuals] run execute store result entity @s Rotation[1] float 1 run clear

execute at @a[scores={char=45,s2_timer=1..80,CC_silence=0}] as @e[tag=orrery] at @s if block ^ ^1 ^1 #minecraft:dash run tp @s ^ ^ ^0.2
execute at @a[scores={char=45,s2_timer=81..100,CC_silence=0}] as @e[tag=orrery] at @s if block ^ ^1 ^1 #minecraft:dash run tp @s ^ ^ ^0.1
execute at @a[scores={char=45,s2_timer=81..,CC_silence=0}] as @e[tag=orrery] at @s if block ^ ^1 ^1 #minecraft:dash run tp @s ^ ^ ^0.05


execute as @e[tag=orrery] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~0.8 ~
execute as @e[tag=orrery] at @s if block ~ ~-0.5 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=orrery] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~

execute at @e[tag=orrery] run particle enchanted_hit ~ ~1 ~ 0.3 0.4 0.3 0.1 2
execute at @e[tag=orrery] run particle sculk_charge_pop ~ ~1 ~ 0.4 0.5 0.4 0.1 3


execute at @a[scores={char=45,s2_timer=120..}] run kill @e[tag=orrery]
execute at @a[scores={char=45,s2_timer=120..}] run kill @e[tag=orrery_visuals]

clear @a[scores={char=45,s2_timer_recast=1,CC_silence=0}] *[custom_data={s2:2}]

execute at @a[scores={s2_timer_recast=1,CC_silence=0}] at @e[tag=orrery] run summon marker ~ ~0.5 ~ {Tags:["orrery_pull","entities_stargazer"]}
execute at @a[scores={s2_timer_recast=1,CC_silence=0}] run kill @e[tag=orrery]
execute at @a[scores={s2_timer_recast=1,CC_silence=0}] at @e[tag=orrery_pull] run playsound block.beacon.deactivate master @a[distance=..15] ~ ~ ~ 0.4 0.8 1
execute at @a[scores={s2_timer_recast=1,CC_silence=0}] at @e[tag=orrery_pull] run playsound entity.evoker.cast_spell master @a[distance=..15] ~ ~ ~ 1 0.7 1
execute at @a[scores={s2_timer_recast=1,CC_silence=0}] at @e[tag=orrery_pull] run playsound block.glass.break master @a[distance=..15] ~ ~ ~ 1 0.5 1


scoreboard players add @e[tag=orrery_pull] s0_timer 1
scoreboard players add @e[tag=orrery_pull_visuals] s0_timer 1

execute at @e[tag=orrery_pull,scores={s0_timer=1}] run particle sculk_charge_pop ~ ~0.2 ~ 4 0.5 4 0.001 500

execute at @e[tag=orrery_pull,scores={s0_timer=3}] run summon block_display ~ ~ ~7 {Tags:["pull_wave_1","orrery_pull_visuals","entities_stargazer"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.25f,-0.5f],scale:[1.0,0.5f,1.0f]},block_state:{Name:"minecraft:cyan_stained_glass"}}
execute at @e[tag=orrery_pull,scores={s0_timer=3}] run summon block_display ~ ~ ~-7 {Tags:["pull_wave_1","orrery_pull_visuals","entities_stargazer"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.25f,-0.5f],scale:[1.0,0.5f,1.0f]},block_state:{Name:"minecraft:cyan_stained_glass"}}
execute at @e[tag=orrery_pull,scores={s0_timer=3}] run summon block_display ~7 ~ ~ {Tags:["pull_wave_1","orrery_pull_visuals","entities_stargazer"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.25f,-0.5f],scale:[1.0,0.5f,1.0f]},block_state:{Name:"minecraft:cyan_stained_glass"}}
execute at @e[tag=orrery_pull,scores={s0_timer=3}] run summon block_display ~-7 ~ ~ {Tags:["pull_wave_1","orrery_pull_visuals","entities_stargazer"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.25f,-0.5f],scale:[1.0,0.5f,1.0f]},block_state:{Name:"minecraft:cyan_stained_glass"}}

execute at @e[tag=orrery_pull,scores={s0_timer=3}] run summon block_display ~7 ~ ~2 {Tags:["pull_wave_1","orrery_pull_visuals","entities_stargazer"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.25f,-0.5f],scale:[1.0,0.5f,1.0f]},block_state:{Name:"minecraft:cyan_stained_glass"}}
execute at @e[tag=orrery_pull,scores={s0_timer=3}] run summon block_display ~6 ~ ~4 {Tags:["pull_wave_1","orrery_pull_visuals","entities_stargazer"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.25f,-0.5f],scale:[1.0,0.5f,1.0f]},block_state:{Name:"minecraft:cyan_stained_glass"}}
execute at @e[tag=orrery_pull,scores={s0_timer=3}] run summon block_display ~4 ~ ~6 {Tags:["pull_wave_1","orrery_pull_visuals","entities_stargazer"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.25f,-0.5f],scale:[1.0,0.5f,1.0f]},block_state:{Name:"minecraft:cyan_stained_glass"}}
execute at @e[tag=orrery_pull,scores={s0_timer=3}] run summon block_display ~2 ~ ~7 {Tags:["pull_wave_1","orrery_pull_visuals","entities_stargazer"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.25f,-0.5f],scale:[1.0,0.5f,1.0f]},block_state:{Name:"minecraft:cyan_stained_glass"}}

execute at @e[tag=orrery_pull,scores={s0_timer=3}] run summon block_display ~7 ~ ~-2 {Tags:["pull_wave_1","orrery_pull_visuals","entities_stargazer"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.25f,-0.5f],scale:[1.0,0.5f,1.0f]},block_state:{Name:"minecraft:cyan_stained_glass"}}
execute at @e[tag=orrery_pull,scores={s0_timer=3}] run summon block_display ~6 ~ ~-4 {Tags:["pull_wave_1","orrery_pull_visuals","entities_stargazer"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.25f,-0.5f],scale:[1.0,0.5f,1.0f]},block_state:{Name:"minecraft:cyan_stained_glass"}}
execute at @e[tag=orrery_pull,scores={s0_timer=3}] run summon block_display ~4 ~ ~-6 {Tags:["pull_wave_1","orrery_pull_visuals","entities_stargazer"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.25f,-0.5f],scale:[1.0,0.5f,1.0f]},block_state:{Name:"minecraft:cyan_stained_glass"}}
execute at @e[tag=orrery_pull,scores={s0_timer=3}] run summon block_display ~2 ~ ~-7 {Tags:["pull_wave_1","orrery_pull_visuals","entities_stargazer"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.25f,-0.5f],scale:[1.0,0.5f,1.0f]},block_state:{Name:"minecraft:cyan_stained_glass"}}

execute at @e[tag=orrery_pull,scores={s0_timer=3}] run summon block_display ~-7 ~ ~2 {Tags:["pull_wave_1","orrery_pull_visuals","entities_stargazer"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.25f,-0.5f],scale:[1.0,0.5f,1.0f]},block_state:{Name:"minecraft:cyan_stained_glass"}}
execute at @e[tag=orrery_pull,scores={s0_timer=3}] run summon block_display ~-6 ~ ~4 {Tags:["pull_wave_1","orrery_pull_visuals","entities_stargazer"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.25f,-0.5f],scale:[1.0,0.5f,1.0f]},block_state:{Name:"minecraft:cyan_stained_glass"}}
execute at @e[tag=orrery_pull,scores={s0_timer=3}] run summon block_display ~-4 ~ ~6 {Tags:["pull_wave_1","orrery_pull_visuals","entities_stargazer"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.25f,-0.5f],scale:[1.0,0.5f,1.0f]},block_state:{Name:"minecraft:cyan_stained_glass"}}
execute at @e[tag=orrery_pull,scores={s0_timer=3}] run summon block_display ~-2 ~ ~7 {Tags:["pull_wave_1","orrery_pull_visuals","entities_stargazer"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.25f,-0.5f],scale:[1.0,0.5f,1.0f]},block_state:{Name:"minecraft:cyan_stained_glass"}}

execute at @e[tag=orrery_pull,scores={s0_timer=3}] run summon block_display ~-7 ~ ~-2 {Tags:["pull_wave_1","orrery_pull_visuals","entities_stargazer"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.25f,-0.5f],scale:[1.0,0.5f,1.0f]},block_state:{Name:"minecraft:cyan_stained_glass"}}
execute at @e[tag=orrery_pull,scores={s0_timer=3}] run summon block_display ~-6 ~ ~-4 {Tags:["pull_wave_1","orrery_pull_visuals","entities_stargazer"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.25f,-0.5f],scale:[1.0,0.5f,1.0f]},block_state:{Name:"minecraft:cyan_stained_glass"}}
execute at @e[tag=orrery_pull,scores={s0_timer=3}] run summon block_display ~-4 ~ ~-6 {Tags:["pull_wave_1","orrery_pull_visuals","entities_stargazer"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.25f,-0.5f],scale:[1.0,0.5f,1.0f]},block_state:{Name:"minecraft:cyan_stained_glass"}}
execute at @e[tag=orrery_pull,scores={s0_timer=3}] run summon block_display ~-2 ~ ~-7 {Tags:["pull_wave_1","orrery_pull_visuals","entities_stargazer"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.25f,-0.5f],scale:[1.0,0.5f,1.0f]},block_state:{Name:"minecraft:cyan_stained_glass"}}

execute at @e[tag=orrery_pull_visuals] run particle sonic_boom ~ ~-0.45 ~ 0.2 0 0.2 0.00 1

execute as @e[tag=orrery_pull_visuals] at @s run tp @s ~ ~ ~ facing entity @e[tag=orrery_pull,limit=1]
execute as @e[tag=orrery_pull_visuals] run execute store result entity @s Rotation[1] float 1 run clear
execute as @e[tag=orrery_pull_visuals] at @s run tp @s ^ ^ ^1.1


execute at @e[tag=orrery_pull,scores={s0_timer=1..2}] as @e[distance=..8,tag=valid_spell_target] unless score @s CC_intangible matches 1.. unless score @s Team = @p[scores={char=45}] Team run tag @e[scores={char=45}] add armguarded
execute at @e[tag=orrery_pull,scores={s0_timer=1..2}] as @e[distance=..8,tag=valid_spell_target] unless score @s CC_intangible matches 1.. unless score @s Team = @p[scores={char=45}] Team run effect give @s slowness 2 3

execute at @e[tag=orrery_pull,scores={s0_timer=9..}] run kill @e[tag=orrery_visuals]
execute at @e[tag=orrery_pull,scores={s0_timer=9..}] as @e[distance=..8,tag=valid_spell_target] unless score @s CC_intangible matches 1.. unless score @s Team = @p[scores={char=45}] Team run tp @s ~ ~0.5 ~
execute at @e[tag=orrery_pull,scores={s0_timer=9..}] run particle enchanted_hit ~ ~0.1 ~ 4 0.1 4 0.1 100
execute at @e[tag=orrery_pull,scores={s0_timer=9..}] run particle enchanted_hit ~ ~ ~ 0.2 1.2 0.2 0.1 80
execute at @e[tag=orrery_pull,scores={s0_timer=9..}] run particle block{block_state:{Name:"minecraft:cyan_stained_glass"}} ~ ~ ~ 1 1 1 0.1 100


kill @e[tag=orrery_pull_visuals,scores={s0_timer=6..}]
kill @e[tag=orrery_pull,scores={s0_timer=9..}]


# stargazer

scoreboard players set @a[scores={s1_timer=1,char=45}] spellCD1 120
scoreboard players add @a[scores={s1_timer=1..,char=45}] s1_timer 1
scoreboard players set @a[scores={s1_timer=121..,char=45}] s1_timer 0

scoreboard players set @a[scores={s2_timer=120,char=45}] spellCD2 120
scoreboard players add @a[scores={s2_timer=1..,char=45}] s2_timer 1
scoreboard players add @a[scores={s2_timer_recast=1..,char=45}] s2_timer_recast 1
scoreboard players set @a[scores={s2_timer=241..,char=45}] s2_timer_recast 0
scoreboard players set @a[scores={s2_timer=241..,char=45}] s2_timer 0

execute as @a[scores={char=45}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:golden_hoe",Slot:0b}]}] run clear @a[scores={char=45}] golden_hoe
item replace entity @a[scores={char=45}] hotbar.0 with golden_hoe[minecraft:custom_name={bold:1b,color:"gray",text:"Staff"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.7d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=0.8] 1

execute as @a[scores={char=45,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=45}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=45,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:enchantments={"minecraft:power":1},minecraft:item_model="minecraft:firework_star",minecraft:custom_name={text:"Arcane Snare",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=45,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=45}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=45,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:beacon",minecraft:custom_name={text:"Gravity Field",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=45,s2_timer=10..119,s2_timer_recast=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=45}] warped_fungus_on_a_stick[custom_data={s2:2}]
item replace entity @a[scores={char=45,s2_timer=10..119,s2_timer_recast=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:2},minecraft:item_model="minecraft:blue_stained_glass",minecraft:custom_name={text:"Pull",color:"dark_aqua",bold:1b}] 1
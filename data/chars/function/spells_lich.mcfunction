kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:bone"}}]

scoreboard players set @e[tag=!lich_damage_initiated] lich_rebar_count 0
scoreboard players set @e[tag=!lich_damage_initiated] lich_scrap_damage 0
scoreboard players set @e[tag=!lich_damage_initiated] lich_scrap_damage2 0
tag @e add lich_damage_initiated


# magic beyond death

execute at @a[scores={char=66,s1_timer=2,CC_silence=0,HP=4..}] run damage @p[scores={char=66}] 3 generic
execute at @a[scores={char=66,s1_timer=2,CC_silence=0,HP=3}] run damage @p[scores={char=66}] 2 generic
execute at @a[scores={char=66,s1_timer=2,CC_silence=0,HP=2}] run damage @p[scores={char=66}] 1 generic

execute at @a[scores={char=66,s2_timer=1,CC_silence=0,HP=4..}] run damage @p[scores={char=66}] 3 generic
execute at @a[scores={char=66,s2_timer=1,CC_silence=0,HP=3}] run damage @p[scores={char=66}] 2 generic
execute at @a[scores={char=66,s2_timer=1,CC_silence=0,HP=2}] run damage @p[scores={char=66}] 1 generic

scoreboard players remove @a[scores={lich_takedown=1..}] lich_takedown 1

execute at @a[scores={universal_hit=1..,char=66}] as @a[distance=..5] unless score @s Team = @p[scores={char=66}] Team run scoreboard players set @s lich_takedown 100
#execute at @a[scores={universal_hit=1..,char=66},team=purple] run scoreboard players set @p[distance=..5,team=yellow] lich_takedown 100

execute at @a[scores={universal_death=1..,lich_takedown=1..}] run tag @a[scores={char=66}] add lich_heal
scoreboard players set @a[scores={universal_death=1..,lich_takedown=1..}] lich_takedown 0

effect give @a[tag=lich_heal,scores={char=66}] regeneration 2 3
execute at @a[tag=lich_heal,scores={char=66}] run particle enchanted_hit ~ ~1 ~ 0.7 0.6 0.7 0.1 30
execute at @a[tag=lich_heal,scores={char=66}] run particle item{item:"raw_iron"} ~ ~1 ~ 0.5 0.5 0.5 0.01 5

execute at @a[tag=lich_heal] run particle damage_indicator ~ ~0.5 ~ 0.3 0.8 0.3 0.1 10
execute at @a[tag=lich_heal] run particle glow ~ ~1 ~ 0.3 0.4 0.3 0.001 10
execute at @a[tag=lich_heal] run playsound entity.player.breath master @a ~ ~ ~ 1 0.8 1

tag @a[tag=lich_heal,scores={char=66}] remove lich_heal

# impale

scoreboard players set @a[scores={char=66,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=66,s1_timer=1,CC_silence=1..}] s1_timer 80



execute at @a[scores={char=66,s1_timer=1,CC_silence=0}] run playsound item.trident.throw master @a[distance=..10] ~ ~ ~ 1 0.4 1
#execute at @a[scores={char=66,s1_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["lich_impale_rebar","entities_lich"],NoGravity:0b}
execute at @a[scores={char=66,s1_timer=1,CC_silence=0}] run summon item_display ~ ~ ~ {Tags:["lich_impale_rebar","entities_lich"],item:{count:1,id:"minecraft:andesite_wall"},transformation:{left_rotation:[0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.3,1.6,0.25],translation:[0.0f,0.0f,0.0f]}}
scoreboard players operation @e[tag=projectile,tag=lich_impale_rebar] Team = @p[scores={char=66}] Team
tp @e[tag=lich_impale_rebar,limit=1] @a[scores={char=66,s1_timer=2},limit=1]
execute at @a[scores={char=66,s1_timer=2,CC_silence=0}] as @e[tag=lich_impale_rebar,limit=1] at @s run tp @s ~ ~1.2 ~

execute at @e[tag=lich_impale_rebar] run particle crit ^ ^ ^1 0.1 0.1 0.1 0.01 1 force
execute at @e[tag=lich_impale_rebar] run particle crit ^ ^ ^0.5 0.1 0.1 0.1 0.01 1 force
execute at @e[tag=lich_impale_rebar] run particle crit ^ ^ ^-0.5 0.1 0.1 0.1 0.01 1 force
execute at @e[tag=lich_impale_rebar] run particle crit ^ ^ ^-1 0.1 0.1 0.1 0.01 1 force

execute at @e[tag=lich_impale_rebar] run particle glow ^ ^ ^1 0.4 0.4 0.4 0.1 1
execute at @e[tag=lich_impale_rebar] run particle glow ^ ^ ^ 0.4 0.4 0.4 0.1 1
execute as @e[tag=lich_impale_rebar] at @s run tp @s ^ ^ ^0.7
execute at @a[scores={char=66,s1_timer=20..}] run kill @e[tag=lich_impale_rebar]

execute at @e[tag=lich_impale_rebar] positioned ~-0.75 ~-0.75 ~-0.75 as @e[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=66}] Team run tag @s add lich_impaled

execute at @e[tag=lich_impaled] run kill @e[tag=lich_impale_rebar]
execute at @e[tag=lich_impaled] run playsound item.trident.hit master @a[distance=..10] ~ ~ ~ 1 0.5 1
damage @e[tag=lich_impaled,scores={lich_rebar_count=0},limit=1] 5 generic by @p[scores={char=66}] from @p[scores={char=66}]
damage @e[tag=lich_impaled,scores={lich_rebar_count=1},limit=1] 6 generic by @p[scores={char=66}] from @p[scores={char=66}]
damage @e[tag=lich_impaled,scores={lich_rebar_count=2},limit=1] 7 generic by @p[scores={char=66}] from @p[scores={char=66}]
damage @e[tag=lich_impaled,scores={lich_rebar_count=3..},limit=1] 8 generic by @p[scores={char=66}] from @p[scores={char=66}]
effect give @e[tag=lich_impaled,scores={lich_rebar_count=0}] slowness 1 1 true
effect give @e[tag=lich_impaled,scores={lich_rebar_count=1}] slowness 2 1 true
effect give @e[tag=lich_impaled,scores={lich_rebar_count=2}] slowness 3 1 true
effect give @e[tag=lich_impaled,scores={lich_rebar_count=3..}] slowness 4 1 true
scoreboard players add @e[tag=lich_impaled] lich_rebar_count 1
scoreboard players set @e[tag=lich_impaled] lich_rebar_decay 0
tag @e remove lich_impaled

scoreboard players set @a[scores={death_dash_reset=1..}] lich_rebar_count 0
scoreboard players set @a[scores={death_dash_reset=1..}] lich_rebar_decay 0


scoreboard players add @e[scores={lich_rebar_count=1..}] lich_rebar_decay 1
scoreboard players remove @e[scores={lich_rebar_decay=140..}] lich_rebar_count 1
scoreboard players set @e[scores={lich_rebar_decay=140..}] lich_rebar_decay 0

scoreboard players set @e[scores={lich_rebar_count=4..}] lich_rebar_decay 3

execute at @e[scores={lich_rebar_count=1..}] unless entity @e[tag=rebar_visual_1,distance=..1.5] run summon item_display ~ ~ ~ {Tags:["rebar_visuals","rebar_visual_1","entities_lich"],item:{count:1,id:"minecraft:andesite"},transformation:{left_rotation:[-0.09600176f,0.52651286f,0.05998855f,0.84259677f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.15f,0.15f,1.8f],translation:[0.0f,0.0f,0.0f]}}
execute at @e[scores={lich_rebar_count=2..}] unless entity @e[tag=rebar_visual_2,distance=..1.5] run summon item_display ~ ~ ~ {Tags:["rebar_visuals","rebar_visual_2","entities_lich"],item:{count:1,id:"minecraft:andesite"},transformation:{left_rotation:[0.28614527f,0.7432524f,-0.18080965f,0.57706547f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.15f,0.15f,1.8f],translation:[0.0f,0.1f,0.0f]}}
execute at @e[scores={lich_rebar_count=3..}] unless entity @e[tag=rebar_visual_3,distance=..1.5] run summon item_display ~ ~ ~ {Tags:["rebar_visuals","rebar_visual_3","entities_lich"],item:{count:1,id:"minecraft:andesite"},transformation:{left_rotation:[0.06514739f,0.98355645f,-0.070261106f,0.15308785f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.15f,0.15f,1.8f],translation:[0.0f,0.2f,0.0f]}}

execute at @e[scores={lich_rebar_count=1..}] run tp @e[tag=rebar_visuals,distance=..1.5] ~ ~1 ~

execute as @e[tag=rebar_visual_1] at @s unless entity @e[scores={lich_rebar_count=1..},distance=..1.5] run kill @s
execute as @e[tag=rebar_visual_2] at @s unless entity @e[scores={lich_rebar_count=2..},distance=..1.5] run kill @s
execute as @e[tag=rebar_visual_3] at @s unless entity @e[scores={lich_rebar_count=3..},distance=..1.5] run kill @s


# scrap harvest

execute unless entity @e[tag=lich_scap_return_readjust] run summon marker ~ ~ ~ {Tags:["lich_scap_return_readjust","entities_lich"]}
execute as @p[scores={char=66}] at @s run tp @e[tag=lich_scap_return_readjust] ~ ~1 ~

scoreboard players set @a[scores={char=66,s1_timer_2=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=66,s1_timer_2=1,CC_silence=1..}] s1_timer 40


execute at @a[scores={char=66,s2_timer=1,CC_silence=0}] run playsound item.trident.return master @a[distance=..10] ~ ~ ~ 0.8 0.8 1
execute at @a[scores={char=66,s2_timer=1,CC_silence=0}] run playsound item.armor.equip_chain master @a[distance=..10] ~ ~ ~ 1 0.5 1
execute at @a[scores={char=66,s2_timer=1,CC_silence=0}] run summon marker ~ ~1 ~ {Tags:["scrap_harvest","projectile","scrap_wave","entities_lich"]}
scoreboard players operation @e[tag=projectile,tag=scrap_harvest] Team = @p[scores={char=66}] Team
tp @e[tag=scrap_harvest,limit=1] @a[scores={char=66,s2_timer=1},limit=1]
execute at @a[scores={char=66,s2_timer=1,CC_silence=0}] as @e[tag=scrap_harvest,limit=1] at @s run tp @s ~ ~1 ~

scoreboard players add @e[tag=scrap_harvest] s2_timer 1
scoreboard players add @e[tag=scrap_harvest_return] s2_timer 1

#execute as @e[tag=scrap_harvest,scores={s2_timer=1},limit=1] run tp @a[scores={char=66,s2_timer=1},limit=1]

execute as @e[tag=scrap_harvest,scores={s2_timer=2..10}] at @s run tp @s ^ ^ ^0.4
execute as @e[tag=scrap_harvest,scores={s2_timer=11..20}] at @s run tp @s ^ ^ ^0.35
execute as @e[tag=scrap_harvest,scores={s2_timer=21..}] at @s run tp @s ^ ^ ^0.3

execute at @e[tag=scrap_harvest,scores={s2_timer=30..},limit=1] run summon marker ~ ~ ~ {Tags:["scrap_harvest_return","scrap_wave","entities_lich"]}
kill @e[tag=scrap_harvest,scores={s2_timer=30..},limit=1]

execute as @e[tag=scrap_harvest_return] at @s run tp @s ~ ~ ~ facing entity @e[tag=lich_scap_return_readjust,limit=1]
execute as @e[tag=scrap_harvest_return,scores={s2_timer=2..10}] at @s run tp @s ^ ^ ^0.4
execute as @e[tag=scrap_harvest_return,scores={s2_timer=11..20}] at @s run tp @s ^ ^ ^0.45
execute as @e[tag=scrap_harvest_return,scores={s2_timer=21..}] at @s run tp @s ^ ^ ^0.5


execute as @e[tag=scrap_harvest_return] at @s if entity @e[distance=..1.5,scores={char=66}] run effect give @a[scores={char=66,lich_scrap_shield=1}] absorption 3 0
execute as @e[tag=scrap_harvest_return] at @s if entity @e[distance=..1.5,scores={char=66}] run effect give @a[scores={char=66,lich_scrap_shield=2}] absorption 4 1
execute as @e[tag=scrap_harvest_return] at @s if entity @e[distance=..1.5,scores={char=66}] run effect give @a[scores={char=66,lich_scrap_shield=3}] absorption 5 2
execute as @e[tag=scrap_harvest_return] at @s if entity @e[distance=..1.5,scores={char=66}] run effect give @a[scores={char=66,lich_scrap_shield=4}] absorption 6 2
execute as @e[tag=scrap_harvest_return] at @s if entity @e[distance=..1.5,scores={char=66}] run effect give @a[scores={char=66,lich_scrap_shield=5}] absorption 7 2
execute as @e[tag=scrap_harvest_return] at @s if entity @e[distance=..1.5,scores={char=66}] run effect give @a[scores={char=66,lich_scrap_shield=6}] absorption 8 2
execute as @e[tag=scrap_harvest_return] at @s if entity @e[distance=..1.5,scores={char=66}] run scoreboard players set @a[scores={char=66,lich_scrap_shield=1..}] lich_scrap_shield 0

execute as @e[tag=scrap_harvest_return] at @s if entity @e[distance=..1.5,scores={char=66}] run playsound item.armor.equip_netherite master @a[distance=..10] ~ ~ ~ 1 0.4 1
execute as @e[tag=scrap_harvest_return] at @s if entity @e[distance=..1.5,scores={char=66}] run playsound item.trident.return master @a[distance=..10] ~ ~ ~ 1 1.2 1
execute as @e[tag=scrap_harvest_return] at @s if entity @e[distance=..1.5,scores={char=66}] run kill @s


execute at @e[tag=scrap_wave] run particle crit ~ ~ ~ 0.8 0.7 0.8 0.1 20
execute at @e[tag=scrap_wave] run particle sweep_attack ~ ~ ~ 0.9 0.9 0.9 0.1 2
execute at @e[tag=scrap_wave] run particle glow ~ ~ ~ 0.8 0.7 0.8 0.1 3
#execute at @e[tag=scrap_wave] run particle block{block_state: 'minecraft:chain'} ~ ~ ~ 0.5 0.5 0.5 0.01 30
#execute at @e[tag=scrap_wave] run particle item{item:"raw_iron"} ~ ~1 ~ 0.8 0.8 0.8 0.01 5
#execute at @e[tag=scrap_wave] run playsound item.trident.throw master @a[distance=..12] ~ ~ ~ 0.1 0.1 1
execute at @e[tag=scrap_wave] run playsound item.armor.equip_chain master @a[distance=..10] ~ ~ ~ 0.3 0.5 1

execute at @e[tag=scrap_wave] unless entity @e[tag=vis_core_1,distance=..2] run summon marker ~ ~ ~ {Tags:["scrap_harvest_visual_core","vis_core_1","entities_lich"]}
execute at @e[tag=scrap_wave] unless entity @e[tag=vis_core_2,distance=..2] run summon marker ~ ~ ~ {Tags:["scrap_harvest_visual_core","vis_core_2","entities_lich"]}
execute at @e[tag=scrap_wave] run tp @e[tag=scrap_harvest_visual_core,distance=..2] ~ ~ ~
execute as @e[tag=vis_core_1] at @s run tp @s ~ ~ ~ ~-12 ~
execute as @e[tag=vis_core_2] at @s run tp @s ~ ~ ~ ~12 ~

execute at @e[tag=scrap_wave] unless entity @e[tag=scrap_1,distance=..2] run summon item_display ~ ~ ~ {Tags:["scrap_1","scrap_harvest_visuals","entities_lich"],item:{count:1,id:"minecraft:raw_iron"},transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],translation:[0.0f,0.0f,0.0f]}}
execute at @e[tag=scrap_wave] unless entity @e[tag=scrap_2,distance=..2] run summon item_display ~ ~ ~ {Tags:["scrap_2","scrap_harvest_visuals","entities_lich"],item:{count:1,id:"minecraft:raw_iron"},transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],translation:[0.0f,0.0f,0.0f]}}
execute at @e[tag=scrap_wave] unless entity @e[tag=scrap_3,distance=..2] run summon item_display ~ ~ ~ {Tags:["scrap_3","scrap_harvest_visuals","entities_lich"],item:{count:1,id:"minecraft:raw_iron"},transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],translation:[0.0f,0.0f,0.0f]}}
execute at @e[tag=scrap_wave] unless entity @e[tag=scrap_4,distance=..2] run summon item_display ~ ~ ~ {Tags:["scrap_4","scrap_harvest_visuals","entities_lich"],item:{count:1,id:"minecraft:raw_iron"},transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],translation:[0.0f,0.0f,0.0f]}}
execute at @e[tag=scrap_wave] unless entity @e[tag=scrap_5,distance=..2] run summon item_display ~ ~ ~ {Tags:["scrap_5","scrap_harvest_visuals","entities_lich"],item:{count:1,id:"minecraft:raw_iron"},transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],translation:[0.0f,0.0f,0.0f]}}
execute at @e[tag=scrap_wave] unless entity @e[tag=scrap_6,distance=..2] run summon item_display ~ ~ ~ {Tags:["scrap_6","scrap_harvest_visuals","entities_lich"],item:{count:1,id:"minecraft:raw_iron"},transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],translation:[0.0f,0.0f,0.0f]}}
execute at @e[tag=scrap_wave] unless entity @e[tag=scrap_7,distance=..2] run summon item_display ~ ~ ~ {Tags:["scrap_7","scrap_harvest_visuals","entities_lich"],item:{count:1,id:"minecraft:raw_iron"},transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],translation:[0.0f,0.0f,0.0f]}}
execute at @e[tag=scrap_wave] unless entity @e[tag=scrap_8,distance=..2] run summon item_display ~ ~ ~ {Tags:["scrap_8","scrap_harvest_visuals","entities_lich"],item:{count:1,id:"minecraft:raw_iron"},transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],translation:[0.0f,0.0f,0.0f]}}

execute as @e[tag=scrap_harvest_visuals] at @s run tp @s ~ ~ ~ facing entity @e[tag=scrap_harvest_visual_core,sort=nearest,limit=1]
execute as @e[tag=scrap_harvest_visuals] at @s run rotate @s ~ 0

execute as @e[tag=vis_core_1] at @s run tp @e[tag=scrap_1,distance=..2] ^1.5 ^0.5 ^
execute as @e[tag=vis_core_1] at @s run tp @e[tag=scrap_2,distance=..2] ^-1.5 ^0.5 ^
execute as @e[tag=vis_core_1] at @s run tp @e[tag=scrap_3,distance=..2] ^ ^0.5 ^1.5
execute as @e[tag=vis_core_1] at @s run tp @e[tag=scrap_4,distance=..2] ^ ^0.5 ^-1.5
execute as @e[tag=vis_core_2] at @s run tp @e[tag=scrap_5,distance=..2] ^1.5 ^-0.5 ^
execute as @e[tag=vis_core_2] at @s run tp @e[tag=scrap_6,distance=..2] ^-1.5 ^-0.5 ^
execute as @e[tag=vis_core_2] at @s run tp @e[tag=scrap_7,distance=..2] ^ ^-0.5 ^1.5
execute as @e[tag=vis_core_2] at @s run tp @e[tag=scrap_8,distance=..2] ^ ^-0.5 ^-1.5

execute as @e[tag=scrap_harvest_visual_core] at @s unless entity @e[tag=scrap_wave,distance=..2] run kill @s
execute as @e[tag=scrap_harvest_visuals] at @s unless entity @e[tag=scrap_wave,distance=..2] run kill @s

execute at @e[tag=scrap_harvest] positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=1,dz=1,tag=valid_spell_target,scores={lich_scrap_damage=0}] unless score @s Team = @p[scores={char=66}] Team run scoreboard players set @s lich_scrap_damage 1
execute at @e[tag=scrap_harvest] positioned ~-1 ~-1 ~-1 as @a[dx=1,dy=1,dz=1,tag=valid_spell_target] unless score @s Team = @p[scores={char=66}] Team run scoreboard players set @s lich_takedown 100

execute at @e[tag=scrap_harvest_return] positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=1,dz=1,tag=valid_spell_target,scores={lich_scrap_damage2=0}] unless score @s Team = @p[scores={char=66}] Team run scoreboard players set @s lich_scrap_damage2 1
execute at @e[tag=scrap_harvest_return] positioned ~-1 ~-1 ~-1 as @a[dx=1,dy=1,dz=1,tag=valid_spell_target] unless score @s Team = @p[scores={char=66}] Team run scoreboard players set @s lich_takedown 100

scoreboard players add @e[scores={lich_scrap_damage=1..}] lich_scrap_damage 1
execute as @e[scores={lich_scrap_damage=2}] run playsound item.armor.equip_chain master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute as @e[scores={lich_scrap_damage=2}] run damage @s 3 generic by @e[tag=scrap_wave,sort=nearest,limit=1] from @p[scores={char=66}]
execute as @a[scores={lich_scrap_damage=2}] run scoreboard players add @p[scores={char=66}] lich_scrap_shield 1
execute at @e[scores={lich_scrap_damage=2}] run playsound item.trident.hit master @a[distance=..12] ~ ~ ~ 1 0.5 1
scoreboard players set @e[scores={lich_scrap_damage=40..}] lich_scrap_damage 0

scoreboard players add @e[scores={lich_scrap_damage2=1..}] lich_scrap_damage2 1
execute as @e[scores={lich_scrap_damage2=2}] run playsound item.armor.equip_chain master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute as @e[scores={lich_scrap_damage2=2}] run damage @s 3 generic by @e[tag=scrap_wave,sort=nearest,limit=1] from @p[scores={char=66}]
execute as @a[scores={lich_scrap_damage2=2}] run scoreboard players add @p[scores={char=66}] lich_scrap_shield 1
execute at @e[scores={lich_scrap_damage2=2}] run playsound item.trident.hit master @a[distance=..12] ~ ~ ~ 1 0.5 1
scoreboard players set @e[scores={lich_scrap_damage2=40..}] lich_scrap_damage2 0

execute at @a[scores={char=66,universal_death=1..}] run kill @e[tag=scrap_harvest]
execute at @a[scores={char=66,universal_death=1..}] run kill @e[tag=scrap_harvest_return]

# iron lich

scoreboard players set @a[scores={char=66}] MaxHP 20

scoreboard players set @a[scores={char=66,s1_timer=1}] spellCD1 80
scoreboard players add @a[scores={char=66,s1_timer=1..}] s1_timer 1
scoreboard players set @a[scores={char=66,s1_timer=81..}] s1_timer 0

scoreboard players set @a[scores={char=66,s2_timer=1}] spellCD2 60
scoreboard players add @a[scores={char=66,s2_timer=1..}] s2_timer 1
scoreboard players set @a[scores={char=66,s2_timer=61..}] s2_timer 0


execute as @a[scores={char=66}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bone",Slot:0b}]}] run clear @a[scores={char=66}] bone
item replace entity @a[scores={char=66}] hotbar.0 with minecraft:bone[minecraft:custom_name={bold:1b,color:"gray",text:"Bone"},minecraft:unbreakable={},minecraft:enchantments={"minecraft:protection":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:1.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=66,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=66}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=66,s1_timer=0,s1_timer=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:andesite_wall",minecraft:custom_name={text:"Impale",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:impaling":1}] 1


execute as @a[scores={char=66,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=66}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=66,s2_timer=0}] hotbar.2 with minecraft:warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:raw_iron",minecraft:custom_name={text:"Scrap Harvest",color:"dark_aqua",bold:1b}] 1

kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_shovel",count:1}}]


#blunt force trauma

execute at @e[tag=debris] run particle enchanted_hit ~ ~0.3 ~ 0.2 0.2 0.2 0.4 3
execute at @e[tag=debris] run particle dust{color:[0.33,1.0,1.0],scale:1} ~ ~0.3 ~ 0.3 0.3 0.3 0.4 1
execute at @e[tag=debris,scores={SummonAge=198..}] run particle block{block_state:{Name:"minecraft:cobblestone"}} ~ ~0.3 ~ 0.2 0.2 0.2 0.4 30
execute at @e[tag=debris,scores={SummonAge=199..}] run playsound block.stone.break master @a[distance=..10] ~ ~ ~ 1 0.3 1
scoreboard players add @e[tag=debris] SummonAge 1
kill @e[tag=debris,scores={SummonAge=200..}]

scoreboard players remove @a[scores={holding_debris=1..}] holding_debris 1
execute as @a[scores={holding_debris=1..}] at @s positioned ~ ~1 ~ positioned ^ ^ ^0.8 run tp @e[tag=debris_held] ~ ~ ~
execute if entity @a[scores={holding_debris=1..}] unless entity @e[tag=debris_held] run summon block_display ~ ~ ~ {Tags:["debris_held","entities_artificer"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5,0.5f,0.5f]},block_state:{Name:"minecraft:weathered_copper"}}
execute unless entity @a[scores={holding_debris=1..}] run kill @e[tag=debris_held]
execute at @e[tag=debris_held] run particle enchanted_hit ~ ~ ~ 0.1 0.1 0.1 0.4 2

#gravity well

scoreboard players set @a[scores={char=48,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=48,s1_timer=1,CC_silence=1..}] s1_timer 80

execute at @a[scores={char=48,s1_timer=1,CC_silence=0}] run playsound entity.evoker.cast_spell master @a[distance=..10] ~ ~ ~ 0.8 1.4 1
execute at @a[scores={char=48,s1_timer=1,CC_silence=0}] run playsound entity.vex.hurt master @a[distance=..10] ~ ~ ~ 1 0.3 1
execute at @a[scores={char=48,s1_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["g_well","entities_artificer"]}
tp @e[tag=g_well,limit=1] @a[scores={char=48,s1_timer=1},limit=1]
execute at @a[scores={char=48,s1_timer=2,CC_silence=0}] as @e[tag=g_well] at @s run tp @s ~ ~1 ~
execute as @e[tag=g_well] at @s run tp @s ^ ^ ^1.1

execute at @e[tag=g_well] run particle enchanted_hit ~ ~ ~ 0.2 0.2 0.2 0.1 30
execute at @e[tag=g_well] run particle sculk_charge_pop ~ ~ ~ 0.2 0.2 0.2 0.1 30
execute at @e[tag=g_well] run particle dust{color:[0.33,0.33,1.0],scale:1} ~ ~ ~ 0.5 0.5 0.5 0 10

#picking debris

execute as @e[tag=g_well] at @s if entity @e[distance=..1.5,tag=debris] run scoreboard players set @a[scores={char=48}] holding_debris 100
execute as @e[tag=g_well] at @s if entity @e[distance=..1.5,tag=debris] run kill @e[distance=..1.5,tag=debris]
execute at @a[scores={holding_debris=1..,char=48}] run kill @e[tag=g_well]
scoreboard players set @a[scores={holding_debris=99}] s2_timer 1
scoreboard players set @a[scores={holding_debris=99}] s2_timer 218
scoreboard players set @a[scores={holding_debris=99}] spellCD2 2
execute at @a[scores={holding_debris=99,char=48}] run playsound entity.item.pickup master @a[distance=..12] ~ ~ ~ 1 0.5 1

#pulling players

execute at @e[tag=g_well] positioned ~-0.75 ~-0.75 ~-0.75 as @e[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target,limit=1] unless score @s Team = @p[scores={char=48}] Team run tag @s add artificer_grounded

execute at @e[tag=artificer_grounded] run particle enchanted_hit ~ ~0.5 ~ 0.4 0.6 0.4 0 20
execute at @e[tag=artificer_grounded] run particle nautilus ~ ~0.5 ~ 0.3 0.5 0.3 0 100
execute at @e[tag=artificer_grounded] run playsound block.beacon.deactivate master @a[distance=..10] ~ ~ ~ 0.4 0.8 1
scoreboard players set @e[tag=artificer_grounded] CC_grounded 20
effect give @e[tag=artificer_grounded] slowness 1 5
damage @e[tag=artificer_grounded,limit=1] 4 generic by @p[scores={char=48}] from @p[scores={char=48}]
tag @e remove artificer_grounded


#breaking off debris

execute as @e[tag=g_well] at @s unless block ^ ^0.5 ^0.5 #minecraft:dash run playsound block.stone.break master @a[distance=..10] ~ ~ ~ 1 0.5 1
execute as @e[tag=g_well] at @s unless block ^ ^0.5 ^0.5 #minecraft:dash run summon item ~ ~ ~ {PickupDelay:32767,Tags:["debris","entities_artificer"],Item:{id:"minecraft:weathered_copper",count:1}}
execute as @e[tag=g_well] at @s unless block ^ ^0.5 ^0.5 #minecraft:dash run kill @s

execute at @a[scores={char=48,s1_timer=7..}] run kill @e[tag=g_well]

#scatter

scoreboard players set @a[scores={char=48,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=48,s1_timer=1,CC_silence=1..}] s2_timer 100

execute at @a[scores={char=48,s2_timer=1,CC_silence=0}] run playsound entity.evoker.cast_spell master @a[distance=..10] ~ ~ ~ 0.5 1.3 1
execute at @a[scores={char=48,s2_timer=1,CC_silence=0}] run playsound entity.guardian.hurt master @a[distance=..10] ~ ~ ~ 1 0.4 1
execute at @a[scores={char=48,s2_timer=1,CC_silence=0,holding_debris=0}] run summon marker ~ ~ ~ {Tags:["g_scatter","entities_artificer"]}
execute at @a[scores={char=48,s2_timer=1,CC_silence=0,holding_debris=1..}] run summon marker ~ ~ ~ {Tags:["v_scatter","entities_artificer"]}

execute at @a[scores={char=48,s2_timer=1,CC_silence=0,holding_debris=1..}] run summon block_display ~ ~ ~ {Tags:["debris_projectile","projectile","entities_artificer"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.5f,-0.5f],scale:[1.0f,1.0f,1.0f]},block_state:{Name:"minecraft:weathered_copper"}}
scoreboard players operation @e[tag=projectile,tag=debris_projectile] Team = @p[scores={char=48}] Team
tp @e[tag=debris_projectile,limit=1] @a[scores={char=48,s2_timer=1},limit=1]
execute at @a[scores={char=48,s2_timer=1,CC_silence=0}] as @e[tag=debris_projectile] at @s run tp @s ~ ~0.9 ~
execute at @a[scores={char=48,s2_timer=1,CC_silence=0,holding_debris=1..}] run scoreboard players set @a[scores={char=48}] holding_debris 0

tp @e[tag=g_scatter,limit=1] @a[scores={char=48,s2_timer=1},limit=1]
execute at @a[scores={char=48,s2_timer=2,CC_silence=0}] as @e[tag=g_scatter] at @s run tp @s ~ ~1 ~
execute as @e[tag=g_scatter] at @s run tp @s ^ ^ ^0.5
execute at @a[scores={char=48,s2_timer=1..,CC_silence=0}] at @e[tag=g_scatter] run particle dust{color:[0.33,0.33,1.0],scale:1} ~ ~ ~ 0.5 0.5 0.5 0 5
execute at @a[scores={char=48,s2_timer=1..3,CC_silence=0}] at @e[tag=g_scatter] run particle enchanted_hit ~ ~ ~ 0.4 0.4 0.4 0.1 30
execute at @a[scores={char=48,s2_timer=1..3,CC_silence=0}] at @e[tag=g_scatter] run particle sculk_charge_pop ~ ~ ~ 0.6 0.6 0.6 0.1 5
execute at @a[scores={char=48,s2_timer=4..6,CC_silence=0}] at @e[tag=g_scatter] run particle enchanted_hit ~ ~ ~ 0.6 0.6 0.6 0.1 40
execute at @a[scores={char=48,s2_timer=4..6,CC_silence=0}] at @e[tag=g_scatter] run particle sculk_charge_pop ~ ~ ~ 0.6 0.6 0.6 0.1 10
execute at @a[scores={char=48,s2_timer=7..10,CC_silence=0}] at @e[tag=g_scatter] run particle enchanted_hit ~ ~ ~ 0.8 0.8 0.8 0.1 60
execute at @a[scores={char=48,s2_timer=7..10,CC_silence=0}] at @e[tag=g_scatter] run particle sculk_charge_pop ~ ~ ~ 0.6 0.6 0.6 0.1 15

tp @e[tag=v_scatter,limit=1] @a[scores={char=48,s2_timer=1},limit=1]
execute at @a[scores={char=48,s2_timer=2,CC_silence=0}] as @e[tag=v_scatter] at @s run tp @s ~ ~1 ~
execute as @e[tag=v_scatter] at @s run tp @s ^ ^ ^0.5
execute at @a[scores={char=48,s2_timer=1..,CC_silence=0}] at @e[tag=v_scatter] run particle dust{color:[0.33,0.33,1.0],scale:1} ~ ~ ~ 0.5 0.5 0.5 0 10
execute at @a[scores={char=48,s2_timer=1..3,CC_silence=0}] at @e[tag=v_scatter] run particle enchanted_hit ~ ~ ~ 0.4 0.4 0.4 0.1 10
execute at @a[scores={char=48,s2_timer=1..3,CC_silence=0}] at @e[tag=v_scatter] run particle sculk_charge_pop ~ ~ ~ 0.6 0.6 0.6 0.1 3
execute at @a[scores={char=48,s2_timer=4..6,CC_silence=0}] at @e[tag=v_scatter] run particle enchanted_hit ~ ~ ~ 0.6 0.6 0.6 0.1 20
execute at @a[scores={char=48,s2_timer=4..6,CC_silence=0}] at @e[tag=v_scatter] run particle sculk_charge_pop ~ ~ ~ 0.6 0.6 0.6 0.1 6
execute at @a[scores={char=48,s2_timer=7..10,CC_silence=0}] at @e[tag=v_scatter] run particle enchanted_hit ~ ~ ~ 0.8 0.8 0.8 0.1 30
execute at @a[scores={char=48,s2_timer=7..10,CC_silence=0}] at @e[tag=v_scatter] run particle sculk_charge_pop ~ ~ ~ 0.6 0.6 0.6 0.1 9

#pushing debris

execute at @e[tag=debris_projectile] run particle enchanted_hit ~ ~ ~ 0.5 0.5 0.5 0.01 10 normal
execute at @e[tag=debris_projectile] run particle sculk_charge_pop ~ ~ ~ 0.5 0.5 0.5 0.01 10 normal
execute as @e[tag=debris_projectile] at @s run tp @s ^ ^ ^1

execute at @e[tag=debris_projectile] positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target,limit=1] unless score @s Team = @p[scores={char=48}] Team run tag @s add hit_with_debris

execute if entity @e[tag=hit_with_debris] run kill @e[tag=debris_projectile]
effect give @e[tag=hit_with_debris,tag=valid_spell_target] blindness 1 1 true
scoreboard players set @a[tag=hit_with_debris,tag=valid_spell_target] CC_stun 20
execute as @e[tag=hit_with_debris] run damage @s 8 generic by @p[scores={char=48}] from @p[scores={char=48}]
tag @e[tag=valid_spell_target] remove hit_with_debris

execute as @e[tag=debris_projectile] at @s unless block ^ ^1 ^0.5 #minecraft:dash run playsound block.stone.break master @a[distance=..10] ~ ~ ~ 1 0.3 1
execute as @e[tag=debris_projectile] at @s unless block ^ ^1 ^1 #minecraft:dash run playsound block.stone.break master @a[distance=..10] ~ ~ ~ 1 0.3 1
execute as @e[tag=debris_projectile] at @s unless block ^ ^ ^1 #minecraft:dash run playsound block.stone.break master @a[distance=..10] ~ ~ ~ 1 0.3 1

execute as @e[tag=debris_projectile] at @s unless block ^ ^1 ^0.5 #minecraft:dash run particle block{block_state:{Name:"minecraft:cobblestone"}} ~ ~1.3 ~ 0.2 0.2 0.2 0.4 30
execute as @e[tag=debris_projectile] at @s unless block ^ ^1 ^1 #minecraft:dash run particle block{block_state:{Name:"minecraft:cobblestone"}} ~ ~1.3 ~ 0.2 0.2 0.2 0.4 30
execute as @e[tag=debris_projectile] at @s unless block ^ ^ ^1 #minecraft:dash run particle block{block_state:{Name:"minecraft:cobblestone"}} ~ ~1.3 ~ 0.2 0.2 0.2 0.4 30

execute as @e[tag=debris_projectile] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=debris_projectile] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=debris_projectile] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute at @a[scores={char=48,s2_timer=30..}] run kill @e[tag=debris_projectile]

#pushing players

execute at @e[tag=g_scatter] positioned ~-1 ~-1 ~-1 as @p[dx=1,dy=1,dz=1,tag=valid_spell_target,limit=1] unless score @s Team = @p[scores={char=48}] Team run tag @s add scattered

execute at @e[tag=scattered] run kill @e[tag=g_scatter]
execute at @e[tag=scattered] run playsound minecraft:entity.player.attack.knockback master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @e[tag=scattered] run summon marker ~ ~0.5 ~ {Tags:["scatter_marker","entities_artificer"]}
scoreboard players set @e[tag=scattered] scatter 16
tag @e remove scattered

scoreboard players remove @e[scores={scatter=1..}] scatter 1
scoreboard players add @e[tag=scatter_marker] s0_timer 1

scoreboard players set @e[scores={scatter=1..}] CC_knockup 0
effect give @e[scores={scatter=2..}] slow_falling 1 100 true
effect give @e[scores={scatter=2..}] resistance 1 100 true
#effect clear @e[scores={scatter=1}] slow_falling
scoreboard players set @e[scores={scatter=1..}] CC_intangible 2
execute at @e[tag=scatter_marker] run particle sonic_boom ~ ~1 ~ 0.5 0.8 0.5 0 1
execute at @e[tag=scatter_marker] run particle sculk_charge_pop ~ ~1 ~ 0.5 0.8 0.5 0 10

data modify entity @e[tag=scatter_marker,scores={s0_timer=1..5},limit=1] Rotation set from entity @p[scores={char=48}] Rotation

execute as @e[tag=scatter_marker,scores={s0_timer=2},limit=1] at @n[scores={scatter=1..}] run tp @s ~ ~0.5 ~

execute as @e[tag=scatter_marker,scores={s0_timer=2..}] at @s unless block ^ ^ ^1 #minecraft:dash unless entity @e[tag=scatter_face_slammed_to_a_wall] run summon marker ~ ~ ~ {Tags:["scatter_face_slammed_to_a_wall","entities_artificer"]}
execute as @e[tag=scatter_marker,scores={s0_timer=2..}] at @s unless block ^ ^1 ^0.5 #minecraft:dash unless entity @e[tag=scatter_face_slammed_to_a_wall] run summon marker ~ ~ ~ {Tags:["scatter_face_slammed_to_a_wall","entities_artificer"]}
execute as @e[tag=scatter_marker,scores={s0_timer=2..}] at @s unless block ^ ^ ^1 #minecraft:dash unless entity @e[tag=scatter_face_slammed_to_a_wall] run summon marker ~ ~ ~ {Tags:["scatter_face_slammed_to_a_wall","entities_artificer"]}
execute as @e[tag=scatter_marker,scores={s0_timer=2..}] at @s unless block ~ ~ ~ #minecraft:dash unless entity @e[tag=scatter_face_slammed_to_a_wall] run summon marker ~ ~ ~ {Tags:["scatter_face_slammed_to_a_wall","entities_artificer"]}

execute as @e[tag=scatter_marker,scores={s0_timer=2..}] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=scatter_marker,scores={s0_timer=2..}] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=scatter_marker,scores={s0_timer=2..}] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=scatter_marker,scores={s0_timer=2..}] at @s unless block ~ ~ ~ #minecraft:dash run kill @s


execute at @e[tag=scatter_face_slammed_to_a_wall] run playsound block.stone.break master @a[distance=..10] ~ ~ ~ 1 0.3 1
execute at @e[tag=scatter_face_slammed_to_a_wall] run particle block{block_state:{Name:"minecraft:cobblestone"}} ~ ~ ~ 1 1 1 0.1 60
execute at @e[tag=scatter_face_slammed_to_a_wall] run scoreboard players set @a[scores={scatter=1..}] CC_stun 20
execute at @e[tag=scatter_face_slammed_to_a_wall] run effect clear @a[scores={scatter=1..}] resistance

execute at @e[tag=scatter_face_slammed_to_a_wall] run kill @e[tag=scatter_marker]
execute at @e[tag=scatter_face_slammed_to_a_wall] unless entity @e[distance=..2,tag=debris] run summon item ~ ~ ~ {PickupDelay:32767,Tags:["debris","entities_artificer"],Item:{id:"minecraft:weathered_copper",count:1}}

execute at @e[tag=scatter_face_slammed_to_a_wall] as @p[scores={scatter=1..}] run damage @s 4 generic by @p[scores={char=48}] from @p[scores={char=48}]
execute at @e[tag=scatter_face_slammed_to_a_wall] run scoreboard players set @e scatter 0
kill @e[tag=scatter_face_slammed_to_a_wall]

tp @e[scores={scatter=1..},limit=1] @e[tag=scatter_marker,scores={s0_timer=2..},limit=1]
execute as @e[tag=scatter_marker,scores={s0_timer=6..}] at @s run tp @s ^ ^ ^0.9

execute unless entity @e[scores={scatter=1..}] run kill @e[tag=scatter_marker]

#breaking off debris

execute as @e[tag=g_scatter] at @s unless block ^ ^0.5 ^0.5 #minecraft:dash run playsound block.stone.break master @a[distance=..10] ~ ~ ~ 1 0.5 1
execute as @e[tag=g_scatter] at @s unless block ^ ^0.5 ^0.5 #minecraft:dash run summon item ~ ~ ~ {PickupDelay:32767,Tags:["debris","entities_artificer"],Item:{id:"minecraft:weathered_copper",count:1}}
execute as @e[tag=g_scatter] at @s unless block ^ ^0.5 ^0.5 #minecraft:dash run kill @s

execute at @a[scores={char=48,s2_timer=10}] run kill @e[tag=g_scatter]
execute at @a[scores={char=48,s2_timer=10}] run kill @e[tag=v_scatter]



# artificer


scoreboard players set @a[scores={s1_timer=1,char=48}] spellCD1 140
scoreboard players add @a[scores={s1_timer=1..,char=48}] s1_timer 1
scoreboard players set @a[scores={s1_timer=141..,char=48}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=48}] spellCD2 220
scoreboard players add @a[scores={s2_timer=1..,char=48}] s2_timer 1
scoreboard players set @a[scores={s2_timer=221..,char=48}] s2_timer 0

execute as @a[scores={char=48}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:diamond_shovel",Slot:0b}]}] run clear @a[scores={char=48}] diamond_shovel
item replace entity @a[scores={char=48}] hotbar.0 with diamond_shovel[minecraft:custom_name={bold:1b,color:"gray",text:"Gravity Gloves"},minecraft:unbreakable={},minecraft:enchantments={"minecraft:unbreaking":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=1] 1

execute as @a[scores={char=48,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=48}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=48,s1_timer=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:enchantments={"minecraft:power":1},minecraft:item_model="minecraft:warped_roots",minecraft:custom_name={text:"Gravity Well",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=48,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=48}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=48,s2_timer=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:enchantments={"minecraft:power":1},minecraft:item_model="minecraft:flow_armor_trim_smithing_template",minecraft:custom_name={text:"Scatter",color:"dark_aqua",bold:1b}] 1

kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:warped_roots",count:1}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_boots",count:1}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_shovel",count:1}}]


#blunt force trauma

execute at @e[tag=debris] run particle minecraft:enchanted_hit ~ ~0.3 ~ 0.2 0.2 0.2 0.4 3
execute at @e[tag=debris] run particle minecraft:falling_dust{block_state:{Name:"minecraft:diamond_block"}} ~ ~0.3 ~ 0.3 0.3 0.3 0.4 1
execute at @e[tag=debris,scores={SummonAge=198..}] run particle minecraft:block{block_state:{Name:"minecraft:cobblestone"}} ~ ~0.3 ~ 0.2 0.2 0.2 0.4 30
execute at @e[tag=debris,scores={SummonAge=199..}] run playsound minecraft:block.stone.break master @a[distance=..10] ~ ~ ~ 1 0.3 1
scoreboard players add @e[tag=debris] SummonAge 1
kill @e[tag=debris,scores={SummonAge=200..}]

scoreboard players remove @a[scores={holding_debris=1..}] holding_debris 1

execute as @a[scores={holding_debris=1..}] at @s positioned ^ ^0.6 ^0.6 run tp @e[tag=debris_held] ~ ~ ~
execute if entity @a[scores={holding_debris=1..}] unless entity @e[tag=debris_held] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Marker:1b,Invisible:1b,Tags:["debris_held"],NoGravity:0b,Pose:{Head:[180.0f,0.0f,0.0f]},equipment:{head:{id:"minecraft:weathered_copper",count:1}}}
execute unless entity @a[scores={holding_debris=1..}] run kill @e[tag=debris_held]
execute at @e[tag=debris_held] run particle minecraft:enchanted_hit ~ ~0.5 ~ 0.1 0.1 0.1 0.4 2

#gravity well

scoreboard players set @a[scores={char=48,spell_arti_1_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=48,spell_arti_1_1=1,CC_silence=1..}] spell_arti_1_1 80

#execute at @a[scores={char=48,spell_arti_1_1=1,CC_silence=0}] run playsound block.ancient_debris.break master @a ~ ~ ~ 1 0.1 1
#execute at @a[scores={char=48,spell_arti_1_1=1,CC_silence=0}] run playsound block.beacon.deactivate master @a[distance=..10] ~ ~ ~ 0.3 0.8 1
execute at @a[scores={char=48,spell_arti_1_1=1,CC_silence=0}] run playsound minecraft:entity.illusioner.cast_spell master @a[distance=..10] ~ ~ ~ 0.8 1.6 1
execute at @a[scores={char=48,spell_arti_1_1=1,CC_silence=0}] run playsound minecraft:entity.vex.hurt master @a[distance=..10] ~ ~ ~ 1 0.3 1
execute at @a[scores={char=48,spell_arti_1_1=1,CC_silence=0}] run summon minecraft:marker ~ ~ ~ {Tags:["g_well"]}
tp @e[tag=g_well,limit=1] @a[scores={char=48,spell_arti_1_1=1},limit=1]
execute at @a[scores={char=48,spell_arti_1_1=2,CC_silence=0}] as @e[tag=g_well] at @s run tp @s ~ ~1 ~
execute as @e[tag=g_well] at @s run tp @s ^ ^ ^0.9

execute at @e[tag=g_well] run particle minecraft:enchanted_hit ~ ~ ~ 0.4 0.4 0.4 0.1 30
execute at @e[tag=g_well] run particle minecraft:sculk_charge_pop ~ ~ ~ 0.4 0.4 0.4 0.1 20

#picking debris

execute as @e[tag=g_well] at @s if entity @e[distance=..1.5,tag=debris] run scoreboard players set @a[scores={char=48}] holding_debris 100
execute as @e[tag=g_well] at @s if entity @e[distance=..1.5,tag=debris] run kill @e[distance=..1.5,tag=debris]
execute at @a[scores={holding_debris=1..,char=48}] run kill @e[tag=g_well]
scoreboard players set @a[scores={holding_debris=99}] spell_arti_2 1
scoreboard players set @a[scores={holding_debris=99}] spell_arti_2_1 218
scoreboard players set @a[scores={holding_debris=99}] spellCD2 2
playsound minecraft:entity.item.pickup master @a[scores={holding_debris=99}] ~ ~ ~ 1 0.5 1

#pulling players

execute at @e[tag=g_well] if entity @a[scores={char=48},team=purple] if entity @a[distance=..2,scores={CC_knockup=0},team=yellow] run playsound minecraft:block.beacon.deactivate master @a[distance=..10] ~ ~ ~ 1 1.6 1
execute at @e[tag=g_well] if entity @a[scores={char=48},team=purple] run scoreboard players set @p[distance=..2,team=yellow] CC_grounded 20
execute at @e[tag=g_well] if entity @a[scores={char=48},team=purple] run effect give @p[distance=..2,team=yellow] minecraft:slowness 1 5

execute at @e[tag=g_well] if entity @a[scores={char=48},team=yellow] if entity @a[distance=..2,scores={CC_knockup=0},team=purple] run playsound minecraft:block.beacon.deactivate master @a[distance=..10] ~ ~ ~ 1 1.6 1
execute at @e[tag=g_well] if entity @a[scores={char=48},team=yellow] run scoreboard players set @p[distance=..2,team=purple] CC_grounded 20
execute at @e[tag=g_well] if entity @a[scores={char=48},team=yellow] run effect give @p[distance=..2,team=purple] minecraft:slowness 1 5


#breaking off debris

execute as @e[tag=g_well] at @s unless block ^ ^0.5 ^0.5 #minecraft:dash run playsound minecraft:block.stone.break master @a[distance=..10] ~ ~ ~ 1 0.5 1
execute as @e[tag=g_well] at @s unless block ^ ^0.5 ^0.5 #minecraft:dash run summon minecraft:item ~ ~ ~ {PickupDelay:32767,Tags:["debris"],Item:{id:"minecraft:weathered_copper",count:1}}
execute as @e[tag=g_well] at @s unless block ^ ^0.5 ^0.5 #minecraft:dash run kill @s

execute at @a[scores={char=48,spell_arti_1_1=12}] run kill @e[tag=g_well]

#scatter

scoreboard players set @a[scores={char=48,spell_arti_2_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=48,spell_arti_2_1=1,CC_silence=1..}] spell_arti_2_1 100

execute at @a[scores={char=48,spell_arti_2_1=1,CC_silence=0}] run playsound minecraft:entity.guardian.hurt master @a[distance=..10] ~ ~ ~ 1 0.4 1
execute at @a[scores={char=48,spell_arti_2_1=1,CC_silence=0}] run playsound minecraft:item.crossbow.shoot master @a[distance=..10] ~ ~ ~ 1 0.3 1
execute at @a[scores={char=48,spell_arti_2_1=1,CC_silence=0,holding_debris=0}] run summon minecraft:marker ~ ~ ~ {Tags:["g_scatter"]}
execute at @a[scores={char=48,spell_arti_2_1=1,CC_silence=0,holding_debris=1..}] run summon minecraft:marker ~ ~ ~ {Tags:["v_scatter"]}

execute at @a[scores={char=48,spell_arti_2_1=1,CC_silence=0,holding_debris=1..}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["debris_projectile"],NoGravity:0b,Pose:{Head:[180.0f,0.0f,0.0f]},equipment:{head:{id:"minecraft:weathered_copper",count:1}}}
tp @e[tag=debris_projectile,limit=1] @a[scores={char=48,spell_arti_2_1=1},limit=1]
execute at @a[scores={char=48,spell_arti_2_1=1,CC_silence=0}] as @e[tag=debris_projectile] at @s run tp @s ~ ~0.5 ~
execute at @a[scores={char=48,spell_arti_2_1=1,CC_silence=0,holding_debris=1..}] run scoreboard players set @a[scores={char=48}] holding_debris 0

tp @e[tag=g_scatter,limit=1] @a[scores={char=48,spell_arti_2_1=1},limit=1]
execute at @a[scores={char=48,spell_arti_2_1=2,CC_silence=0}] as @e[tag=g_scatter] at @s run tp @s ~ ~1 ~
execute as @e[tag=g_scatter] at @s run tp @s ^ ^ ^0.5
execute at @a[scores={char=48,spell_arti_2_1=1..3,CC_silence=0}] at @e[tag=g_scatter] run particle minecraft:enchanted_hit ~ ~ ~ 0.4 0.4 0.4 0.1 30
execute at @a[scores={char=48,spell_arti_2_1=1..3,CC_silence=0}] at @e[tag=g_scatter] run particle minecraft:sculk_charge_pop ~ ~ ~ 0.6 0.6 0.6 0.1 5
execute at @a[scores={char=48,spell_arti_2_1=4..6,CC_silence=0}] at @e[tag=g_scatter] run particle minecraft:enchanted_hit ~ ~ ~ 0.6 0.6 0.6 0.1 40
execute at @a[scores={char=48,spell_arti_2_1=4..6,CC_silence=0}] at @e[tag=g_scatter] run particle minecraft:sculk_charge_pop ~ ~ ~ 0.6 0.6 0.6 0.1 10
execute at @a[scores={char=48,spell_arti_2_1=7..10,CC_silence=0}] at @e[tag=g_scatter] run particle minecraft:enchanted_hit ~ ~ ~ 0.8 0.8 0.8 0.1 60
execute at @a[scores={char=48,spell_arti_2_1=7..10,CC_silence=0}] at @e[tag=g_scatter] run particle minecraft:sculk_charge_pop ~ ~ ~ 0.6 0.6 0.6 0.1 15

tp @e[tag=v_scatter,limit=1] @a[scores={char=48,spell_arti_2_1=1},limit=1]
execute at @a[scores={char=48,spell_arti_2_1=2,CC_silence=0}] as @e[tag=v_scatter] at @s run tp @s ~ ~1 ~
execute as @e[tag=v_scatter] at @s run tp @s ^ ^ ^0.5
execute at @a[scores={char=48,spell_arti_2_1=1..3,CC_silence=0}] at @e[tag=v_scatter] run particle minecraft:enchanted_hit ~ ~ ~ 0.4 0.4 0.4 0.1 10
execute at @a[scores={char=48,spell_arti_2_1=1..3,CC_silence=0}] at @e[tag=v_scatter] run particle minecraft:sculk_charge_pop ~ ~ ~ 0.6 0.6 0.6 0.1 3
execute at @a[scores={char=48,spell_arti_2_1=4..6,CC_silence=0}] at @e[tag=v_scatter] run particle minecraft:enchanted_hit ~ ~ ~ 0.6 0.6 0.6 0.1 20
execute at @a[scores={char=48,spell_arti_2_1=4..6,CC_silence=0}] at @e[tag=v_scatter] run particle minecraft:sculk_charge_pop ~ ~ ~ 0.6 0.6 0.6 0.1 6
execute at @a[scores={char=48,spell_arti_2_1=7..10,CC_silence=0}] at @e[tag=v_scatter] run particle minecraft:enchanted_hit ~ ~ ~ 0.8 0.8 0.8 0.1 30
execute at @a[scores={char=48,spell_arti_2_1=7..10,CC_silence=0}] at @e[tag=v_scatter] run particle minecraft:sculk_charge_pop ~ ~ ~ 0.6 0.6 0.6 0.1 9

#pushing debris

execute at @e[tag=debris_projectile] run particle minecraft:enchanted_hit ~ ~1.4 ~ 0.5 0.5 0.5 0.01 10 normal
execute as @e[tag=debris_projectile] at @s run tp @s ^ ^ ^0.8


execute at @e[tag=debris_projectile] if entity @a[scores={char=48},team=purple] run tag @p[distance=..2,team=yellow] add hit_with_debris

execute at @e[tag=debris_projectile] if entity @a[scores={char=48},team=yellow] run tag @p[distance=..2,team=purple] add hit_with_debris

effect give @a[tag=hit_with_debris] blindness 1 1 true
scoreboard players set @a[tag=hit_with_debris] CC_stun 20
damage @p[tag=hit_with_debris] 8 generic by @p[scores={char=48}] from @p[scores={char=48}]
execute if entity @a[tag=hit_with_debris] run kill @e[tag=debris_projectile]
tag @a remove hit_with_debris

execute as @e[tag=debris_projectile] at @s unless block ^ ^1 ^0.5 #minecraft:dash run playsound minecraft:block.stone.break master @a[distance=..10] ~ ~ ~ 1 0.3 1
execute as @e[tag=debris_projectile] at @s unless block ^ ^1 ^1 #minecraft:dash run playsound minecraft:block.stone.break master @a[distance=..10] ~ ~ ~ 1 0.3 1
execute as @e[tag=debris_projectile] at @s unless block ^ ^ ^1 #minecraft:dash run playsound minecraft:block.stone.break master @a[distance=..10] ~ ~ ~ 1 0.3 1

execute as @e[tag=debris_projectile] at @s unless block ^ ^1 ^0.5 #minecraft:dash run particle minecraft:block{block_state:{Name:"minecraft:cobblestone"}} ~ ~1.3 ~ 0.2 0.2 0.2 0.4 30
execute as @e[tag=debris_projectile] at @s unless block ^ ^1 ^1 #minecraft:dash run particle minecraft:block{block_state:{Name:"minecraft:cobblestone"}} ~ ~1.3 ~ 0.2 0.2 0.2 0.4 30
execute as @e[tag=debris_projectile] at @s unless block ^ ^ ^1 #minecraft:dash run particle minecraft:block{block_state:{Name:"minecraft:cobblestone"}} ~ ~1.3 ~ 0.2 0.2 0.2 0.4 30

execute as @e[tag=debris_projectile] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=debris_projectile] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=debris_projectile] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute at @a[scores={char=48,spell_arti_2_1=30..}] run kill @e[tag=debris_projectile]

#pushing players

execute at @e[tag=g_scatter] if entity @a[scores={char=48},team=purple] if entity @p[distance=..2,scores={scatter=0},team=yellow] run playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~ 1 0.8 1
execute at @e[tag=g_scatter] if entity @a[scores={char=48},team=purple] if entity @p[distance=..2,scores={scatter=0},team=yellow] unless entity @e[tag=scatter_marker] run summon minecraft:marker ~ ~ ~ {Tags:["scatter_marker"]}
execute at @e[tag=g_scatter] if entity @a[scores={char=48},team=purple] run scoreboard players set @p[distance=..2,team=yellow] scatter 16
execute at @e[tag=g_scatter] if entity @a[scores={char=48},team=purple] if entity @p[distance=..2,team=yellow] run kill @e[tag=g_scatter]

execute at @e[tag=g_scatter] if entity @a[scores={char=48},team=yellow] if entity @p[distance=..2,scores={scatter=0},team=purple] run playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~ 1 0.8 1
execute at @e[tag=g_scatter] if entity @a[scores={char=48},team=yellow] if entity @p[distance=..2,scores={scatter=0},team=purple] unless entity @e[tag=scatter_marker] run summon minecraft:marker ~ ~ ~ {Tags:["scatter_marker"]}
execute at @e[tag=g_scatter] if entity @a[scores={char=48},team=yellow] run scoreboard players set @p[distance=..2,team=purple] scatter 16
execute at @e[tag=g_scatter] if entity @a[scores={char=48},team=yellow] if entity @p[distance=..2,team=purple] run kill @e[tag=g_scatter]

#execute if entity @a[scores={scatter=1..}] unless entity @e[tag=scatter_marker] run summon marker ~ ~ ~ {Tags:["scatter_marker"]}

scoreboard players remove @a[scores={scatter=1..}] scatter 1
scoreboard players add @e[tag=scatter_marker] scatter 1

scoreboard players set @a[scores={scatter=1..}] CC_knockup 0
effect give @a[scores={scatter=2..}] slow_falling 1 100 true
effect give @a[scores={scatter=2..}] resistance 1 100 true
#effect clear @a[scores={scatter=1}] slow_falling
scoreboard players set @a[scores={scatter=1..}] CC_intangible 2
execute at @e[tag=scatter_marker] run particle minecraft:sonic_boom ~ ~ ~ 0.3 0.5 0.3 0.1 2

data modify entity @e[tag=scatter_marker,scores={scatter=1..5},limit=1] Rotation set from entity @p[scores={char=48}] Rotation

execute as @e[tag=scatter_marker,scores={scatter=2},limit=1] at @p[scores={scatter=1..}] run tp @s ~ ~0.5 ~

execute as @e[tag=scatter_marker,scores={scatter=2..}] at @s unless block ^ ^ ^1 #minecraft:dash unless entity @e[tag=scatter_face_slammed_to_a_wall] run summon minecraft:marker ~ ~ ~ {Tags:["scatter_face_slammed_to_a_wall"]}
execute as @e[tag=scatter_marker,scores={scatter=2..}] at @s unless block ^ ^1 ^0.5 #minecraft:dash unless entity @e[tag=scatter_face_slammed_to_a_wall] run summon minecraft:marker ~ ~ ~ {Tags:["scatter_face_slammed_to_a_wall"]}
execute as @e[tag=scatter_marker,scores={scatter=2..}] at @s unless block ^ ^ ^1 #minecraft:dash unless entity @e[tag=scatter_face_slammed_to_a_wall] run summon minecraft:marker ~ ~ ~ {Tags:["scatter_face_slammed_to_a_wall"]}
execute as @e[tag=scatter_marker,scores={scatter=2..}] at @s unless block ~ ~ ~ #minecraft:dash unless entity @e[tag=scatter_face_slammed_to_a_wall] run summon minecraft:marker ~ ~ ~ {Tags:["scatter_face_slammed_to_a_wall"]}

execute as @e[tag=scatter_marker,scores={scatter=2..}] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=scatter_marker,scores={scatter=2..}] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=scatter_marker,scores={scatter=2..}] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=scatter_marker,scores={scatter=2..}] at @s unless block ~ ~ ~ #minecraft:dash run kill @s


execute at @e[tag=scatter_face_slammed_to_a_wall] run playsound minecraft:block.stone.break master @a[distance=..10] ~ ~ ~ 1 0.3 1
execute at @e[tag=scatter_face_slammed_to_a_wall] run particle minecraft:block{block_state:{Name:"minecraft:cobblestone"}} ~ ~ ~ 1 1 1 0.1 60
execute at @e[tag=scatter_face_slammed_to_a_wall] run scoreboard players set @a[scores={scatter=1..}] CC_stun 20
execute at @e[tag=scatter_face_slammed_to_a_wall] run effect clear @a[scores={scatter=1..}] resistance
execute at @e[tag=scatter_face_slammed_to_a_wall] run effect clear @a[scores={scatter=1..}] minecraft:resistance

execute at @e[tag=scatter_face_slammed_to_a_wall] run kill @e[tag=scatter_marker]
execute at @e[tag=scatter_face_slammed_to_a_wall] unless entity @e[distance=..2,tag=debris] run summon minecraft:item ~ ~ ~ {PickupDelay:32767,Tags:["debris"],Item:{id:"minecraft:weathered_copper",count:1}}

execute at @e[tag=scatter_face_slammed_to_a_wall] run damage @p[scores={scatter=1..}] 4 generic by @p[scores={char=48}] from @p[scores={char=48}]
execute at @e[tag=scatter_face_slammed_to_a_wall] run scoreboard players set @a scatter 0
kill @e[tag=scatter_face_slammed_to_a_wall]

tp @p[scores={scatter=1..}] @e[tag=scatter_marker,scores={scatter=2..},limit=1]
execute as @e[tag=scatter_marker,scores={scatter=6..}] at @s run tp @s ^ ^ ^0.9

execute unless entity @a[scores={scatter=1..}] run kill @e[tag=scatter_marker]

#breaking off debris

execute as @e[tag=g_scatter] at @s unless block ^ ^0.5 ^0.5 #minecraft:dash run playsound minecraft:block.stone.break master @a[distance=..10] ~ ~ ~ 1 0.5 1
execute as @e[tag=g_scatter] at @s unless block ^ ^0.5 ^0.5 #minecraft:dash run summon minecraft:item ~ ~ ~ {PickupDelay:32767,Tags:["debris"],Item:{id:"minecraft:weathered_copper",count:1}}
execute as @e[tag=g_scatter] at @s unless block ^ ^0.5 ^0.5 #minecraft:dash run kill @s

execute at @a[scores={char=48,spell_arti_2_1=10}] run kill @e[tag=g_scatter]
execute at @a[scores={char=48,spell_arti_2_1=10}] run kill @e[tag=v_scatter]



# artificer

scoreboard players add @a[scores={spell_arti_1=1..}] spell_arti_1_1 1
item replace entity @a[scores={char=48,spell_arti_1_1=140..}] hotbar.1 with minecraft:warped_roots[minecraft:custom_name={text:"Gravity Well",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1
scoreboard players set @a[scores={spell_arti_1_1=141..}] spell_arti_1 0
scoreboard players set @a[scores={spell_arti_1_1=141..}] spell_arti_1_1 0
scoreboard players set @a[scores={spell_arti_1_1=1}] spellCD1 140

scoreboard players add @a[scores={spell_arti_2=1..}] spell_arti_2_1 1
item replace entity @a[scores={char=48,spell_arti_2_1=220..}] hotbar.2 with minecraft:diamond_boots[minecraft:custom_name={text:"Scatter",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1
scoreboard players set @a[scores={spell_arti_2_1=221..}] spell_arti_2 0
scoreboard players set @a[scores={spell_arti_2_1=221..}] spell_arti_2_1 0
scoreboard players set @a[scores={spell_arti_2_1=1}] spellCD2 220

execute as @a[scores={char=48}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:diamond_shovel",Slot:0b}]}] run clear @a[scores={char=48}] minecraft:diamond_shovel
item replace entity @a[scores={char=48}] hotbar.0 with minecraft:diamond_shovel[minecraft:custom_name={bold:1b,color:"gray",text:"Gravity Gloves"},minecraft:unbreakable={},minecraft:enchantments={"minecraft:unbreaking":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=48,spell_arti_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_roots",Slot:1b}]}] run clear @a[scores={char=48}] minecraft:warped_roots
item replace entity @a[scores={char=48,spell_arti_1=0}] hotbar.1 with minecraft:warped_roots[minecraft:custom_name={text:"Gravity Well",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1

execute as @a[scores={char=48,spell_arti_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:diamond_boots",Slot:2b}]}] run clear @a[scores={char=48}] minecraft:diamond_boots
item replace entity @a[scores={char=48,spell_arti_2=0}] hotbar.2 with minecraft:diamond_boots[minecraft:custom_name={text:"Scatter",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1
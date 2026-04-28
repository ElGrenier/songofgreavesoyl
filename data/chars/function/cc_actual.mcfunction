

# ================================================================================================================================================================================================================
# ================================================================================================================================================================================================================
# effects actual
# ================================================================================================================================================================================================================
# ================================================================================================================================================================================================================


#unstoppable ====================================================================================================================================================================================================================================


effect clear @a[scores={unstoppable=1..}] slowness
scoreboard players set @a[scores={unstoppable=1..}] CC_stun 0
scoreboard players set @a[scores={unstoppable=1..}] CC_root 0
scoreboard players set @a[scores={unstoppable=1..}] CC_knockup 0


#stun silence + disarm ====================================================================================================================================================================================================================================

scoreboard players set @a[scores={CC_petrify=3..}] CC_silence 2
scoreboard players set @a[scores={CC_charm=3..}] CC_silence 2
scoreboard players set @a[scores={CC_charm=3..}] CC_disarm 2
scoreboard players set @a[scores={CC_flag=3..}] CC_silence 2
scoreboard players set @a[scores={CC_stun=3..}] CC_silence 2
scoreboard players set @a[scores={CC_knockup=3..}] CC_silence 2
scoreboard players set @a[scores={CC_knockup=3..}] CC_disarm 2
scoreboard players set @a[scores={CC_knockdown=3..}] CC_grounded 2

#entangle

scoreboard players set @a[scores={CC_entangled=3..}] CC_disarm 2
scoreboard players set @a[scores={CC_entangled=6..}] CC_grounded 5

#noflag ====================================================================================================================================================================================================================================

scoreboard players set @a[scores={CC_stun=3..}] CC_noflag 2
scoreboard players set @a[scores={CC_root=3..}] CC_noflag 2
scoreboard players set @a[scores={CC_knockup=3..}] CC_noflag 2
scoreboard players set @a[scores={CC_madness=3..}] CC_noflag 2

#knockup effect ====================================================================================================================================================================================================================================

execute at @a[scores={CC_knockup=1..}] unless entity @e[distance=..1,tag=the_knockup] run summon armor_stand ~ ~0.5 ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["the_knockup","rotate"]}


scoreboard players add @e[tag=the_knockup] knockup_duration 1

execute as @a[scores={CC_knockup=1..}] at @s run ride @s mount @n[tag=the_knockup] 

#execute as @a[scores={CC_knockup=1..}] at @s run tp @s @e[distance=..1,tag=the_knockup,limit=1]
#execute as @e[tag=the_knockup] at @s run data modify entity @s Rotation set from entity @p[distance=..1,scores={CC_knockup=1..}] Rotation

#execute as @e[tag=the_knockup] at @s run tp @s ~ ~ ~ ~ 90

execute as @e[tag=the_knockup] at @s if block ~ ~1 ~ #minecraft:dash run tp @s ~ ~0.02 ~
execute as @e[tag=the_knockup,scores={knockup_duration=..10}] at @s if block ~ ~1 ~ #minecraft:dash run tp @s ~ ~0.03 ~
execute as @e[tag=the_knockup,scores={knockup_duration=..10}] at @s if block ~ ~1 ~ #minecraft:dash run tp @s ~ ~0.03 ~

execute as @e[tag=the_knockup] at @s unless entity @a[distance=..1,scores={CC_knockup=1..}] run kill @s

#staggered effect ====================================================================================================================================================================================================================================

scoreboard players add @a[scores={CC_stagger=1..,CC_stun=1..}] CC_stun 20
scoreboard players add @a[scores={CC_stagger=1..,CC_root=1..}] CC_root 20
scoreboard players add @a[scores={CC_stagger=1..,CC_knockup=1..}] CC_knockup 20

scoreboard players set @a[scores={CC_stun=1..}] CC_stagger 0
scoreboard players set @a[scores={CC_root=1..}] CC_stagger 0
scoreboard players set @a[scores={CC_knockup=1..}] CC_stagger 0

# crippled + shieldbreal

effect clear @a[scores={CC_shieldbreak=1..}] absorption

scoreboard players set @a[scores={CC_crippled=3..}] CC_defiled 2
scoreboard players set @a[scores={CC_crippled=3..}] CC_shieldbreak 2

# broken

effect clear @a[scores={CC_broken=1..}] resistance

# intangibility clearing its resistance

effect clear @a[scores={CC_intangible=1}] resistance

# cc working effects ====================================================================================================================================================================================================================================

# nowy root/grounded

execute as @e[scores={CC_grounded=3..}] run attribute @s jump_strength base set 0
execute as @e[scores={CC_grounded=-8..2}] run attribute @s jump_strength base set 0.41

execute as @e[scores={CC_root=3..}] run attribute @s jump_strength base set 0
execute as @e[scores={CC_root=-8..2}] run attribute @s jump_strength base set 0.41

execute as @e[scores={CC_root=3..}] run attribute @s movement_speed base set 0
execute as @e[scores={CC_root=-8..2}] run attribute @s movement_speed base set 0.1

# nowy stun

execute as @e[scores={CC_stun=3..}] run attribute @s jump_strength base set 0
execute as @e[scores={CC_stun=-8..2}] run attribute @s jump_strength base set 0.41

execute as @e[scores={CC_stun=3..}] run attribute @s movement_speed base set 0
execute as @e[scores={CC_stun=-8..2}] run attribute @s movement_speed base set 0.1

execute as @e[scores={CC_stun=3..}] run attribute @s attack_damage base set -20
execute as @e[scores={CC_stun=-8..2}] run attribute @s attack_damage base set 0

# nowy knockup

execute as @e[scores={CC_knockup=3..}] run attribute @s movement_speed base set 0
execute as @e[scores={CC_knockup=-8..2}] run attribute @s movement_speed base set 0.1

execute as @e[scores={CC_knockup=3..}] run attribute @s attack_damage base set -20
execute as @e[scores={CC_knockup=-8..2}] run attribute @s attack_damage base set 0

execute as @e[scores={CC_knockup=3..}] run attribute @s gravity base set 0
execute as @e[scores={CC_knockup=-8..2}] run attribute @s gravity base set 0.08

# nowy disarm

execute as @e[scores={CC_disarm=3..}] run attribute @s attack_damage base set -40
execute as @e[scores={CC_disarm=1..2}] run attribute @s attack_damage base set 0

execute as @a[scores={char=1..,CC_stun=1..},tag=!no_basic_attack] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bedrock",Slot:0b}]}] run clear @s[scores={char=1..,CC_stun=1..}] bedrock[custom_data={disarm:1}]
execute as @a[scores={char=1..,CC_stun=1..},tag=!no_basic_attack] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bedrock",Slot:0b}]}] run item replace entity @s hotbar.0 with bedrock[custom_data={disarm:1},minecraft:item_model="minecraft:barrier",minecraft:custom_name={text:"Disarmed",color:"gray",bold:1b}] 1
execute as @a[scores={char=1..,CC_disarm=1..},tag=!no_basic_attack] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bedrock",Slot:0b}]}] run clear @s[scores={char=1..,CC_disarm=1..}] bedrock[custom_data={disarm:1}]
execute as @a[scores={char=1..,CC_disarm=1..},tag=!no_basic_attack] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bedrock",Slot:0b}]}] run item replace entity @s hotbar.0 with bedrock[minecraft:item_model="minecraft:barrier",minecraft:custom_name={text:"Disarmed",color:"gray",bold:1b}] 1


execute as @a[scores={char=28,CC_silence=1..}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bedrock",Slot:0b}]}] run clear @s[scores={char=28,CC_silence=1..}] bedrock[custom_data={silence:0}]
execute as @a[scores={char=28,CC_silence=1..}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bedrock",Slot:0b}]}] run item replace entity @s hotbar.0 with bedrock[custom_data={silence:0},minecraft:item_model="minecraft:barrier",minecraft:custom_name={text:"Silenced",color:"gray",bold:1b}] 1

execute as @a[scores={char=64,CC_silence=1..}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bedrock",Slot:0b}]}] run clear @s[scores={char=28,CC_silence=1..}] bedrock[custom_data={silence:0}]
execute as @a[scores={char=64,CC_silence=1..}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bedrock",Slot:0b}]}] run item replace entity @s hotbar.0 with bedrock[custom_data={silence:0},minecraft:item_model="minecraft:barrier",minecraft:custom_name={text:"Silenced",color:"gray",bold:1b}] 1

execute as @a[scores={char=71,CC_silence=1..}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bedrock",Slot:0b}]}] run clear @s[scores={char=28,CC_silence=1..}] bedrock[custom_data={silence:0}]
execute as @a[scores={char=71,CC_silence=1..}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bedrock",Slot:0b}]}] run item replace entity @s hotbar.0 with bedrock[custom_data={silence:0},minecraft:item_model="minecraft:barrier",minecraft:custom_name={text:"Silenced",color:"gray",bold:1b}] 1

execute as @a[scores={char=1..,CC_silence=1..}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bedrock",Slot:1b}]}] run clear @s[scores={char=1..,CC_silence=1..}] bedrock[custom_data={silence:1}]
execute as @a[scores={char=1..,CC_silence=1..}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bedrock",Slot:1b}]}] run item replace entity @s hotbar.1 with bedrock[custom_data={silence:1},minecraft:item_model="minecraft:barrier",minecraft:custom_name={text:"Silenced",color:"gray",bold:1b}] 1

execute as @a[scores={char=1..,CC_silence=1..}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bedrock",Slot:2b}]}] unless score @s char matches 58 run clear @s[scores={char=1..,CC_silence=1..}] bedrock[custom_data={silence:2}]
execute as @a[scores={char=1..,CC_silence=1..}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bedrock",Slot:2b}]}] unless score @s char matches 58 run item replace entity @s hotbar.2 with bedrock[custom_data={silence:2},minecraft:item_model="minecraft:barrier",minecraft:custom_name={text:"Silenced",color:"gray",bold:1b}] 1

execute as @a[scores={char=1..,CC_silence=1..}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bedrock",Slot:3b}]}] run clear @s[scores={char=1..,CC_silence=1..}] bedrock[custom_data={silence:3}]
execute as @a[scores={char=1..,CC_silence=1..}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bedrock",Slot:3b}]}] run item replace entity @s hotbar.3 with bedrock[custom_data={silence:3},minecraft:item_model="minecraft:barrier",minecraft:custom_name={text:"Silenced",color:"gray",bold:1b}] 1

#clear @a[scores={char=1..,CC_disarm=..1}] bedrock[custom_data={disarm:1}]

clear @a[scores={char=1..,CC_silence=..1}] bedrock[custom_data={silence:0}]
clear @a[scores={char=1..,CC_silence=..1}] bedrock[custom_data={silence:1}]
clear @a[scores={char=1..,CC_silence=..1}] bedrock[custom_data={silence:2}]
clear @a[scores={char=1..,CC_silence=..1}] bedrock[custom_data={silence:3}]

kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:bedrock"}}]


# banish

execute at @a[scores={CC_banish=1..,char=4}] run kill @e[tag=WarperMarker]
execute at @a[scores={CC_banish=1..,char=8}] run kill @e[tag=decoy]
execute at @a[scores={CC_banish=1..,char=17}] run kill @e[type=trident]
execute at @a[scores={CC_banish=1..,char=31}] run kill @e[tag=keelhaul_hook]
execute at @a[scores={CC_banish=1..,char=31}] run kill @e[tag=lifeline_point]
execute at @a[scores={CC_banish=1..,char=36}] run kill @e[tag=fissure_return]
execute at @a[scores={CC_banish=1..,char=44}] run kill @e[tag=grapple_point]
execute at @a[scores={CC_banish=1..,char=44}] run kill @e[tag=raider_hook]

scoreboard players set @a[scores={CC_banish=1..}] regen 0
scoreboard players set @a[scores={CC_banish=1..}] keelhauling 0
scoreboard players set @a[scores={CC_banish=1..}] rite_of_chains 0
scoreboard players set @a[scores={CC_banish=1..}] constricted 0
scoreboard players set @a[scores={CC_banish=1..}] embrace 0

# cleanse

effect clear @a[scores={cleanse=1..}] slowness
effect clear @a[scores={cleanse=1..}] weakness
effect clear @a[scores={cleanse=1..}] jump_boost
effect clear @a[scores={cleanse=1..}] blindness
effect clear @a[scores={cleanse=1..}] mining_fatigue
effect clear @a[scores={cleanse=1..}] poison

#common
scoreboard players set @a[scores={cleanse=1..}] CC_stun 0
scoreboard players set @a[scores={cleanse=1..}] CC_root 0
scoreboard players set @a[scores={cleanse=1..}] CC_grounded 0
scoreboard players set @a[scores={cleanse=1..}] CC_disarm 0
scoreboard players set @a[scores={cleanse=1..}] CC_shieldbreak 0
scoreboard players set @a[scores={cleanse=1..}] CC_defile 0
scoreboard players set @a[scores={cleanse=1..}] CC_silence 0
scoreboard players set @a[scores={cleanse=1..}] CC_knockup 0
scoreboard players set @a[scores={cleanse=1..}] CC_exhaust 0
scoreboard players set @a[scores={cleanse=1..}] CC_staggered 0
scoreboard players set @a[scores={cleanse=1..}] CC_cripple 0
scoreboard players set @a[scores={cleanse=1..}] CC_entangled 0
scoreboard players set @a[scores={cleanse=1..}] CC_taunt 0
scoreboard players set @a[scores={cleanse=1..}] CC_charm 0
scoreboard players set @a[scores={cleanse=1..}] CC_taunt 1

#char unique

scoreboard players set @a[scores={cleanse=1..}] chillrend_root_vis 0
scoreboard players set @a[scores={cleanse=1..}] vis_sludged 0
scoreboard players set @a[scores={cleanse=1..}] vis_weaver_entangle 0
scoreboard players set @a[scores={cleanse=1..}] desert_funeral 0
scoreboard players set @a[scores={cleanse=1..}] passive_drow 0


scoreboard players set @a[scores={cleanse=1..}] shard_petrify 3
scoreboard players set @a[scores={cleanse=1..}] curse 0
scoreboard players set @a[scores={cleanse=1..}] CC_mindrot 0
scoreboard players set @a[scores={cleanse=1..}] basilisk_petrify 60
scoreboard players set @a[scores={cleanse=1..}] CC_confusion 0
scoreboard players set @a[scores={cleanse=1..}] aber_s1_debuff 0
scoreboard players set @a[scores={cleanse=1..}] CC_madness 0
scoreboard players set @a[scores={cleanse=1..}] CC_afterburn 0
scoreboard players set @a[scores={cleanse=1..}] CC_hypothermia 0
scoreboard players set @a[scores={cleanse=1..}] twisted_garden 0
scoreboard players set @a[scores={cleanse=1..}] CC_glaciate 0
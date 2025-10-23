

# ================================================================================================================================================================================================================
# ================================================================================================================================================================================================================
# effects actual
# ================================================================================================================================================================================================================
# ================================================================================================================================================================================================================


#stun silence + disarm ====================================================================================================================================================================================================================================

scoreboard players set @a[scores={CC_petrify=3..}] CC_silence 2
scoreboard players set @a[scores={CC_flag=3..}] CC_silence 2
scoreboard players set @a[scores={CC_stun=3..}] CC_silence 2
#scoreboard players set @a[scores={CC_stun=3..}] CC_disarm 2
scoreboard players set @a[scores={CC_knockup=3..}] CC_silence 2
scoreboard players set @a[scores={CC_knockup=3..}] CC_disarm 2
scoreboard players set @a[scores={CC_knockdown=3..}] CC_grounded 2

#noflag ====================================================================================================================================================================================================================================

scoreboard players set @a[scores={CC_stun=3..}] CC_noflag 2
scoreboard players set @a[scores={CC_root=3..}] CC_noflag 2
scoreboard players set @a[scores={CC_knockup=3..}] CC_noflag 2
scoreboard players set @a[scores={CC_madness=3..}] CC_noflag 2

#knockup effect ====================================================================================================================================================================================================================================

execute at @a[scores={CC_knockup=1..}] unless entity @e[distance=..1,tag=the_knockup] run summon minecraft:marker ~ ~ ~ {Tags:["the_knockup","rotate"]}

scoreboard players add @e[tag=the_knockup] knockup_duration 1

execute as @e[tag=rotate] at @s run tp @s @p[distance=..1,scores={CC_knockup=1..}]
tp @p[scores={CC_knockup=1..}] @e[distance=..1,tag=rotate,sort=nearest,limit=1]
tag @e remove rotate

execute as @a[scores={CC_knockup=1..}] at @s run tp @s @e[distance=..1,tag=the_knockup,limit=1]
execute as @e[tag=the_knockup] at @s run tp @s ~ ~ ~ ~ 90

execute as @e[tag=the_knockup] at @s if block ~ ~1 ~ #minecraft:dash run tp @s ~ ~0.05 ~
execute as @e[tag=the_knockup,scores={knockup_duration=..10}] at @s if block ~ ~1 ~ #minecraft:dash run tp @s ~ ~0.1 ~

execute as @e[tag=the_knockup] at @s unless entity @a[distance=..1,scores={CC_knockup=1..}] run kill @s

#staggered effect ====================================================================================================================================================================================================================================


scoreboard players add @a[scores={CC_stagger=1..,CC_stun=1..}] CC_stun 20
scoreboard players add @a[scores={CC_stagger=1..,CC_root=1..}] CC_root 20
scoreboard players add @a[scores={CC_stagger=1..,CC_knockup=1..}] CC_knockup 20
scoreboard players add @a[scores={CC_stagger=1..,CC_grounded=1..}] CC_grounded 20

scoreboard players set @a[scores={CC_stun=1..}] CC_stagger 0
scoreboard players set @a[scores={CC_root=1..}] CC_stagger 0
scoreboard players set @a[scores={CC_knockup=1..}] CC_stagger 0
scoreboard players set @a[scores={CC_grounded=1..}] CC_stagger 0

# crippled + shieldbreal

effect clear @a[scores={CC_shieldbreak=1..}] absorption

scoreboard players set @a[scores={CC_crippled=3..}] CC_defiled 2
scoreboard players set @a[scores={CC_crippled=3..}] CC_shieldbreak 2

# cc working effects ====================================================================================================================================================================================================================================

# nowy root/grounded

execute as @e[scores={CC_grounded=3..}] run attribute @s minecraft:jump_strength base set 0
execute as @e[scores={CC_grounded=-8..2}] run attribute @s minecraft:jump_strength base set 0.41

execute as @e[scores={CC_root=3..}] run attribute @s minecraft:jump_strength base set 0
execute as @e[scores={CC_root=-8..2}] run attribute @s minecraft:jump_strength base set 0.41

execute as @e[scores={CC_root=3..}] run attribute @s minecraft:movement_speed base set 0
execute as @e[scores={CC_root=-8..2}] run attribute @s minecraft:movement_speed base set 0.1

# nowy stun

execute as @e[scores={CC_stun=3..}] run attribute @s minecraft:jump_strength base set 0
execute as @e[scores={CC_stun=-8..2}] run attribute @s minecraft:jump_strength base set 0.41

execute as @e[scores={CC_stun=3..}] run attribute @s minecraft:movement_speed base set 0
execute as @e[scores={CC_stun=-8..2}] run attribute @s minecraft:movement_speed base set 0.1

execute as @e[scores={CC_stun=3..}] run attribute @s minecraft:attack_damage base set -20
execute as @e[scores={CC_stun=-8..2}] run attribute @s minecraft:attack_damage base set 1

# nowy disarm

execute as @e[scores={CC_disarm=3..}] run attribute @s minecraft:attack_damage base set -40
execute as @e[scores={CC_disarm=1..2}] run attribute @s minecraft:attack_damage base set 1

execute as @a[scores={char=1..,CC_stun=1..},tag=!no_basic_attack] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bedrock",Slot:0b}]}] run clear @s[scores={char=1..,CC_stun=1..}] bedrock
execute as @a[scores={char=1..,CC_stun=1..},tag=!no_basic_attack] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bedrock",Slot:0b}]}] run item replace entity @s hotbar.0 with bedrock[minecraft:item_model="minecraft:barrier",minecraft:custom_name={text:"Disarmed",color:"gray",bold:1b}] 1
execute as @a[scores={char=1..,CC_disarm=1..},tag=!no_basic_attack] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bedrock",Slot:0b}]}] run clear @s[scores={char=1..,CC_disarm=1..}] bedrock
execute as @a[scores={char=1..,CC_disarm=1..},tag=!no_basic_attack] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bedrock",Slot:0b}]}] run item replace entity @s hotbar.0 with bedrock[minecraft:item_model="minecraft:barrier",minecraft:custom_name={text:"Disarmed",color:"gray",bold:1b}] 1
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:bedrock"}}]
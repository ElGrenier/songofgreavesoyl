
scoreboard players set @e[tag=!wonder_expose_initiated,tag=valid_spell_target] CC_exposed 0
tag @e add wonder_expose_initiated


# passive

execute at @a[scores={char=75,s0_timer=1,CC_silence=0},x_rotation=44..90] unless entity @e[tag=sculpture,distance=..1] run summon creeper ~ ~ ~ {Invulnerable:1,NoAI:1,Silent:1,Tags:["entities_wonder","sculpture","valid_spell_target","sculpture_stationary"]}
execute at @a[scores={char=75,s0_timer=1,CC_silence=0},x_rotation=-90..45] run summon creeper ~ ~ ~ {Invulnerable:1,NoAI:1,Silent:1,Tags:["entities_wonder","sculpture","valid_spell_target","sculpture_moving"]}
execute at @a[scores={char=75,s0_timer=1,CC_silence=0}] run playsound block.sand.place master @a[distance=..10] ~ ~ ~ 1 1 1
execute at @a[scores={char=75,s0_timer=3,CC_silence=0}] run playsound block.stone.place master @a[distance=..10] ~ ~ ~ 1 1 1
execute at @a[scores={char=75,s0_timer=5,CC_silence=0}] run playsound block.sand.place master @a[distance=..10] ~ ~ ~ 1 1 1
execute at @a[scores={char=75,s0_timer=1,CC_silence=0}] run scoreboard players set @n[tag=sculpture] s0_timer 0
scoreboard players add @a[scores={char=75,s0_timer=1,CC_silence=0}] wonder_sculptures_id 1
scoreboard players set @a[scores={char=75,wonder_sculptures_id=20..}] wonder_sculptures_id 1

scoreboard players operation @e[tag=sculpture] Team = @p[scores={char=75}] Team
execute at @a[scores={char=75,s0_timer=1,CC_silence=0}] run scoreboard players add @e[tag=sculpture] SummonAge 1
tp @e[tag=sculpture,limit=1,tag=!sculpture_initial_rotation] @a[scores={char=75},limit=1]

scoreboard players add @e[tag=sculpture,scores={s0_timer=..30}] s0_timer 1
scoreboard players add @e[tag=sculpture_visuals,scores={s0_timer=..30}] s0_timer 1
scoreboard players operation @e[tag=sculpture,scores={s0_timer=1}] wonder_sculptures_id = @p[scores={char=75}] wonder_sculptures_id
execute as @e[tag=sculpture,scores={s0_timer=15}] run data merge entity @s {Invulnerable:0,Health:1f,attributes:[{id:"minecraft:max_health",base:1}]}
execute at @e[tag=sculpture,scores={s0_timer=15}] run particle dust{color:[0.84,0.24,0.24],scale:1} ~ ~0.8 ~ 0.3 0.8 0.3 0.05 50
execute at @e[tag=sculpture,scores={s0_timer=15}] run particle small_flame ~ ~0.8 ~ 0.3 0.7 0.3 0.05 70
execute at @e[tag=sculpture,scores={s0_timer=15}] run playsound block.lava.extinguish master @a[distance=..15] ~ ~ ~ 1 2 1
execute at @e[tag=sculpture,scores={s0_timer=15}] run playsound block.glass.place master @a[distance=..15] ~ ~ ~ 1 1 1
execute as @e[tag=sculpture_visuals,scores={s0_timer=15}] run data merge entity @s {block_state:{Name:"minecraft:red_stained_glass"}}

execute at @e[tag=sculpture,scores={s0_timer=1}] run summon block_display ~ ~ ~ {Tags:["sculpture_visuals","sculp_vis_1","sculp_leg_l","entities_wonder","sculpture_visuals_not_assigned"],transformation:{translation:[0.03f,0f,-0.08f],scale:[0.25,0.7f,0.25f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},teleport_duration:1,block_state:{Name:"minecraft:sand"}}
execute at @e[tag=sculpture,scores={s0_timer=1}] run summon block_display ~ ~ ~ {Tags:["sculpture_visuals","sculp_vis_2","sculp_leg_r","entities_wonder","sculpture_visuals_not_assigned"],transformation:{translation:[-0.22f,0f,-0.08f],scale:[0.25,0.7f,0.25f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},teleport_duration:1,block_state:{Name:"minecraft:sand"}}
execute at @e[tag=sculpture,scores={s0_timer=1}] run summon block_display ~ ~ ~ {Tags:["sculpture_visuals","sculp_vis_2","sculp_arm_l","entities_wonder","sculpture_visuals_not_assigned"],transformation:{translation:[0.27f,0.7f,-0.08f],scale:[0.2,0.7f,0.25f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},teleport_duration:1,block_state:{Name:"minecraft:sand"}}
execute at @e[tag=sculpture,scores={s0_timer=1}] run summon block_display ~ ~ ~ {Tags:["sculpture_visuals","sculp_vis_2","sculp_arm_r","entities_wonder","sculpture_visuals_not_assigned"],transformation:{translation:[-0.43f,0.7f,-0.08f],scale:[0.2,0.7f,0.25f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},teleport_duration:1,block_state:{Name:"minecraft:sand"}}
execute at @e[tag=sculpture,scores={s0_timer=1}] run summon block_display ~ ~ ~ {Tags:["sculpture_visuals","sculp_vis_3","sculp_torso","entities_wonder","sculpture_visuals_not_assigned"],transformation:{translation:[-0.225f,0.7f,-0.1f],scale:[0.5f,0.7f,0.3f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},teleport_duration:1,block_state:{Name:"minecraft:sand"}}
execute at @e[tag=sculpture,scores={s0_timer=1}] run summon block_display ~ ~ ~ {Tags:["sculpture_visuals","sculp_vis_3","sculp_head","entities_wonder","sculpture_visuals_not_assigned"],transformation:{translation:[-0.225f,1.4f,-0.2f],scale:[0.5f,0.5f,0.5f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},teleport_duration:1,block_state:{Name:"minecraft:sand"}}


execute at @e[tag=sculpture,scores={s0_timer=1}] run scoreboard players set @e[tag=sculpture_visuals_not_assigned,distance=..1] s0_timer 1
scoreboard players operation @e[tag=sculpture_visuals_not_assigned,scores={s0_timer=1}] wonder_sculptures_id = @n[tag=sculpture,scores={s0_timer=1}] wonder_sculptures_id


execute as @e[tag=sculpture] store result entity @s Rotation[1] float 1 run clear
execute as @e[tag=sculpture] at @s as @e[tag=sculpture_visuals] if score @s wonder_sculptures_id = @n[tag=sculpture] wonder_sculptures_id run tp @s ~ ~ ~
execute as @e[tag=sculpture_visuals,scores={s0_timer=1..2}] at @s run data modify entity @s Rotation set from entity @n[tag=sculpture] Rotation


execute as @e[tag=sculpture_moving,scores={s0_timer=1..10}] at @s if block ^ ^1 ^1 #minecraft:dash if block ^ ^ ^1 #minecraft:dash run particle block{block_state:{Name:"minecraft:sand"}} ~ ~0.2 ~ 0.3 0.1 0.3 0.01 10 normal
execute as @e[tag=sculpture_moving,scores={s0_timer=1..10}] at @s if block ^ ^1 ^1 #minecraft:dash if block ^ ^ ^1 #minecraft:dash run playsound block.sand.place master @a[distance=..8] ~ ~ ~ 0.5 1 1
execute as @e[tag=sculpture_moving,scores={s0_timer=1..10}] at @s if block ^ ^1 ^1 #minecraft:dash if block ^ ^ ^1 #minecraft:dash unless entity @e[tag=sculpture,distance=0.2..1] run tp @s ^ ^ ^0.3
execute as @e[tag=sculpture_moving,scores={s0_timer=1..10}] at @s if block ^ ^1 ^1 #minecraft:dash if block ^ ^ ^1 #minecraft:dash unless entity @e[tag=sculpture,distance=0.2..1] run tp @s ^ ^ ^0.3
execute as @e[tag=sculpture] at @s if block ~ ~-0.3 ~ #minecraft:dash run tp @s ~ ~-0.3 ~
execute as @e[tag=sculpture] at @s if block ~ ~-0.2 ~ #minecraft:dash run tp @s ~ ~-0.2 ~
execute as @e[tag=sculpture] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~
execute as @e[tag=sculpture] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~

tag @e[tag=sculpture] add sculpture_initial_rotation


effect give @e[type=creeper] invisibility infinite 1 true
effect clear @e[type=creeper] glowing

tag @e[tag=sculpture_visuals] add sculpture_explode
execute as @e[tag=sculpture_visuals] at @s as @n[tag=sculpture] if score @s wonder_sculptures_id = @n[tag=sculpture_visuals,distance=..0.4] wonder_sculptures_id run tag @e[tag=sculpture_visuals,distance=..0.4] remove sculpture_explode

execute at @e[tag=sculpture_visuals,tag=sculpture_explode] as @e[distance=..2.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=75}] Team run tag @s add lacerated_by_an_exploding_sculpture


execute as @e[tag=lacerated_by_an_exploding_sculpture] run damage @s[scores={CC_exposed=0}] 4 player_attack by @n[tag=sculpture_explode] from @p[scores={char=75}]
execute as @e[tag=lacerated_by_an_exploding_sculpture] run damage @s[scores={CC_exposed=1..}] 8 player_attack by @n[tag=sculpture_explode] from @p[scores={char=75}]
scoreboard players set @e[tag=lacerated_by_an_exploding_sculpture] CC_exposed 60
tag @e remove lacerated_by_an_exploding_sculpture

execute at @e[scores={CC_exposed=1..}] run particle block{block_state:{Name:"minecraft:glass"}} ~ ~0.5 ~ 0.6 0.8 0.6 0.01 30 normal
scoreboard players remove @e[scores={CC_exposed=1..}] CC_exposed 1

execute at @e[tag=sculpture_visuals,tag=sculpture_explode] run particle block{block_state:{Name:"minecraft:red_stained_glass"}} ~ ~0.5 ~ 2 1 2 0.01 30 normal
execute at @e[tag=sculpture_visuals,tag=sculpture_explode] run particle block{block_state:{Name:"minecraft:red_stained_glass"}} ~ ~0.5 ~ 0.6 0.8 0.6 0.01 30 normal
execute at @e[tag=sculpture_visuals,tag=sculpture_explode] run particle block{block_state:{Name:"minecraft:glass"}} ~ ~0.5 ~ 0.8 1 0.8 0.01 50 normal
execute at @e[tag=sculpture_visuals,tag=sculpture_explode,limit=1] run playsound block.glass.break master @a[distance=..15] ~ ~ ~ 1 0.5 1
kill @e[tag=sculpture_visuals,tag=sculpture_explode] 

kill @e[tag=sculpture,scores={SummonAge=9..}]


# dead heat pulse

scoreboard players set @a[scores={char=75,s1_timer=1..19,CC_silence=1..}] spellCD2 120
scoreboard players set @a[scores={char=75,s1_timer=1..19,CC_silence=1..}] s1_timer 21

execute at @a[scores={char=75,s1_timer=1..19,CC_silence=0}] run particle small_flame ~ ~0.5 ~ 0.3 0.5 0.3 0.05 4
execute at @a[scores={char=75,s1_timer=10..19,CC_silence=0}] run particle dust{color:[0.98,0.85,0.85],scale:1} ~ ~0.5 ~ 0.4 0.8 0.4 0.1 10
execute at @a[scores={char=75,s1_timer=1,CC_silence=0}] run playsound entity.allay.item_given master @a[distance=..15] ~ ~ ~ 1 0.7 1
execute at @a[scores={char=75,s1_timer=10,CC_silence=0}] run playsound entity.allay.item_given master @a[distance=..15] ~ ~ ~ 1 1.2 1
execute at @a[scores={char=75,s1_timer=19,CC_silence=0}] run playsound entity.allay.item_thrown master @a[distance=..15] ~ ~ ~ 1 1.2 1
execute at @a[scores={char=75,s1_timer=1,CC_silence=0}] run tag @e[tag=sculpture] remove sculpture_which_already_pulsed
execute at @a[scores={char=75,s1_timer=1,CC_silence=0}] run playsound block.bell.resonate master @a[distance=..15] ~ ~ ~ 1 2 1
tag @a[scores={char=75,s1_timer=20,CC_silence=0}] add wonder_pulse_trigger

execute at @e[tag=wonder_pulse] positioned ~-.5 ~-.5 ~-.5 as @e[tag=sculpture,dx=0,dy=0,dz=0,tag=!sculpture_which_already_pulsed] run playsound block.amethyst_block.resonate master @a[distance=..12] ~ ~ ~ 1 0.5 1
execute at @e[tag=wonder_pulse] positioned ~-.5 ~-.5 ~-.5 as @e[tag=sculpture,dx=0,dy=0,dz=0,tag=!sculpture_which_already_pulsed] run playsound block.lava.extinguish master @a[distance=..12] ~ ~ ~ 0.5 2 1
execute at @e[tag=wonder_pulse] positioned ~-.5 ~-.5 ~-.5 as @e[tag=sculpture,dx=0,dy=0,dz=0,tag=!sculpture_which_already_pulsed] run tag @s add wonder_pulse_trigger

tag @e[tag=sculpture,tag=wonder_pulse_trigger,tag=!sculpture_which_already_pulsed] add sculpture_which_already_pulsed

execute at @e[tag=wonder_pulse_trigger] run summon marker ~ ~1 ~0.5 {Tags:["entities_wonder","wonder_pulse"]}
execute at @e[tag=wonder_pulse_trigger] run summon marker ~ ~1 ~-0.5 {Tags:["entities_wonder","wonder_pulse"]}
execute at @e[tag=wonder_pulse_trigger] run summon marker ~0.5 ~1 ~ {Tags:["entities_wonder","wonder_pulse"]}
execute at @e[tag=wonder_pulse_trigger] run summon marker ~-0.5 ~1 ~ {Tags:["entities_wonder","wonder_pulse"]}

execute at @e[tag=wonder_pulse_trigger] run summon marker ~0.5 ~1 ~0.2 {Tags:["entities_wonder","wonder_pulse"]}
execute at @e[tag=wonder_pulse_trigger] run summon marker ~0.5 ~1 ~0.1 {Tags:["entities_wonder","wonder_pulse"]}
execute at @e[tag=wonder_pulse_trigger] run summon marker ~0.45 ~1 ~0.3 {Tags:["entities_wonder","wonder_pulse"]}
execute at @e[tag=wonder_pulse_trigger] run summon marker ~0.3 ~1 ~0.45 {Tags:["entities_wonder","wonder_pulse"]}
execute at @e[tag=wonder_pulse_trigger] run summon marker ~0.2 ~1 ~0.5 {Tags:["entities_wonder","wonder_pulse"]}
execute at @e[tag=wonder_pulse_trigger] run summon marker ~0.1 ~1 ~0.5 {Tags:["entities_wonder","wonder_pulse"]}
execute at @e[tag=wonder_pulse_trigger] run summon marker ~0.4 ~1 ~0.4 {Tags:["entities_wonder","wonder_pulse"]}

execute at @e[tag=wonder_pulse_trigger] run summon marker ~-0.5 ~1 ~0.2 {Tags:["entities_wonder","wonder_pulse"]}
execute at @e[tag=wonder_pulse_trigger] run summon marker ~-0.5 ~1 ~0.1 {Tags:["entities_wonder","wonder_pulse"]}
execute at @e[tag=wonder_pulse_trigger] run summon marker ~-0.45 ~1 ~0.3 {Tags:["entities_wonder","wonder_pulse"]}
execute at @e[tag=wonder_pulse_trigger] run summon marker ~-0.3 ~1 ~0.45 {Tags:["entities_wonder","wonder_pulse"]}
execute at @e[tag=wonder_pulse_trigger] run summon marker ~-0.2 ~1 ~0.5 {Tags:["entities_wonder","wonder_pulse"]}
execute at @e[tag=wonder_pulse_trigger] run summon marker ~-0.1 ~1 ~0.5 {Tags:["entities_wonder","wonder_pulse"]}
execute at @e[tag=wonder_pulse_trigger] run summon marker ~-0.4 ~1 ~0.4 {Tags:["entities_wonder","wonder_pulse"]}

execute at @e[tag=wonder_pulse_trigger] run summon marker ~0.5 ~1 ~-0.2 {Tags:["entities_wonder","wonder_pulse"]}
execute at @e[tag=wonder_pulse_trigger] run summon marker ~0.5 ~1 ~-0.1 {Tags:["entities_wonder","wonder_pulse"]}
execute at @e[tag=wonder_pulse_trigger] run summon marker ~0.45 ~1 ~-0.3 {Tags:["entities_wonder","wonder_pulse"]}
execute at @e[tag=wonder_pulse_trigger] run summon marker ~0.3 ~1 ~-0.45 {Tags:["entities_wonder","wonder_pulse"]}
execute at @e[tag=wonder_pulse_trigger] run summon marker ~0.2 ~1 ~-0.5 {Tags:["entities_wonder","wonder_pulse"]}
execute at @e[tag=wonder_pulse_trigger] run summon marker ~0.1 ~1 ~-0.5 {Tags:["entities_wonder","wonder_pulse"]}
execute at @e[tag=wonder_pulse_trigger] run summon marker ~0.4 ~1 ~-0.4 {Tags:["entities_wonder","wonder_pulse"]}

execute at @e[tag=wonder_pulse_trigger] run summon marker ~-0.5 ~1 ~-0.2 {Tags:["entities_wonder","wonder_pulse"]}
execute at @e[tag=wonder_pulse_trigger] run summon marker ~-0.5 ~1 ~-0.1 {Tags:["entities_wonder","wonder_pulse"]}
execute at @e[tag=wonder_pulse_trigger] run summon marker ~-0.45 ~1 ~-0.3 {Tags:["entities_wonder","wonder_pulse"]}
execute at @e[tag=wonder_pulse_trigger] run summon marker ~-0.3 ~1 ~-0.45 {Tags:["entities_wonder","wonder_pulse"]}
execute at @e[tag=wonder_pulse_trigger] run summon marker ~-0.2 ~1 ~-0.5 {Tags:["entities_wonder","wonder_pulse"]}
execute at @e[tag=wonder_pulse_trigger] run summon marker ~-0.1 ~1 ~-0.5 {Tags:["entities_wonder","wonder_pulse"]}
execute at @e[tag=wonder_pulse_trigger] run summon marker ~-0.4 ~1 ~-0.4 {Tags:["entities_wonder","wonder_pulse"]}

execute as @e[tag=wonder_pulse] at @s run rotate @s facing entity @e[tag=wonder_pulse_trigger,sort=nearest,limit=1]
execute as @e[tag=wonder_pulse] at @s run tp @s ~ ~ ~ ~ 0

execute as @e[tag=wonder_pulse] at @s run tp @s ^ ^ ^-0.15
execute at @e[tag=wonder_pulse] run particle dust{color:[0.98,0.85,0.85],scale:1} ~ ~ ~ 0.2 0.1 0.2 0.1 1
execute at @e[tag=wonder_pulse] run particle dust{color:[0.84,0.24,0.24],scale:1} ~ ~ ~ 0.2 0.1 0.2 0.1 1

execute as @e[tag=wonder_pulse] at @s run tp @s ^ ^ ^-0.15
execute at @e[tag=wonder_pulse] run particle dust{color:[0.98,0.85,0.85],scale:1} ~ ~ ~ 0.2 0.1 0.2 0.1 1

execute as @e[tag=wonder_pulse] at @s run tp @s ^ ^ ^-0.15
execute at @e[tag=wonder_pulse] run particle dust{color:[0.98,0.85,0.85],scale:1} ~ ~ ~ 0.2 0.1 0.2 0.1 1

#execute at @e[tag=wonder_pulse] run particle dust{color:[0.98,0.85,0.85],scale:1} ~ ~ ~ 0.2 0.1 0.2 0.1 2
execute at @e[tag=wonder_pulse] run particle small_flame ~ ~ ~ 0.5 0.1 0.5 0.001 2

execute at @e[tag=wonder_pulse] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=75}] Team run tag @s add heat_pulsed

scoreboard players set @a[tag=heat_pulsed] CC_grounded 10
execute as @e[tag=heat_pulsed] run damage @s[scores={CC_exposed=0}] 3 campfire by @p[scores={char=75}] from @p[scores={char=75}]
execute as @e[tag=heat_pulsed] run damage @s[scores={CC_exposed=1..}] 6 campfire by @p[scores={char=75}] from @p[scores={char=75}]
tag @e remove heat_pulsed


scoreboard players add @e[tag=wonder_pulse] s0_timer 1
kill @e[tag=wonder_pulse,scores={s0_timer=20..}]

tag @e remove wonder_pulse_trigger

# shatter

execute at @a[scores={char=75,s2_timer=1,CC_silence=0}] run playsound entity.blaze.shoot master @a[distance=..12] ~ ~ ~ 0.4 1.5 1
execute at @a[scores={char=75,s2_timer=1,CC_silence=0}] run playsound entity.allay.hurt master @a[distance=..12] ~ ~ ~ 0.5 1.5 1
execute as @a[scores={char=75,s2_timer=1,CC_silence=0}] at @s positioned ~ ~1.2 ~ run function chars:wonder_shatter_raycast

execute at @a[scores={char=75,s2_timer=1,CC_silence=0}] unless entity @e[tag=shatter_sculpture] run scoreboard players set @a[scores={char=75}] spellCD2 20
execute at @a[scores={char=75,s2_timer=1,CC_silence=0}] unless entity @e[tag=shatter_sculpture] run scoreboard players set @a[scores={char=75}] s2_timer 240

execute at @e[tag=shatter_sculpture] as @e[distance=..6,tag=valid_spell_target] unless score @s Team = @p[scores={char=75}] Team run tag @s add heat_shattered

effect give @a[tag=heat_shattered] blindness 2
execute as @e[tag=heat_shattered] run damage @s[scores={CC_exposed=0}] 6 player_attack by @n[tag=shatter_sculpture] from @p[scores={char=75}]
execute as @e[tag=heat_shattered] run damage @s[scores={CC_exposed=1..}] 12 player_attack by @n[tag=shatter_sculpture] from @p[scores={char=75}]
tag @e remove heat_shattered


execute at @e[tag=shatter_sculpture] run particle flame ~ ~0.5 ~ 0.3 0.8 0.3 0.01 10 normal
execute at @e[tag=shatter_sculpture] run particle block{block_state:{Name:"minecraft:red_stained_glass"}} ~ ~0.1 ~ 3 1 3 0.01 100 normal
execute at @e[tag=shatter_sculpture] run particle block{block_state:{Name:"minecraft:red_stained_glass"}} ~ ~0.5 ~ 2 1 2 0.01 30 normal
execute at @e[tag=shatter_sculpture] run particle block{block_state:{Name:"minecraft:red_stained_glass"}} ~ ~0.5 ~ 0.6 0.8 0.6 0.01 30 normal
execute at @e[tag=shatter_sculpture] run particle block{block_state:{Name:"minecraft:glass"}} ~ ~0.5 ~ 0.8 1 0.8 0.01 50 normal
execute at @e[tag=shatter_sculpture,limit=1] run playsound block.glass.break master @a[distance=..15] ~ ~ ~ 1 0.1 1
execute at @e[tag=shatter_sculpture,limit=1] run playsound block.glass.break master @a[distance=..15] ~ ~ ~ 1 0.5 1
execute at @e[tag=sculpture,tag=shatter_sculpture] run particle small_flame ~ ~0.5 ~ 2 1 2 0.01 100
kill @e[tag=shatter_sculpture] 



# glass wonder

scoreboard players add @a[scores={char=75,s0_timer=1..}] s0_timer 1
scoreboard players set @a[scores={char=75,s0_timer=40..}] s0_timer 0

scoreboard players set @a[scores={s1_timer=1,char=75}] spellCD1 160
scoreboard players add @a[scores={s1_timer=1..,char=75}] s1_timer 1
scoreboard players set @a[scores={s1_timer=160..,char=75}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=75}] spellCD2 260
scoreboard players add @a[scores={s2_timer=1..,char=75}] s2_timer 1
scoreboard players set @a[scores={s2_timer=260..,char=75}] s2_timer 0

execute as @a[scores={char=75}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:0b}]}] run clear @a[scores={char=75}] warped_fungus_on_a_stick[custom_data={s0:1}]
item replace entity @a[scores={char=75}] hotbar.0 with warped_fungus_on_a_stick[custom_data={s0:1},minecraft:item_model="minecraft:copper_hoe",minecraft:custom_name={bold:1b,color:"gray",text:"Burned Hands"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.7d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=0.8] 1


execute as @a[scores={char=75,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=75}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=75,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:red_stained_glass_pane",minecraft:custom_name={text:"Deat Heat Pulse",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1

execute as @a[scores={char=75,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=75}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=75,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:sheaf_pottery_sherd",minecraft:custom_name={text:"Thermal Fracture",color:"dark_aqua",bold:1b}] 1

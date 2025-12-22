kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:wooden_hoe"}}]


#passive

execute at @a[scores={char=47}] as @a[tag=valid_spell_target,distance=..5,scores={HPercentage=..50}] unless score @s Team = @p[scores={char=47}] Team run scoreboard players set @s CC_defiled 10
execute at @a[scores={char=47}] as @a[tag=valid_spell_target,distance=..5,scores={HPercentage=..50}] at @s unless score @s Team = @p[scores={char=47}] Team run particle minecraft:falling_dust{block_state:{Name:"minecraft:sandstone"}} ~ ~0.3 ~ 0.5 0.8 0.5 1 3
execute at @a[scores={char=47}] as @a[tag=valid_spell_target,distance=..5,scores={HPercentage=..50}] at @s unless score @s Team = @p[scores={char=47}] Team run particle minecraft:falling_dust{block_state:{Name:"minecraft:coal_block"}} ~ ~0.3 ~ 0.5 0.8 0.5 1 3

#winds of withering

scoreboard players set @a[scores={char=47,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=47,s1_timer=1,CC_silence=1..}] s1_timer 280

scoreboard players set @a[scores={char=47,s1_timer=1..80,CC_silence=1..}] spellCD1 220
scoreboard players set @a[scores={char=47,s1_timer=1..80,CC_silence=1..}] s1_timer 81

execute at @a[scores={char=47,s1_timer=1..80,CC_silence=0}] run playsound block.sand.place master @a[distance=..12] ~ ~ ~ 0.1 0.2 1
execute at @a[scores={char=47,s1_timer=1..80,CC_silence=0}] run particle falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 3 1 3 0 10

execute at @a[scores={char=47,s1_timer=1..80,CC_silence=0}] as @a[distance=..4] unless score @s Team = @p[scores={char=47}] Team run effect give @s slowness 1 1


execute at @a[scores={char=47,s1_timer=2,CC_silence=0}] run playsound entity.husk.hurt master @a[distance=..12] ~ ~ ~ 1 0.5 1
execute at @a[scores={char=47,s1_timer=2,CC_silence=0}] run particle entity_effect{color:[0.45,0.36,0.15,1.0]} ~ ~ ~ 3 2 3 0 100
execute at @a[scores={char=47,s1_timer=2,CC_silence=0}] as @a[distance=..4] unless score @s Team = @p[scores={char=47}] Team run effect give @s poison 2 1
execute at @a[scores={char=47,s1_timer=2,CC_silence=0}] as @a[distance=..4] unless score @s Team = @p[scores={char=47}] Team run effect give @p[scores={char=47}] regeneration 1 3 true

execute at @a[scores={char=47,s1_timer=40,CC_silence=0}] run playsound entity.husk.hurt master @a[distance=..12] ~ ~ ~ 1 0.5 1
execute at @a[scores={char=47,s1_timer=40,CC_silence=0}] run particle entity_effect{color:[0.45,0.36,0.15,1.0]} ~ ~ ~ 3 2 3 0 100
execute at @a[scores={char=47,s1_timer=40,CC_silence=0}] as @a[distance=..4] unless score @s Team = @p[scores={char=47}] Team run effect give @s poison 2 1
execute at @a[scores={char=47,s1_timer=40,CC_silence=0}] as @a[distance=..4] unless score @s Team = @p[scores={char=47}] Team run effect give @p[scores={char=47}] regeneration 1 3 true

execute at @a[scores={char=47,s1_timer=60,CC_silence=0}] run playsound entity.husk.hurt master @a[distance=..12] ~ ~ ~ 1 0.5 1
execute at @a[scores={char=47,s1_timer=60,CC_silence=0}] run particle entity_effect{color:[0.45,0.36,0.15,1.0]} ~ ~ ~ 3 2 3 0 100
execute at @a[scores={char=47,s1_timer=60,CC_silence=0}] as @a[distance=..4] unless score @s Team = @p[scores={char=47}] Team run effect give @s poison 2 1
execute at @a[scores={char=47,s1_timer=60,CC_silence=0}] as @a[distance=..4] unless score @s Team = @p[scores={char=47}] Team run effect give @p[scores={char=47}] regeneration 1 3 true



execute at @a[scores={char=47}] unless entity @e[tag=winds_visual_1] run summon marker ~ ~ ~ {Tags:["winds_visual_1","winds_visuals","entities_mummy"]}
execute at @a[scores={char=47}] unless entity @e[tag=winds_visual_2] run summon marker ~ ~ ~ {Tags:["winds_visual_2","winds_visuals","entities_mummy"]}
execute as @a[scores={char=47}] at @s run tp @e[tag=winds_visuals] ~ ~ ~

execute as @e[tag=winds_visual_1] at @s run tp @s ~ ~ ~ ~3 ~
execute as @e[tag=winds_visual_2] at @s run tp @s ~ ~ ~ ~-11 ~

execute at @a[scores={char=47,s1_timer=1..60,CC_silence=0}] at @e[tag=winds_visual_1] run particle dust{color:[0.31,0.25,0.2],scale:1} ^ ^1 ^1.8 0.1 0.1 0.1 0 4
execute at @a[scores={char=47,s1_timer=1..60,CC_silence=0}] at @e[tag=winds_visual_1] run particle dust{color:[0.31,0.25,0.2],scale:1} ^-1.7 ^1 ^-1.4 0.1 0.1 0.1 0 4
execute at @a[scores={char=47,s1_timer=1..60,CC_silence=0}] at @e[tag=winds_visual_1] run particle dust{color:[0.31,0.25,0.2],scale:1} ^1.7 ^1 ^-1.4 0.1 0.1 0.1 0 4

execute at @a[scores={char=47,s1_timer=1..60,CC_silence=0}] at @e[tag=winds_visual_2] run particle dust{color:[0.49,0.4,0.35],scale:1} ^ ^1 ^2.8 0.1 0.1 0.1 0.1 8
execute at @a[scores={char=47,s1_timer=1..60,CC_silence=0}] at @e[tag=winds_visual_2] run particle dust{color:[0.49,0.4,0.35],scale:1} ^-2.7 ^1 ^-2.4 0.1 0.1 0.1 0 8
execute at @a[scores={char=47,s1_timer=1..60,CC_silence=0}] at @e[tag=winds_visual_2] run particle dust{color:[0.49,0.4,0.35],scale:1} ^2.7 ^1 ^-2.4 0.1 0.1 0.1 0 8

#arid embrace

scoreboard players set @a[scores={char=47,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=47,s2_timer=1,CC_silence=1..}] s2_timer 240

execute at @a[scores={char=47,s2_timer=1,CC_silence=0}] run playsound entity.vex.death master @a[distance=..12] ~ ~ ~ 0.5 0.6 1
execute at @a[scores={char=47,s2_timer=2,CC_silence=0}] run playsound entity.husk.death master @a[distance=..12] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=47,s2_timer=7,CC_silence=0}] run playsound entity.husk.death master @a[distance=..12] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=47,s2_timer=2,CC_silence=0}] run particle block{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 0.5 1.0 0.2 1 200
execute at @a[scores={char=47,s2_timer=2,CC_silence=0}] run particle block{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 4.5 1 4.5 1 600
execute at @a[scores={char=47,s2_timer=2,CC_silence=0}] run particle sculk_charge_pop ~ ~ ~ 5 0.5 5 0 300

execute at @a[scores={char=47,s2_timer=2,CC_silence=0}] as @a[tag=valid_spell_target,distance=..8] unless score @s Team = @p[scores={char=47}] Team run scoreboard players set @s embrace 21


scoreboard players set @a[scores={embrace=20}] CC_stun 40

scoreboard players set @a[scores={embrace=20}] CC_intangible 20
execute at @a[scores={embrace=20}] run particle block{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 0.2 2.5 0.2 1 150
execute at @a[scores={embrace=20}] run particle sculk_charge_pop ~ ~ ~ 0.5 1.5 0.5 0.1 100
execute at @a[scores={embrace=20}] run summon marker ~ ~ ~ {Tags:["mummy_pull","entities_mummy"],NoGravity:1b}
execute as @e[tag=mummy_pull] at @s run tp @p[distance=..1,scores={embrace=19},limit=1]
execute at @a[scores={embrace=19}] as @e[distance=..1,tag=mummy_pull,limit=1] at @s run tp @s ~ ~0.5 ~
execute at @a[scores={embrace=19}] as @e[tag=mummy_pull] at @s run tp @s ~ ~ ~ facing entity @p[scores={char=47}]

execute as @a[scores={embrace=15..19}] at @s run tp @e[tag=mummy_pull,sort=nearest,limit=1]

execute as @e[tag=mummy_pull] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=mummy_pull] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=mummy_pull] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=mummy_pull] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=mummy_pull] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=mummy_pull] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute as @e[tag=mummy_pull] at @s run tp @s ^ ^ ^0.6

execute at @e[tag=mummy_pull] run playsound block.sand.break master @a[distance=..8] ~ ~ ~ 1 0.2 1

execute at @a[scores={embrace=15}] run kill @e[distance=..1,tag=mummy_pull]
scoreboard players remove @a[scores={embrace=1..}] embrace 1


# mummy

scoreboard players set @a[scores={char=47}] MaxHP 30

scoreboard players set @a[scores={char=47,s1_timer=1}] spellCD1 300
scoreboard players add @a[scores={char=47,s1_timer=1..}] s1_timer 1
scoreboard players set @a[scores={char=47,s1_timer=301..}] s1_timer 0

scoreboard players set @a[scores={char=47,s2_timer=1}] spellCD2 260
scoreboard players add @a[scores={char=47,s2_timer=1..}] s2_timer 1
scoreboard players set @a[scores={char=47,s2_timer=261..}] s2_timer 0


execute as @a[scores={char=47}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_hoe",Slot:0b}]}] run clear @a[scores={char=47}] wooden_hoe
item replace entity @a[scores={char=47}] hotbar.0 with minecraft:wooden_hoe[minecraft:custom_name={bold:1b,color:"gray",text:"Dried Limb"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.8d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=47,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=47}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=47,s1_timer=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:dead_bush",minecraft:custom_name={text:"Wind of Withering",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=47,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=47}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=47,s2_timer=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:mojang_banner_pattern",minecraft:custom_name={text:"Arid Embrace",color:"dark_aqua",bold:1b}] 1



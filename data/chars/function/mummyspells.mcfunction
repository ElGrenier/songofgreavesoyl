kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:dead_bush"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:mojang_banner_pattern"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:wooden_hoe"}}]


#passive

execute at @a[scores={char=47},team=yellow] run scoreboard players set @a[distance=..5,scores={HPercentage=..50},team=purple] CC_defiled 10
execute at @a[scores={char=47},team=purple] run scoreboard players set @a[distance=..5,scores={HPercentage=..50},team=yellow] CC_defiled 10

execute at @a[scores={char=47},team=yellow] at @a[distance=..5,scores={HPercentage=..50},team=purple] run particle minecraft:falling_dust{block_state:{Name:"minecraft:sandstone"}} ~ ~0.3 ~ 0.5 0.8 0.5 1 3
execute at @a[scores={char=47},team=purple] at @a[distance=..5,scores={HPercentage=..50},team=yellow] run particle minecraft:falling_dust{block_state:{Name:"minecraft:sandstone"}} ~ ~0.3 ~ 0.5 0.8 0.5 1 3


#winds of withering

scoreboard players set @a[scores={char=47,spell_mumm_1_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=47,spell_mumm_1_1=1,CC_silence=1..}] spell_mumm_1_1 280

scoreboard players set @a[scores={char=47,spell_mumm_1_1=1..80,CC_silence=1..}] spellCD1 220
scoreboard players set @a[scores={char=47,spell_mumm_1_1=1..80,CC_silence=1..}] spell_mumm_1_1 81

execute at @a[scores={char=47,spell_mumm_1_1=1..80,CC_silence=0}] run playsound minecraft:block.sand.place master @a[distance=..12] ~ ~ ~ 0.1 0.2 1
execute at @a[scores={char=47,spell_mumm_1_1=1..80,CC_silence=0}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 4 2 4 0 20

execute at @a[scores={char=47,spell_mumm_1_1=1..80,CC_silence=0},team=purple] run effect give @a[distance=..4,team=yellow] minecraft:slowness 1 1
execute at @a[scores={char=47,spell_mumm_1_1=1..80,CC_silence=0},team=yellow] run effect give @a[distance=..4,team=purple] minecraft:slowness 1 1

execute at @a[scores={char=47,spell_mumm_1_1=2,CC_silence=0}] run playsound minecraft:entity.husk.hurt master @a[distance=..12] ~ ~ ~ 1 0.5 1
execute at @a[scores={char=47,spell_mumm_1_1=2,CC_silence=0}] run particle entity_effect{color:[0.45,0.36,0.15,1.0]} ~ ~ ~ 3 2 3 0 100
execute at @a[scores={char=47,spell_mumm_1_1=2,CC_silence=0},team=purple] run effect give @a[distance=..4,team=yellow] minecraft:poison 2 1
execute at @a[scores={char=47,spell_mumm_1_1=2,CC_silence=0},team=yellow] run effect give @a[distance=..4,team=purple] minecraft:poison 2 1
execute at @a[scores={char=47,spell_mumm_1_1=2,CC_silence=0},team=purple] if entity @a[distance=..4,team=yellow] run effect give @a[scores={char=47}] minecraft:regeneration 1 3 true
execute at @a[scores={char=47,spell_mumm_1_1=2,CC_silence=0},team=yellow] if entity @a[distance=..4,team=purple] run effect give @a[scores={char=47}] minecraft:regeneration 1 3 true

execute at @a[scores={char=47,spell_mumm_1_1=40,CC_silence=0}] run playsound minecraft:entity.husk.hurt master @a[distance=..12] ~ ~ ~ 1 0.5 1
execute at @a[scores={char=47,spell_mumm_1_1=40,CC_silence=0}] run particle entity_effect{color:[0.45,0.36,0.15,1.0]} ~ ~ ~ 3 2 3 0 100
execute at @a[scores={char=47,spell_mumm_1_1=40,CC_silence=0},team=purple] run effect give @a[distance=..4,team=yellow] minecraft:poison 2 1
execute at @a[scores={char=47,spell_mumm_1_1=40,CC_silence=0},team=yellow] run effect give @a[distance=..4,team=purple] minecraft:poison 2 1
execute at @a[scores={char=47,spell_mumm_1_1=40,CC_silence=0},team=purple] if entity @a[distance=..4,team=yellow] run effect give @a[scores={char=47}] minecraft:regeneration 1 3 true
execute at @a[scores={char=47,spell_mumm_1_1=40,CC_silence=0},team=yellow] if entity @a[distance=..4,team=purple] run effect give @a[scores={char=47}] minecraft:regeneration 1 3 true

execute at @a[scores={char=47,spell_mumm_1_1=60,CC_silence=0}] run playsound minecraft:entity.husk.hurt master @a[distance=..12] ~ ~ ~ 1 0.5 1
execute at @a[scores={char=47,spell_mumm_1_1=60,CC_silence=0}] run particle entity_effect{color:[0.45,0.36,0.15,1.0]} ~ ~ ~ 3 2 3 0 100
execute at @a[scores={char=47,spell_mumm_1_1=60,CC_silence=0},team=purple] run effect give @a[distance=..4,team=yellow] minecraft:poison 2 1
execute at @a[scores={char=47,spell_mumm_1_1=60,CC_silence=0},team=yellow] run effect give @a[distance=..4,team=purple] minecraft:poison 2 1
execute at @a[scores={char=47,spell_mumm_1_1=60,CC_silence=0},team=purple] if entity @a[distance=..4,team=yellow] run effect give @a[scores={char=47}] minecraft:regeneration 1 3 true
execute at @a[scores={char=47,spell_mumm_1_1=60,CC_silence=0},team=yellow] if entity @a[distance=..4,team=purple] run effect give @a[scores={char=47}] minecraft:regeneration 1 3 true



execute at @a[scores={char=47}] unless entity @e[tag=winds_visual_1] run summon minecraft:marker ~ ~ ~ {Tags:["winds_visual_1","winds_visuals"]}
execute at @a[scores={char=47}] unless entity @e[tag=winds_visual_2] run summon minecraft:marker ~ ~ ~ {Tags:["winds_visual_2","winds_visuals"]}
execute as @a[scores={char=47}] at @s run tp @e[tag=winds_visuals] ~ ~ ~

execute as @e[tag=winds_visual_1] at @s run tp @s ~ ~ ~ ~3 ~
execute as @e[tag=winds_visual_2] at @s run tp @s ~ ~ ~ ~-11 ~

execute at @a[scores={char=47,spell_mumm_1_1=1..60,CC_silence=0}] at @e[tag=winds_visual_1] run particle entity_effect{color:[0.45,0.36,0.15,1.0]} ^ ^1 ^1.8 0.1 0.1 0.1 0 4
execute at @a[scores={char=47,spell_mumm_1_1=1..60,CC_silence=0}] at @e[tag=winds_visual_1] run particle entity_effect{color:[0.45,0.36,0.15,1.0]} ^-1.7 ^1 ^-1.4 0.1 0.1 0.1 0 4
execute at @a[scores={char=47,spell_mumm_1_1=1..60,CC_silence=0}] at @e[tag=winds_visual_1] run particle entity_effect{color:[0.45,0.36,0.15,1.0]} ^1.7 ^1 ^-1.4 0.1 0.1 0.1 0 4

execute at @a[scores={char=47,spell_mumm_1_1=1..60,CC_silence=0}] at @e[tag=winds_visual_2] run particle entity_effect{color:[0.45,0.36,0.15,1.0]} ^ ^1 ^2.8 0.1 0.1 0.1 0.1 8
execute at @a[scores={char=47,spell_mumm_1_1=1..60,CC_silence=0}] at @e[tag=winds_visual_2] run particle entity_effect{color:[0.45,0.36,0.15,1.0]} ^-2.7 ^1 ^-2.4 0.1 0.1 0.1 0 8
execute at @a[scores={char=47,spell_mumm_1_1=1..60,CC_silence=0}] at @e[tag=winds_visual_2] run particle entity_effect{color:[0.45,0.36,0.15,1.0]} ^2.7 ^1 ^-2.4 0.1 0.1 0.1 0 8

#arid embrace

scoreboard players set @a[scores={char=47,spell_mumm_2_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=47,spell_mumm_2_1=1,CC_silence=1..}] spell_mumm_2_1 240

execute at @a[scores={char=47,spell_mumm_2_1=2,CC_silence=0}] run playsound minecraft:entity.husk.death master @a[distance=..12] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=47,spell_mumm_2_1=2,CC_silence=0}] run particle minecraft:block{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 0.5 1.5 0.2 1 200
execute at @a[scores={char=47,spell_mumm_2_1=2,CC_silence=0}] run particle minecraft:block{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 8 0.2 8 1 600

execute at @a[scores={char=47,spell_mumm_2_1=2,CC_silence=0},team=purple] run scoreboard players set @a[distance=..8,team=yellow] embrace 21
execute at @a[scores={char=47,spell_mumm_2_1=2,CC_silence=0},team=yellow] run scoreboard players set @a[distance=..8,team=purple] embrace 21

scoreboard players set @a[scores={embrace=20}] CC_stun 40

scoreboard players set @a[scores={embrace=20}] CC_intangible 20
execute at @a[scores={embrace=20}] run particle minecraft:block{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 0.2 2.5 0.2 1 150
execute at @a[scores={embrace=20}] run particle minecraft:enchanted_hit ~ ~ ~ 0.5 1.5 0.5 0.1 100
execute at @a[scores={embrace=20}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["mummy_pull"],NoGravity:1b}
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

execute at @e[tag=mummy_pull] run playsound minecraft:block.sand.break master @a[distance=..8] ~ ~ ~ 1 0.2 1

execute at @a[scores={embrace=15}] run kill @e[distance=..1,tag=mummy_pull]
scoreboard players remove @a[scores={embrace=1..}] embrace 1


# mummy

scoreboard players add @a[scores={spell_mumm_1=1..}] spell_mumm_1_1 1
item replace entity @a[scores={char=47,spell_mumm_1_1=300..}] hotbar.1 with minecraft:dead_bush[minecraft:custom_name={text:"Wind of Withering",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_mumm_1_1=301..}] spell_mumm_1 0
scoreboard players set @a[scores={spell_mumm_1_1=301..}] spell_mumm_1_1 0
scoreboard players set @a[scores={spell_mumm_1_1=1}] spellCD1 300

scoreboard players add @a[scores={spell_mumm_2=1..}] spell_mumm_2_1 1
item replace entity @a[scores={char=47,spell_mumm_2_1=260..}] hotbar.2 with minecraft:mojang_banner_pattern[minecraft:custom_name={text:"Arid Embrace",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_mumm_2_1=261..}] spell_mumm_2 0
scoreboard players set @a[scores={spell_mumm_2_1=261..}] spell_mumm_2_1 0
scoreboard players set @a[scores={spell_mumm_2_1=1}] spellCD2 260

execute as @a[scores={char=47}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_hoe",Slot:0b}]}] run clear @a[scores={char=47}] minecraft:wooden_hoe
item replace entity @a[scores={char=47}] hotbar.0 with minecraft:wooden_hoe[minecraft:custom_name={bold:1b,color:"gray",text:"Dried Limb"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.8d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=47,spell_mumm_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:dead_bush",Slot:1b}]}] run clear @a[scores={char=47}] minecraft:dead_bush
item replace entity @a[scores={char=47,spell_mumm_1=0}] hotbar.1 with minecraft:dead_bush[minecraft:custom_name={text:"Wind of Withering",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=47,spell_mumm_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:mojang_banner_pattern",Slot:2b}]}] run clear @a[scores={char=47}] minecraft:mojang_banner_pattern
item replace entity @a[scores={char=47,spell_mumm_2=0}] hotbar.2 with minecraft:mojang_banner_pattern[minecraft:custom_name={text:"Arid Embrace",color:"dark_aqua",bold:1b}] 1

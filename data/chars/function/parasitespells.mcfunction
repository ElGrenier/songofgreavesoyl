kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:crimson_fungus",count:1}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_wart",count:1}}]


#parasitic link
execute at @a[scores={char=29},team=purple] if entity @a[distance=1..5,team=purple] run scoreboard players add @a[scores={char=29}] regen 1
execute at @a[scores={char=29},team=purple] if entity @a[distance=1..5,team=purple] run effect give @a[scores={char=29}] minecraft:resistance 2 2 true
execute at @a[scores={char=29},team=yellow] if entity @a[distance=1..5,team=yellow] run scoreboard players add @a[scores={char=29}] regen 1
execute at @a[scores={char=29},team=yellow] if entity @a[distance=1..5,team=yellow] run effect give @a[scores={char=29}] minecraft:resistance 2 2 true


#hunger of the mold
execute at @a[scores={char=29,spell_para_1_1=1,CC_silence=0}] run playsound minecraft:block.roots.place master @a ~ ~ ~ 1 0.1 1
execute at @a[scores={char=29,spell_para_1_1=1,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Small:1b,Marker:1b,Tags:["shroom"],equipment:{head:{id:"minecraft:nether_wart_block",count:1}}}
execute at @a[scores={char=29,spell_para_1_1=2}] run tp @e[tag=shroom] @a[scores={char=29},limit=1]
execute at @a[scores={char=29,spell_para_1_1=2}] run tp @e[tag=shroom] ~ ~0.5 ~
execute at @e[tag=shroom] run particle minecraft:block{block_state:{Name:"minecraft:nether_wart_block"}} ~ ~ ~ 0.5 1 0.5 0.1 10

execute as @e[tag=shroom] at @s unless block ^ ^1 ^1 #minecraft:dash run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["infectedground"],NoGravity:1b}
execute as @e[tag=shroom] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=shroom] at @s run tp @s ^ ^ ^0.5
execute at @a[scores={char=29,spell_para_1_1=30}] run kill @e[tag=shroom]

execute at @e[tag=infectedground,scores={spore_life=1..4}] run particle minecraft:block{block_state:{Name:"minecraft:nether_wart_block"}} ~ ~ ~ 3 1 3 0.01 50
execute at @e[tag=infectedground] run particle minecraft:block{block_state:{Name:"minecraft:nether_wart"}} ~ ~ ~ 3 1 3 0.01 100
execute at @e[tag=infectedground] run particle minecraft:crimson_spore ~ ~ ~ 2 0.5 2 0.1 50

scoreboard players add @e[tag=infectedground] spore_life 1
kill @e[tag=infectedground,scores={spore_life=100..}]
execute at @e[tag=infectedground,scores={spore_life=2}] run playsound minecraft:block.nether_wart.break master @a ~ ~ ~ 1 0.5 1
execute as @e[tag=infectedground] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~0.5 ~
execute as @e[tag=infectedground] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~

execute at @e[tag=infectedground] if entity @a[scores={char=29},team=purple] run scoreboard players set @a[distance=..5,team=yellow] CC_defiled 20
execute at @e[tag=infectedground] if entity @a[scores={char=29},team=yellow] run scoreboard players set @a[distance=..5,team=purple] CC_defiled 20
execute at @e[tag=infectedground] if entity @a[scores={char=29},team=purple] run effect give @a[distance=..5,team=yellow] minecraft:slowness 2 1 true
execute at @e[tag=infectedground] if entity @a[scores={char=29},team=yellow] run effect give @a[distance=..5,team=purple] minecraft:slowness 2 1 true

execute at @e[tag=infectedground] if entity @a[scores={char=29},team=yellow] if entity @a[scores={char=11},team=purple] run kill @e[distance=..5,tag=bomb]
execute at @e[tag=infectedground] if entity @a[scores={char=29},team=yellow] if entity @a[scores={char=21},team=purple] run kill @e[distance=..5,tag=necrominion]
execute at @e[tag=infectedground] if entity @a[scores={char=29},team=yellow] if entity @a[scores={char=30},team=purple] run kill @e[distance=..5,tag=turret]
execute at @e[tag=infectedground] if entity @a[scores={char=29},team=yellow] if entity @a[scores={char=41},team=purple] run kill @e[distance=..5,tag=scoutcrawler]
execute at @e[tag=infectedground] if entity @a[scores={char=29},team=yellow] if entity @a[scores={char=41},team=purple] run kill @e[distance=..5,tag=swarmer_egg]
execute at @e[tag=infectedground] if entity @a[scores={char=29},team=yellow] if entity @a[scores={char=41},team=purple] run kill @e[distance=..5,tag=swarmerboi]

execute at @e[tag=infectedground] if entity @a[scores={char=29},team=purple] if entity @a[scores={char=11},team=yellow] run kill @e[distance=..5,tag=bomb]
execute at @e[tag=infectedground] if entity @a[scores={char=29},team=purple] if entity @a[scores={char=21},team=yellow] run kill @e[distance=..5,tag=necrominion]
execute at @e[tag=infectedground] if entity @a[scores={char=29},team=purple] if entity @a[scores={char=30},team=yellow] run kill @e[distance=..5,tag=turret]
execute at @e[tag=infectedground] if entity @a[scores={char=29},team=purple] if entity @a[scores={char=41},team=yellow] run kill @e[distance=..5,tag=scoutcrawler]
execute at @e[tag=infectedground] if entity @a[scores={char=29},team=purple] if entity @a[scores={char=41},team=yellow] run kill @e[distance=..5,tag=swarmer_egg]
execute at @e[tag=infectedground] if entity @a[scores={char=29},team=purple] if entity @a[scores={char=41},team=yellow] run kill @e[distance=..5,tag=swarmerboi]




#red spores
execute at @a[scores={char=29,spell_para_2_1=2,CC_silence=0}] run playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 1 0.1 1
execute at @a[scores={char=29,spell_para_2_1=2..10,CC_silence=0}] run playsound minecraft:block.nether_wart.break master @a ~ ~ ~ 1 0.1 1
execute at @a[scores={char=29,spell_para_2_1=1..2,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["spores"],NoGravity:1b,Marker:1b}
tp @e[tag=spores,scores={spore_life=1..2}] @a[scores={char=29},limit=1]
execute as @e[tag=spores] at @s run tp @s ^ ^ ^0.8

execute at @e[tag=spores,scores={spore_life=2..3}] run particle minecraft:block{block_state:{Name:"minecraft:nether_wart_block"}} ~ ~1.5 ~ 0.1 0.1 0.1 0.001 5 force
execute at @e[tag=spores,scores={spore_life=4..7}] run particle minecraft:block{block_state:{Name:"minecraft:nether_wart_block"}} ~ ~1.5 ~ 0.5 0.3 0.5 0.01 15 force
execute at @e[tag=spores,scores={spore_life=7..10}] run particle minecraft:block{block_state:{Name:"minecraft:nether_wart_block"}} ~ ~1.5 ~ 0.9 0.6 0.9 0.01 20 force
execute at @e[tag=spores,scores={spore_life=2..3}] run particle minecraft:crimson_spore ~ ~1.5 ~ 0.1 0.1 0.1 0.001 3 force
execute at @e[tag=spores,scores={spore_life=4..7}] run particle minecraft:crimson_spore ~ ~1.5 ~ 0.5 0.3 0.5 0.0001 10 force
execute at @e[tag=spores,scores={spore_life=7..10}] run particle minecraft:crimson_spore ~ ~1.5 ~ 0.9 0.6 0.9 0.00001 20 force


scoreboard players add @e[tag=spores] spore_life 1
kill @e[tag=spores,scores={spore_life=10..}]


execute at @e[tag=spores] if entity @a[scores={char=29},team=purple] run scoreboard players set @a[distance=..2,scores={para_heal=0},team=purple] para_heal 1
execute at @e[tag=spores] if entity @a[scores={char=29},team=yellow] run scoreboard players set @a[distance=..2,scores={para_heal=0},team=yellow] para_heal 1
scoreboard players set @a[scores={char=29}] para_heal 0
scoreboard players add @a[scores={para_heal=1..}] para_heal 1
effect give @a[scores={para_heal=2}] minecraft:instant_health 1 1
execute at @a[scores={para_heal=2..5}] run particle minecraft:block{block_state:{Name:"minecraft:nether_wart"}} ~ ~ ~ 0.7 1 0.7 0.1 40
effect give @a[scores={para_heal=39}] minecraft:instant_health 1 0
execute at @a[scores={para_heal=35..39}] run particle minecraft:block{block_state:{Name:"minecraft:nether_wart"}} ~ ~ ~ 0.7 1 0.7 0.1 40
scoreboard players set @a[scores={para_heal=40..}] para_heal 0

# parasite

scoreboard players add @a[scores={spell_para_1=1..}] spell_para_1_1 1
item replace entity @a[scores={char=29,spell_para_1_1=320..}] hotbar.1 with minecraft:crimson_fungus[minecraft:custom_name={text:"Hunger of The Mold",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_para_1_1=320..}] spell_para_1 0
scoreboard players set @a[scores={spell_para_1_1=320..}] spell_para_1_1 0
scoreboard players set @a[scores={spell_para_1_1=1}] spellCD1 320

scoreboard players add @a[scores={spell_para_2=1..}] spell_para_2_1 1
item replace entity @a[scores={char=29,spell_para_2_1=140..}] hotbar.2 with minecraft:nether_wart[minecraft:custom_name={text:"Red Spores",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_para_2_1=140..}] spell_para_2 0
scoreboard players set @a[scores={spell_para_2_1=140..}] spell_para_2_1 0
scoreboard players set @a[scores={spell_para_2_1=1}] spellCD2 140

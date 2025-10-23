kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:end_rod"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:heart_of_the_sea"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:prismarine_crystals"}}]

#electrocute

scoreboard players set @a[scores={char=28,spell_oper_1_1=1,CC_silence=1..}] spellCD0 20
scoreboard players set @a[scores={char=28,spell_oper_1_1=1,CC_silence=1..}] spell_oper_1_1 40

scoreboard players set @a[scores={char=28,spell_oper_1_1=1..20,CC_silence=1..}] spellCD0 40
scoreboard players set @a[scores={char=28,spell_oper_1_1=1..20,CC_silence=1..}] spell_oper_1_1 21

effect give @a[scores={char=28,spell_oper_1_1=1..2,CC_silence=0}] minecraft:slowness 1 2 true
attribute @p[scores={char=28,spell_oper_1_1=1..2,CC_silence=0}] minecraft:jump_strength base set 0
execute at @a[scores={char=28,spell_oper_1_1=1..20,CC_silence=0}] run particle minecraft:enchanted_hit ~ ~0.5 ~ 0.4 1 0.4 1 20 normal
execute at @a[scores={char=28,spell_oper_1_1=1,CC_silence=0}] run playsound minecraft:block.beacon.activate master @a[distance=..10] ~ ~ ~ 1 2 1
execute at @a[scores={char=28,spell_oper_1_1=20,CC_silence=0}] run playsound minecraft:entity.zombie_villager.cure master @a[distance=..15] ~ ~ ~ 1 2 1
execute at @a[scores={char=28,spell_oper_1_1=20,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["electrocute"],NoGravity:0b}
tp @e[tag=electrocute,limit=1] @a[scores={char=28,spell_oper_1_1=20},limit=1]
attribute @p[scores={char=28,spell_oper_1_1=20}] minecraft:jump_strength base set 0.41


execute at @e[tag=electrocute] run particle minecraft:enchanted_hit ~ ~1.4 ~ 0.1 0.1 0.1 0.0001 20 normal
execute at @e[tag=electrocute] run particle minecraft:enchanted_hit ^ ^1.4 ^-1 0.1 0.1 0.1 0.001 20 normal
execute at @e[tag=electrocute] run particle minecraft:enchanted_hit ^ ^1.4 ^-2 0.1 0.1 0.1 0.001 20 normal
execute as @e[tag=electrocute] at @s run tp @s ^ ^ ^1
execute at @a[scores={char=28,spell_oper_1_1=50..}] run kill @e[tag=electrocute]


execute if entity @a[scores={char=28},team=yellow] at @e[tag=electrocute] run scoreboard players set @e[distance=..1.5,tag=necrominion,team=purple] MinionDamage 1
execute if entity @a[scores={char=28},team=yellow] at @e[tag=electrocute] run scoreboard players set @e[distance=..1.5,tag=turret,team=purple] MinionDamage 1
execute if entity @a[scores={char=28},team=yellow] at @e[tag=electrocute] run scoreboard players set @e[distance=..1.5,tag=swarmerboi,team=purple] MinionDamage 1
execute if entity @a[scores={char=28},team=yellow] at @e[tag=electrocute] run scoreboard players set @e[distance=..1.5,tag=MoldHost,team=purple] MinionDamage 1
execute if entity @a[scores={char=28},team=yellow] at @e[tag=electrocute] run scoreboard players set @e[distance=..1.5,tag=MoldStructure,team=purple] MinionDamage 1

execute if entity @a[scores={char=28},team=yellow] at @e[tag=electrocute] run damage @p[distance=..1.5,team=purple] 6 generic by @p[scores={char=28}] from @p[scores={char=28}]
execute if entity @a[scores={char=28},team=yellow] at @e[tag=electrocute] run effect give @p[distance=..1.5,scores={CC_mindrot=1..},team=purple] minecraft:poison 2 4 true
execute if entity @a[scores={char=28},team=yellow] at @e[tag=electrocute] run scoreboard players set @p[distance=..1.5,scores={CC_mindrot=1..}] CC_mindrot 0
execute if entity @a[scores={char=28},team=yellow] at @e[tag=electrocute] if entity @a[distance=..1.5,team=purple] run kill @e[tag=electrocute]

execute if entity @a[scores={char=28},team=purple] at @e[tag=electrocute] run scoreboard players set @e[distance=..1.5,tag=necrominion,team=yellow] MinionDamage 1
execute if entity @a[scores={char=28},team=purple] at @e[tag=electrocute] run scoreboard players set @e[distance=..1.5,tag=turret,team=yellow] MinionDamage 1
execute if entity @a[scores={char=28},team=purple] at @e[tag=electrocute] run scoreboard players set @e[distance=..1.5,tag=swarmerboi,team=yellow] MinionDamage 1
execute if entity @a[scores={char=28},team=purple] at @e[tag=electrocute] run scoreboard players set @e[distance=..1.5,tag=MoldHost,team=yellow] MinionDamage 1
execute if entity @a[scores={char=28},team=purple] at @e[tag=electrocute] run scoreboard players set @e[distance=..1.5,tag=MoldStructure,team=yellow] MinionDamage 1

execute if entity @a[scores={char=28},team=purple] at @e[tag=electrocute] run damage @p[distance=..1.5,team=yellow] 6 generic by @p[scores={char=28}] from @p[scores={char=28}]
execute if entity @a[scores={char=28},team=purple] at @e[tag=electrocute] run effect give @p[distance=..1.5,scores={CC_mindrot=1..},team=yellow] minecraft:poison 2 4 true
execute if entity @a[scores={char=28},team=purple] at @e[tag=electrocute] run scoreboard players set @p[distance=..1.5,scores={CC_mindrot=1..}] CC_mindrot 0
execute if entity @a[scores={char=28},team=purple] at @e[tag=electrocute] if entity @a[distance=..1.5,team=yellow] run kill @e[tag=electrocute]



scoreboard players add @e[scores={MinionDamage=1..}] MinionDamage 1

effect give @e[type=minecraft:wither_skeleton,scores={MinionDamage=3}] minecraft:instant_health 1 1 true
effect give @e[type=minecraft:husk,scores={MinionDamage=3}] minecraft:instant_health 1 1 true
effect give @e[type=minecraft:zombie,scores={MinionDamage=3}] minecraft:instant_health 1 1 true
effect give @e[type=minecraft:skeleton,scores={MinionDamage=3}] minecraft:instant_health 1 0 true
effect give @e[type=minecraft:spider,scores={MinionDamage=3}] minecraft:instant_damage 1 0 true

scoreboard players set @e[scores={MinionDamage=30..}] MinionDamage 0

#form of knowledge

scoreboard players set @a[scores={char=28,spell_oper_2_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=28,spell_oper_2_1=1,CC_silence=1..}] spell_oper_2_1 280

execute at @a[scores={char=28,spell_oper_2_1=1,CC_silence=0}] run playsound minecraft:block.beacon.power_select master @a[distance=..15] ~ ~ ~ 1 2 1
execute at @a[scores={char=28,spell_oper_2_1=1,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Pose:{Head:[180.0f,0.0f,0.0f]},Invisible:1b,Tags:["knowledge"],NoGravity:0b,equipment:{head:{id:"minecraft:light_blue_stained_glass",count:1}}}
tp @e[tag=knowledge,limit=1] @a[scores={char=28,spell_oper_2_1=1},limit=1]

execute as @e[tag=knowledge] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s

execute at @e[tag=knowledge] run particle minecraft:enchanted_hit ~ ~1.3 ~ 0.8 0.8 0.8 0.01 10 normal
execute at @e[tag=knowledge] run particle minecraft:block{block_state:{Name:"minecraft:diamond_block"}} ~ ~1.1 ~ 0.2 0.2 0.2 0.01 15 normal
execute at @a[scores={char=28,spell_oper_2_1=1..20}] as @e[tag=knowledge] at @s run tp @s ^ ^ ^0.2
execute at @a[scores={char=28,spell_oper_2_1=20..100}] as @e[tag=knowledge] at @s run tp @s ^ ^ ^0.1
#execute as @e[tag=knowledge] at @s run tp @s ^ ^ ^0.2
execute if entity @a[scores={char=28,spell_oper_2_1=30}] at @e[tag=knowledge] run playsound minecraft:block.beacon.deactivate master @a[distance=..20] ~ ~ ~ 1 2 1
execute if entity @a[scores={char=28,spell_oper_2_1=30}] at @e[tag=knowledge] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["knowledgeshoot"],NoGravity:0b}
execute if entity @a[scores={char=28,spell_oper_2_1=50}] at @e[tag=knowledge] run playsound minecraft:block.beacon.deactivate master @a[distance=..20] ~ ~ ~ 1 2 1
execute if entity @a[scores={char=28,spell_oper_2_1=50}] at @e[tag=knowledge] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["knowledgeshoot"],NoGravity:0b}
execute if entity @a[scores={char=28,spell_oper_2_1=70}] at @e[tag=knowledge] run playsound minecraft:block.beacon.deactivate master @a[distance=..20] ~ ~ ~ 1 2 1
execute if entity @a[scores={char=28,spell_oper_2_1=70}] at @e[tag=knowledge] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["knowledgeshoot"],NoGravity:0b}


execute at @a[scores={char=28,spell_oper_2_1=120..}] run kill @e[tag=knowledge]

execute at @e[tag=knowledgeshoot] run particle minecraft:block{block_state:{Name:"minecraft:diamond_block"}} ~ ~1.3 ~ 0.2 0.2 0.2 0.01 40 normal

execute if entity @a[scores={char=28},team=yellow] as @e[tag=knowledgeshoot,scores={knowledgelife=1..2}] at @s run tp @s ~ ~ ~ facing entity @p[team=purple]
execute if entity @a[scores={char=28},team=purple] as @e[tag=knowledgeshoot,scores={knowledgelife=1..2}] at @s run tp @s ~ ~ ~ facing entity @p[team=yellow]
execute as @e[tag=knowledgeshoot] at @s run tp @s ^ ^ ^0.7
scoreboard players add @e[tag=knowledgeshoot] knowledgelife 1
kill @e[tag=knowledgeshoot,scores={knowledgelife=15..}]


execute if entity @a[scores={char=28},team=yellow] at @e[tag=knowledgeshoot] run damage @p[distance=..2,team=purple] 6 generic by @p[scores={char=28}] from @p[scores={char=28}]
execute if entity @a[scores={char=28},team=yellow] at @e[tag=knowledgeshoot] run effect give @p[distance=..2,scores={CC_mindrot=1..},team=purple] minecraft:poison 2 4 true
execute if entity @a[scores={char=28},team=yellow] at @e[tag=knowledgeshoot] run scoreboard players set @p[distance=..2,scores={CC_mindrot=1..}] CC_mindrot 0
execute if entity @a[scores={char=28},team=yellow] at @e[tag=knowledgeshoot] if entity @a[distance=..2,team=purple] run kill @e[tag=knowledgeshoot]


execute if entity @a[scores={char=28},team=purple] at @e[tag=knowledgeshoot] run damage @p[distance=..2,team=yellow] 6 generic by @p[scores={char=28}] from @p[scores={char=28}]
execute if entity @a[scores={char=28},team=purple] at @e[tag=knowledgeshoot] run effect give @p[distance=..2,scores={CC_mindrot=1..},team=yellow] minecraft:poison 2 4 true
execute if entity @a[scores={char=28},team=purple] at @e[tag=knowledgeshoot] run scoreboard players set @p[distance=..2,scores={CC_mindrot=1..}] CC_mindrot 0
execute if entity @a[scores={char=28},team=purple] at @e[tag=knowledgeshoot] if entity @a[distance=..2,team=yellow] run kill @e[tag=knowledgeshoot]


#brain damage

scoreboard players set @a[scores={char=28,spell_oper_3_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=28,spell_oper_3_1=1,CC_silence=1..}] spell_oper_3_1 120

execute at @a[scores={char=28,spell_oper_3_1=1,CC_silence=0}] run playsound minecraft:block.beacon.deactivate master @a[distance=..10] ~ ~ ~ 1 0.1 1
execute at @a[scores={char=28,spell_oper_3_1=1,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["braindamage"],NoGravity:1b}
tp @e[tag=braindamage,limit=1] @a[scores={char=28,spell_oper_3_1=1},limit=1]
execute as @e[tag=braindamage] at @s run tp @s ^ ^ ^0.7

execute at @e[tag=braindamage] run particle minecraft:enchant ~ ~1 ~ 0.1 0.1 0.1 0.001 8 normal
execute at @e[tag=braindamage] run particle minecraft:block{block_state:{Name:"minecraft:light_blue_stained_glass"}} ~ ~1 ~ 0.3 0.3 0.3 0.1 7 normal
execute at @e[tag=braindamage] run particle minecraft:block{block_state:{Name:"minecraft:diamond_block"}} ~ ~1 ~ 0.8 0.8 0.8 0.1 3 normal

execute at @a[scores={char=28,spell_oper_3_1=30}] run kill @e[tag=braindamage]


execute at @e[tag=knowledge] if entity @e[distance=..1,tag=braindamage] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["homingdamage"],NoGravity:1b}
execute at @e[tag=knowledge] if entity @e[distance=..1,tag=braindamage] run playsound minecraft:block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 1 2 1
execute at @e[tag=knowledge] if entity @e[distance=..1,tag=braindamage] run particle minecraft:enchant ~ ~1 ~ 0.7 0.7 0.7 0.1 300 force
execute at @e[tag=knowledge] if entity @e[distance=..1,tag=braindamage] run kill @e[tag=braindamage]

execute if entity @a[scores={char=28},team=yellow] as @e[tag=homingdamage,scores={knowledgelife=1..2}] at @s run tp @s ~ ~ ~ facing entity @p[team=purple]
execute if entity @a[scores={char=28},team=purple] as @e[tag=homingdamage,scores={knowledgelife=1..2}] at @s run tp @s ~ ~ ~ facing entity @p[team=yellow]
execute as @e[tag=homingdamage] at @s run tp @s ^ ^ ^1.5
execute at @e[tag=homingdamage] run particle minecraft:enchant ~ ~1 ~ 0.1 0.1 0.1 0.001 20 normal
execute at @e[tag=homingdamage] run particle minecraft:block{block_state:{Name:"minecraft:light_blue_stained_glass"}} ~ ~1 ~ 0.3 0.3 0.3 0.1 7 normal

scoreboard players add @e[tag=homingdamage] knowledgelife 1
kill @e[tag=homingdamage,scores={knowledgelife=20..}]


execute if entity @a[scores={char=28},team=yellow] at @e[tag=braindamage] run scoreboard players set @p[distance=..2,team=purple] CC_mindrot 100
execute if entity @a[scores={char=28},team=yellow] at @e[tag=braindamage] run effect give @p[distance=..2,team=purple] minecraft:glowing 5 1 true
execute if entity @a[scores={char=28},team=purple] at @e[tag=braindamage] run scoreboard players set @p[distance=..2,team=yellow] CC_mindrot 100
execute if entity @a[scores={char=28},team=purple] at @e[tag=braindamage] run effect give @p[distance=..2,team=yellow] minecraft:glowing 5 1 true

execute if entity @a[scores={char=28},team=yellow] at @e[tag=homingdamage] run scoreboard players set @p[distance=..2,team=purple] CC_mindrot 100
execute if entity @a[scores={char=28},team=yellow] at @e[tag=homingdamage] run effect give @p[distance=..2,team=purple] minecraft:glowing 5 1 true
execute if entity @a[scores={char=28},team=purple] at @e[tag=homingdamage] run scoreboard players set @p[distance=..2,team=yellow] CC_mindrot 100
execute if entity @a[scores={char=28},team=purple] at @e[tag=homingdamage] run effect give @p[distance=..2,team=yellow] minecraft:glowing 5 1 true

execute at @a[scores={CC_mindrot=1..}] run particle minecraft:block{block_state:{Name:"minecraft:diamond_block"}} ~ ~1.6 ~ 0.3 0.1 0.3 0.1 4 force


effect give @a[distance=..3,scores={CC_mindrot=1..}] minecraft:poison 3 2 true
scoreboard players set @a[distance=..3,scores={CC_mindrot=1..}] CC_mindrot 0


# operator

scoreboard players add @a[scores={spell_oper_1=1..}] spell_oper_1_1 1
item replace entity @a[scores={char=28,spell_oper_1_1=60..}] hotbar.0 with minecraft:end_rod[minecraft:custom_name={text:"Electrocute",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1
scoreboard players set @a[scores={spell_oper_1_1=61..}] spell_oper_1 0
scoreboard players set @a[scores={spell_oper_1_1=61..}] spell_oper_1_1 0
scoreboard players set @a[scores={spell_oper_1_1=1}] spellCD0 60

scoreboard players add @a[scores={spell_oper_2=1..}] spell_oper_2_1 1
item replace entity @a[scores={char=28,spell_oper_2_1=300..}] hotbar.1 with minecraft:heart_of_the_sea[minecraft:custom_name={text:"Form of Knowledge",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1
scoreboard players set @a[scores={spell_oper_2_1=301..}] spell_oper_2 0
scoreboard players set @a[scores={spell_oper_2_1=301..}] spell_oper_2_1 0
scoreboard players set @a[scores={spell_oper_2_1=1}] spellCD1 300

scoreboard players add @a[scores={spell_oper_3=1..}] spell_oper_3_1 1
item replace entity @a[scores={char=28,spell_oper_3_1=140..}] hotbar.2 with minecraft:prismarine_crystals[minecraft:custom_name={text:"Brain Damage",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1
scoreboard players set @a[scores={spell_oper_3_1=141..}] spell_oper_3 0
scoreboard players set @a[scores={spell_oper_3_1=141..}] spell_oper_3_1 0
scoreboard players set @a[scores={spell_oper_3_1=1}] spellCD2 140


execute as @a[scores={char=28,spell_oper_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:end_rod",Slot:0b}]}] run clear @a[scores={char=28}] minecraft:end_rod
item replace entity @a[scores={char=28,spell_oper_1=0}] hotbar.0 with minecraft:end_rod[minecraft:custom_name={text:"Electrocute",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1

execute as @a[scores={char=28,spell_oper_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:heart_of_the_sea",Slot:1b}]}] run clear @a[scores={char=28}] minecraft:heart_of_the_sea
item replace entity @a[scores={char=28,spell_oper_2=0}] hotbar.1 with minecraft:heart_of_the_sea[minecraft:custom_name={text:"Form of Knowledge",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1

execute as @a[scores={char=28,spell_oper_3=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:prismarine_crystals",Slot:2b}]}] run clear @a[scores={char=28}] minecraft:prismarine_crystals
item replace entity @a[scores={char=28,spell_oper_3=0}] hotbar.2 with minecraft:prismarine_crystals[minecraft:custom_name={text:"Brain Damage",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1

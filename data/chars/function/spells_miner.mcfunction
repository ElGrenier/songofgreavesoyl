kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_pickaxe"}}]

#passive

#it is just the item on his head

#skullsplitter

scoreboard players set @a[scores={char=40,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=40,s1_timer=1,CC_silence=1..}] s1_timer 120


execute at @a[scores={char=40,s1_timer=1,CC_silence=0}] run playsound entity.player.attack.strong master @a[distance=..15] ~ ~ ~ 1 0.7 1
execute at @a[scores={char=40,s1_timer=1,CC_silence=0}] run summon item_display ~ ~ ~ {Tags:["skullsplit","projectile","entities_miner"],item:{count:1,id:"minecraft:iron_pickaxe"},transformation:{left_rotation:[0.0f,0.7071068f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[2.0f,2.0f,2.0f],translation:[0.0f,0.0f,0.0f]}}
scoreboard players operation @e[tag=projectile,tag=skullsplit] Team = @p[scores={char=40}] Team
tp @e[tag=skullsplit,limit=1] @a[scores={char=40,s1_timer=1},limit=1]
execute at @a[scores={char=40,s1_timer=1,CC_silence=0}] as @e[tag=skullsplit,limit=1] at @s run tp @s ~ ~1 ~ 


execute at @e[tag=skullsplit] run particle sweep_attack ~ ~ ~ 1 0.1 1 0.0001 3 normal
execute at @e[tag=skullsplit] run particle crit ~ ~ ~ 0.1 0.3 0.1 0.0001 3 normal

execute as @e[tag=skullsplit] at @s run tp @s ^ ^ ^0.6
execute at @a[scores={char=40,s1_timer=8..}] run kill @e[tag=skullsplit]

execute as @e[tag=skullsplit] at @s positioned ~ ~ ~ unless block ^ ^ ^0.5 #dash run kill @s
execute as @e[tag=skullsplit] at @s positioned ~ ~ ~ unless block ~ ~ ~ #dash run kill @s

execute at @a[scores={char=40,s1_timer=3}] as @e[tag=skullsplit] run data merge entity @s {item:{count:1,id:"minecraft:iron_pickaxe"},transformation:{left_rotation:[0.21263112f,0.6743797f,0.21263112f,0.6743797f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[2.0f,2.0f,2.0f],translation:[0.0f,0.0f,0.0f]}}
execute at @a[scores={char=40,s1_timer=6}] as @e[tag=skullsplit] run data merge entity @s {item:{count:1,id:"minecraft:iron_pickaxe"},transformation:{left_rotation:[0.40557984f,0.579228f,0.40557984f,0.579228f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[2.0f,2.0f,2.0f],translation:[0.0f,0.0f,0.0f]}}

execute at @e[tag=skullsplit] positioned ~-0.75 ~-0.75 ~-0.75 as @e[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=40}] Team run tag @s add skullsplitted

execute at @e[tag=skullsplitted] run kill @e[tag=skullsplit]
execute at @e[tag=skullsplitted] run particle crit ~ ~1 ~ 0.4 0.6 0.4 0 50
execute at @e[tag=skullsplitted] run playsound item.shield.break master @a[distance=..15] ~ ~ ~ 1 0.7 1
scoreboard players set @e[tag=skullsplitted] CC_shieldbreak 20
damage @e[tag=skullsplitted,limit=1] 5 generic by @p[scores={char=40}] from @p[scores={char=40}]
tag @e remove skullsplitted

#bugbait/taunt

scoreboard players set @a[scores={char=40,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=40,s2_timer=1,CC_silence=1..}] s2_timer 280

execute at @a[scores={char=40,s2_timer=1,CC_silence=0}] run particle dust{color:[1.0,1.0,0.33],scale:1} ~ ~ ~ 2 1 2 0.1 200
execute at @a[scores={char=40,s2_timer=1,CC_silence=0}] run playsound entity.pillager.hurt master @a[distance=..10] ~ ~ ~ 1 0.8 1
effect give @a[scores={char=40,s2_timer=3,CC_silence=0}] resistance 2 2

execute at @a[scores={char=40,s2_timer=2,CC_silence=0}] as @e[tag=valid_spell_target,distance=..5] unless score @s Team = @p[scores={char=40}] Team run tag @s add taunt_source_miner
execute at @a[scores={char=40,s2_timer=2,CC_silence=0}] as @e[tag=taunt_source_miner] run scoreboard players set @s CC_taunt 40
execute at @a[scores={char=40,s2_timer=2,CC_silence=0}] at @e[tag=taunt_source_miner] run particle angry_villager ~ ~1.2 ~ 0.4 0.4 0.4 1 10


execute as @e[tag=taunt_source_miner,scores={CC_taunt=2..}] at @s run rotate @s facing entity @p[scores={char=40}]
execute as @e[tag=taunt_source_miner,scores={CC_taunt=2..}] at @s unless entity @a[distance=..6,scores={char=40}] run scoreboard players set @s CC_taunt 2
tag @a[scores={CC_taunt=..1}] remove taunt_source_miner



# miner

scoreboard players set @a[scores={s1_timer=1,char=40}] spellCD1 160
scoreboard players add @a[scores={s1_timer=1..,char=40}] s1_timer 1
scoreboard players set @a[scores={s1_timer=161..,char=40}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=40}] spellCD2 340
scoreboard players add @a[scores={s2_timer=1..,char=40}] s2_timer 1
scoreboard players set @a[scores={s2_timer=341..,char=40}] s2_timer 0

execute as @a[scores={char=40}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:iron_pickaxe",Slot:0b}]}] run clear @a[scores={char=40}] iron_pickaxe
item replace entity @a[scores={char=40}] hotbar.0 with iron_pickaxe[minecraft:custom_name={bold:1b,color:"gray",text:"Pick"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=1] 1

execute as @a[scores={char=40,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=40}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=40,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:iron_block",minecraft:custom_name={text:"Skullsplitter",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=40,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=40}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=40,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:lantern",minecraft:custom_name={text:"Bugbait",color:"dark_aqua",bold:1b}] 1
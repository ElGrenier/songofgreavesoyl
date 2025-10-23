kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:firework_star"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:beacon"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:light_blue_stained_glass_pane"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_hoe"}}]


#armguard

execute at @a[scores={fate_snared=1..2}] run effect give @a[scores={char=45}] minecraft:absorption 3 1

#snare

scoreboard players set @a[scores={char=45,spell_star_1_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=45,spell_star_1_1=1,CC_silence=1..}] spell_star_1_1 100

execute at @a[scores={char=45,spell_star_1_1=2,CC_silence=0}] run playsound minecraft:block.enchantment_table.use master @a[distance=..10] ~ ~ ~ 1 2 1
execute at @a[scores={char=45,spell_star_1_1=2,CC_silence=0}] run playsound minecraft:entity.allay.ambient_without_item master @a[distance=..10] ~ ~ ~ 1 2 1
execute at @a[scores={char=45,spell_star_1_1=2,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["fate_snare"],NoGravity:1b,Marker:1b}
tp @e[tag=fate_snare,limit=1] @a[scores={char=45,spell_star_1_1=2},limit=1]
execute at @a[scores={char=45,spell_star_1_1=2,CC_silence=0}] as @e[tag=fate_snare] at @s run tp @s ~ ~1 ~
execute as @e[tag=fate_snare] at @s run tp @s ^ ^ ^0.5

execute at @e[tag=fate_snare] run particle minecraft:enchant ~ ~ ~ 0.2 0.2 0.2 0.1 10
execute at @e[tag=fate_snare] run particle minecraft:enchanted_hit ~ ~ ~ 0.1 0.1 0.2 0 4

execute if entity @a[scores={char=45},team=purple] at @e[tag=fate_snare] run scoreboard players set @p[distance=..1.5,team=yellow] fate_snared 1
execute if entity @a[scores={char=45},team=yellow] at @e[tag=fate_snare] run scoreboard players set @p[distance=..1.5,team=purple] fate_snared 1

execute at @a[scores={char=45,spell_star_1_1=30..}] run kill @e[tag=fate_snare]


scoreboard players add @a[scores={fate_snared=1..}] fate_snared 1
execute at @a[scores={fate_snared=1..30}] run playsound minecraft:block.enchantment_table.use master @a[distance=..10] ~ ~ ~ 0.3 0.1 1
execute at @a[scores={fate_snared=1..5}] run kill @e[tag=fate_snare]

execute at @a[scores={fate_snared=1..}] run particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0.1 20
execute at @a[scores={fate_snared=1..}] run particle minecraft:enchanted_hit ~ ~ ~ 1 0.5 1 0.1 6

execute at @a[scores={fate_snared=40}] run playsound minecraft:entity.allay.hurt master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @a[scores={fate_snared=40}] run particle minecraft:enchant ~ ~1 ~ 3 0.3 3 0.1 300
execute at @a[scores={fate_snared=40}] run kill @e[tag=snare_visuals]

execute at @a[scores={fate_snared=40}] if entity @a[scores={char=45},team=yellow] as @a[distance=..4,team=purple] run damage @s 6 generic by @p[scores={char=45}] from @p[scores={char=45}]
execute at @a[scores={fate_snared=40}] if entity @a[scores={char=45},team=purple] as @a[distance=..4,team=yellow] run damage @s 6 generic by @p[scores={char=45}] from @p[scores={char=45}]

execute at @a[scores={fate_snared=1..}] unless entity @e[tag=snare_visual_main] run summon minecraft:marker ~ ~ ~ {Tags:["snare_visual_main","snare_visuals"]}


scoreboard players set @a[scores={fate_snared=41..}] fate_snared 0

execute at @e[tag=fate_snare] unless entity @e[tag=fate_snare_visual] run summon minecraft:marker ~ ~ ~ {Tags:["fate_snare_visual"]}

execute as @e[tag=fate_snare] at @s run tp @e[tag=fate_snare_visual] ~ ~-0.5 ~
execute as @e[tag=fate_snare_visual] at @s run tp @s ~ ~ ~ ~-20 ~
execute at @e[tag=fate_snare_visual] run particle minecraft:enchanted_hit ^1 ^ ^ 0.1 0.1 0.1 0 30
execute at @e[tag=fate_snare_visual] run particle minecraft:enchanted_hit ^-1 ^ ^ 0.1 0.1 0.1 0 30
execute unless entity @e[tag=fate_snare] run kill @e[tag=fate_snare_visual]

execute at @a[scores={fate_snared=40}] unless entity @e[tag=snare_explosion_visual_1] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[0.0f,0.0f],Small:1b,Invisible:1b,Tags:["snare_explosion_visual_1","snare_explosion_visuals"],Marker:1b,equipment:{}}
execute at @a[scores={fate_snared=40}] unless entity @e[tag=snare_explosion_visual_2] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[45.0f,0.0f],Small:1b,Invisible:1b,Tags:["snare_explosion_visual_2","snare_explosion_visuals"],Marker:1b,equipment:{}}
execute at @a[scores={fate_snared=40}] unless entity @e[tag=snare_explosion_visual_3] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[90.0f,0.0f],Small:1b,Invisible:1b,Tags:["snare_explosion_visual_3","snare_explosion_visuals"],Marker:1b,equipment:{}}
execute at @a[scores={fate_snared=40}] unless entity @e[tag=snare_explosion_visual_4] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[135.0f,0.0f],Small:1b,Invisible:1b,Tags:["snare_explosion_visual_4","snare_explosion_visuals"],Marker:1b,equipment:{}}
execute at @a[scores={fate_snared=40}] unless entity @e[tag=snare_explosion_visual_5] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[180.0f,0.0f],Small:1b,Invisible:1b,Tags:["snare_explosion_visual_5","snare_explosion_visuals"],Marker:1b,equipment:{}}
execute at @a[scores={fate_snared=40}] unless entity @e[tag=snare_explosion_visual_6] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[-135.0f,0.0f],Small:1b,Invisible:1b,Tags:["snare_explosion_visual_6","snare_explosion_visuals"],Marker:1b,equipment:{}}
execute at @a[scores={fate_snared=40}] unless entity @e[tag=snare_explosion_visual_7] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[-90.0f,0.0f],Small:1b,Invisible:1b,Tags:["snare_explosion_visual_7","snare_explosion_visuals"],Marker:1b,equipment:{}}
execute at @a[scores={fate_snared=40}] unless entity @e[tag=snare_explosion_visual_8] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[-45.0f,0.0f],Small:1b,Invisible:1b,Tags:["snare_explosion_visual_8","snare_explosion_visuals"],Marker:1b,equipment:{}}


execute as @e[tag=snare_explosion_visual_1] at @s run tp @s ~0.5 ~ ~
execute as @e[tag=snare_explosion_visual_2] at @s run tp @s ~-0.5 ~ ~
execute as @e[tag=snare_explosion_visual_3] at @s run tp @s ~ ~ ~0.5
execute as @e[tag=snare_explosion_visual_4] at @s run tp @s ~ ~ ~-0.5
execute as @e[tag=snare_explosion_visual_5] at @s run tp @s ~0.4 ~ ~0.4
execute as @e[tag=snare_explosion_visual_6] at @s run tp @s ~-0.4 ~ ~-0.4
execute as @e[tag=snare_explosion_visual_7] at @s run tp @s ~0.4 ~ ~-0.4
execute as @e[tag=snare_explosion_visual_8] at @s run tp @s ~-0.4 ~ ~0.4

execute at @e[tag=snare_explosion_visuals] run particle minecraft:enchanted_hit ~ ~1 ~ 0.1 0.1 0.1 0.1 10
scoreboard players add @e[tag=snare_explosion_visuals] fate_snared 1
kill @e[tag=snare_explosion_visuals,scores={fate_snared=8..}]

#pull

scoreboard players set @a[scores={char=45,spell_star_2_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=45,spell_star_2_1=1,CC_silence=1..}] spell_star_2_1 220

execute at @a[scores={char=45,spell_star_2_1=2,CC_silence=0}] run playsound minecraft:block.enchantment_table.use master @a[distance=..10] ~ ~ ~ 1 2 1
execute at @a[scores={char=45,spell_star_2_1=2,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["orrery"],NoGravity:1b,Marker:1b}
tp @e[tag=orrery,limit=1] @a[scores={char=45,spell_star_2_1=2},limit=1]

item replace entity @a[scores={char=45,spell_star_2_1=10,CC_silence=0}] hotbar.2 with minecraft:light_blue_stained_glass_pane[minecraft:custom_name={text:"Pull",color:"dark_aqua",bold:1b}] 1

execute store result entity @e[tag=orrery,limit=1] Rotation[1] float 1 run clear

execute at @e[tag=orrery] unless entity @e[tag=orrery_visual_1] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["orrery_visual_1","orrery_visuals"],equipment:{head:{id:"minecraft:beacon",count:1}}}
execute at @e[tag=orrery] unless entity @e[tag=orrery_visual_2] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:["orrery_visual_2","orrery_visuals"],equipment:{head:{id:"minecraft:obsidian",count:1}}}
execute at @e[tag=orrery] unless entity @e[tag=orrery_visual_3] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:["orrery_visual_3","orrery_visuals"],equipment:{head:{id:"minecraft:obsidian",count:1}}}
execute at @e[tag=orrery] unless entity @e[tag=orrery_visual_4] run summon minecraft:marker ~ ~ ~ {Tags:["orrery_visual_4","orrery_visuals"]}

execute as @e[tag=orrery_pull] at @s run tp @e[tag=orrery_visual_1] ~ ~-0.5 ~
execute as @e[tag=orrery] at @s run tp @e[tag=orrery_visual_1] ~ ~-0.5 ~


execute as @e[tag=orrery_visual_1] at @s run tp @e[tag=orrery_visual_4] ~ ~0.6 ~
execute as @e[tag=orrery_visual_1] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=orrery_visual_4] at @s run tp @s ~ ~ ~ ~-5 ~
execute as @e[tag=orrery_visual_4] at @s run tp @e[tag=orrery_visual_2] ^-1 ^ ^
execute as @e[tag=orrery_visual_4] at @s run tp @e[tag=orrery_visual_3] ^1 ^ ^

execute as @e[tag=orrery_visual_1] at @s unless block ~ ~0.5 ~ #minecraft:dash run kill @s
execute unless entity @e[tag=orrery_visual_1] run kill @e[tag=orrery_visual_2]
execute unless entity @e[tag=orrery_visual_1] run kill @e[tag=orrery_visual_3]
execute unless entity @e[tag=orrery_visual_1] run kill @e[tag=orrery_visual_4]

#execute as @e[tag=orrery] at @s unless block ~ ~1 ~ #dash run kill @s
#execute as @e[tag=orrery] at @s unless block ^ ^ ^1 #dash run kill @s
execute at @a[scores={char=45,spell_star_2_1=1..60}] as @e[tag=orrery] at @s if block ^ ^ ^1 #minecraft:dash run tp @s ^ ^ ^0.2
execute as @e[tag=orrery] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
#execute as @e[tag=orrery] at @s unless block ~ ~ ~ #dash run tp @s ~ ~-0.5 ~


clear @a[scores={char=45,spell_star_2_1=80..}] minecraft:light_blue_stained_glass_pane
execute at @a[scores={char=45,spell_star_2_1=80..}] run kill @e[tag=orrery]
execute at @a[scores={char=45,spell_star_2_1=80..}] run kill @e[tag=orrery_visuals]

item replace entity @a[scores={char=45,spell_star_3=1,CC_silence=1..}] hotbar.2 with minecraft:light_blue_stained_glass_pane[minecraft:custom_name={text:"Pull",color:"dark_aqua",bold:1b}] 1

execute at @a[scores={spell_star_3=1..,CC_silence=0}] at @e[tag=orrery_visual_1] run summon minecraft:marker ~ ~0.5 ~ {Tags:["orrery_pull"]}
execute at @a[scores={spell_star_3=1..,CC_silence=0}] run kill @e[tag=orrery]
execute at @a[scores={spell_star_3=1..,CC_silence=0}] at @e[tag=orrery_pull] run playsound minecraft:block.beacon.deactivate master @a[distance=..10] ~ ~ ~ 1 0.5 1
execute at @a[scores={spell_star_3=1..,CC_silence=0}] at @e[tag=orrery_pull] run playsound minecraft:block.glass.break master @a[distance=..10] ~ ~ ~ 1 0.5 1



scoreboard players set @a[scores={spell_star_3=1..}] spell_star_3 0

execute at @e[tag=orrery_pull] run kill @e[tag=orrery_visuals]
execute at @e[tag=orrery_pull] if entity @a[scores={char=45},team=yellow] run tp @a[distance=..8,scores={CC_intangible=0},team=purple] ~ ~0.5 ~
execute at @e[tag=orrery_pull] if entity @a[scores={char=45},team=purple] run tp @a[distance=..8,scores={CC_intangible=0},team=yellow] ~ ~0.5 ~
execute at @e[tag=orrery_pull] if entity @a[scores={char=45},team=yellow] run effect give @a[distance=..8,team=purple] minecraft:slowness 2 3
execute at @e[tag=orrery_pull] if entity @a[scores={char=45},team=purple] run effect give @a[distance=..8,team=yellow] minecraft:slowness 2 3
execute at @e[tag=orrery_pull] run particle minecraft:enchanted_hit ~ ~0.1 ~ 4 0.1 4 0.1 100
execute at @e[tag=orrery_pull] run particle minecraft:enchanted_hit ~ ~ ~ 0.2 1.2 0.2 0.1 80
execute at @e[tag=orrery_pull] run particle minecraft:block{block_state:{Name:"minecraft:glass"}} ~ ~ ~ 1 1 1 0.1 100
execute at @e[tag=orrery_pull] if entity @a[scores={char=45},team=yellow] if entity @a[distance=..8,team=purple] run effect give @a[scores={char=45}] minecraft:absorption 3 1
execute at @e[tag=orrery_pull] if entity @a[scores={char=45},team=purple] if entity @a[distance=..8,team=yellow] run effect give @a[scores={char=45}] minecraft:absorption 3 1

scoreboard players add @e[tag=orrery_pull] fate_snared 1

kill @e[tag=orrery_pull,scores={fate_snared=5..}]


# stargazer

scoreboard players add @a[scores={spell_star_1=1..}] spell_star_1_1 1
item replace entity @a[scores={char=45,spell_star_1_1=120..}] hotbar.1 with minecraft:firework_star[minecraft:custom_name={text:"Arcane Snare",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1
scoreboard players set @a[scores={spell_star_1_1=121..}] spell_star_1 0
scoreboard players set @a[scores={spell_star_1_1=121..}] spell_star_1_1 0
scoreboard players set @a[scores={spell_star_1_1=1}] spellCD1 120

scoreboard players add @a[scores={spell_star_2=1..}] spell_star_2_1 1
item replace entity @a[scores={char=45,spell_star_2_1=240..}] hotbar.2 with minecraft:beacon[minecraft:custom_name={text:"Arcane Snare",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_star_2_1=241..}] spell_star_2 0
scoreboard players set @a[scores={spell_star_2_1=241..}] spell_star_2_1 0
scoreboard players set @a[scores={spell_star_2_1=80}] spellCD2 160

execute as @a[scores={char=45}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:iron_hoe",Slot:0b}]}] run clear @a[scores={char=45}] minecraft:iron_hoe
item replace entity @a[scores={char=45}] hotbar.0 with minecraft:iron_hoe[minecraft:custom_name={bold:1b,color:"gray",text:"Staff"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.7d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=45,spell_star_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:firework_star",Slot:1b}]}] run clear @a[scores={char=45}] minecraft:firework_star
item replace entity @a[scores={char=45,spell_star_1=0}] hotbar.1 with minecraft:firework_star[minecraft:custom_name={text:"Arcane Snare",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1

execute as @a[scores={char=45,spell_star_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:beacon",Slot:2b}]}] run clear @a[scores={char=45}] minecraft:beacon
item replace entity @a[scores={char=45,spell_star_2=0}] hotbar.2 with minecraft:beacon[minecraft:custom_name={text:"Gravity Field",color:"dark_aqua",bold:1b}] 1

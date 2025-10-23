kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:beetroot_seeds"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:rabbit_hide"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:sand"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_axe"}}]

#claws of the desert

scoreboard players set @a[scores={char=24,spell_witc_1_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=24,spell_witc_1_1=1,CC_silence=1..}] spell_witc_1_1 100

execute at @a[scores={char=24,spell_witc_1_1=1,CC_silence=0}] run playsound minecraft:block.sand.place master @a[distance=..1] ~ ~ ~ 1 0.1 1
execute at @a[scores={char=24,spell_witc_1_1=1,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["sand"],NoGravity:0b,Marker:1b}
tp @e[tag=sand,limit=1] @a[scores={char=24,spell_witc_1_1=1},limit=1]

execute store result entity @e[tag=sand,limit=1] Rotation[1] float 1 run clear

#execute as @e[tag=sand] at @s unless block ^ ^1 ^1 #minecraft:dash run summon minecraft:marker ~ ~ ~ {Tags:["sandexplosion"]}
execute as @e[tag=sand] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s

#execute at @e[tag=sand] run particle block{block_state: 'minecraft:sandstone'} ~ ~ ~ 0.2 1 0.2 0.0001 10 normal
execute at @e[tag=sand] run particle minecraft:block{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 0.2 1 0.2 0.0001 20 normal
execute at @e[tag=sand] run particle minecraft:falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 0.2 1 0.2 0.0001 15 normal
execute at @e[tag=sand] run particle minecraft:wax_on ~ ~1 ~ 0.5 1 0.5 2 2
execute as @e[tag=sand] at @s run tp @s ^ ^ ^0.7

execute at @e[tag=sand] unless entity @e[tag=sand_visual_1] run summon minecraft:armor_stand ~ ~ ~ {Small:0b,Invisible:1b,Tags:["sand_visual_1","sand_visuals"],Marker:1b,equipment:{head:{id:"minecraft:sand",count:1}}}
execute at @e[tag=sand] unless entity @e[tag=sand_visual_2] run summon minecraft:armor_stand ~ ~ ~ {Small:0b,Invisible:1b,Tags:["sand_visual_2","sand_visuals"],Marker:1b,equipment:{head:{id:"minecraft:sand",count:1}}}
execute at @e[tag=sand] unless entity @e[tag=sand_visual_3] run summon minecraft:armor_stand ~ ~ ~ {Small:0b,Invisible:1b,Tags:["sand_visual_3","sand_visuals"],Marker:1b,equipment:{head:{id:"minecraft:sand",count:1}}}
execute at @e[tag=sand] unless entity @e[tag=sand_visual_4] run summon minecraft:armor_stand ~ ~ ~ {Small:0b,Invisible:1b,Tags:["sand_visual_4","sand_visuals"],Marker:1b,equipment:{head:{id:"minecraft:sand",count:1}}}
execute at @e[tag=sand] unless entity @e[tag=sand_visual_5] run summon minecraft:armor_stand ~ ~ ~ {Small:0b,Invisible:1b,Tags:["sand_visual_5","sand_visuals"],Marker:1b,equipment:{head:{id:"minecraft:sand",count:1}}}
execute as @e[tag=sand] at @s run tp @e[tag=sand_visual_1] ~ ~-0.2 ~
execute as @e[tag=sand] at @s run tp @e[tag=sand_visual_2] ~ ~-0.4 ~
execute as @e[tag=sand] at @s run tp @e[tag=sand_visual_3] ~ ~-0.6 ~
execute as @e[tag=sand] at @s run tp @e[tag=sand_visual_4] ~ ~-0.8 ~
execute as @e[tag=sand] at @s run tp @e[tag=sand_visual_5] ~ ~-1 ~
execute unless entity @e[tag=sand] run kill @e[tag=sand_visuals]


execute if entity @a[scores={char=24},team=yellow] at @e[tag=sand] if entity @a[distance=..2,team=purple] run summon minecraft:marker ~ ~ ~ {Tags:["sandexplosion"]}
execute if entity @a[scores={char=24},team=purple] at @e[tag=sand] if entity @a[distance=..2,team=yellow] run summon minecraft:marker ~ ~ ~ {Tags:["sandexplosion"]}
execute if entity @e[tag=sandexplosion] run kill @e[tag=sand]
execute at @a[scores={char=24,spell_witc_1_1=15..}] run kill @e[tag=sand]


execute at @e[tag=sandexplosion] run particle minecraft:falling_dust{block_state:{Name:"minecraft:sandstone"}} ~ ~1 ~ 2 2 2 1 300 force
execute at @e[tag=sandexplosion] run particle minecraft:wax_on ~ ~1 ~ 2 2 2 1 150 force
execute at @e[tag=sandexplosion] run playsound minecraft:block.sand.fall master @a[distance=..20] ~ ~ ~ 1.0 0.6 1.0

execute at @a[scores={char=24},team=purple] at @e[tag=sandexplosion] run effect give @p[distance=..3,team=yellow] minecraft:slowness 2 1
execute at @a[scores={char=24},team=yellow] at @e[tag=sandexplosion] run effect give @p[distance=..3,team=purple] minecraft:slowness 2 1

execute if entity @a[scores={char=24},team=purple] at @e[tag=sandexplosion] run damage @p[distance=..3,team=yellow] 6 generic by @p[scores={char=24}] from @p[scores={char=24}]
execute if entity @a[scores={char=24},team=yellow] at @e[tag=sandexplosion] run damage @p[distance=..3,team=purple] 6 generic by @p[scores={char=24}] from @p[scores={char=24}]

kill @e[tag=sandexplosion]


#approaching sandstorm

scoreboard players set @a[scores={char=24,spell_witc_2_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=24,spell_witc_2_1=1,CC_silence=1..}] spell_witc_2_1 220

scoreboard players set @a[scores={char=24,spell_witc_2_1=1..60,CC_silence=1..}] spellCD2 170
scoreboard players set @a[scores={char=24,spell_witc_2_1=1..60,CC_silence=1..}] spell_witc_2_1 71

effect give @a[scores={char=24,spell_witc_2_1=1,CC_silence=0}] minecraft:speed 3 0
execute at @a[scores={char=24,spell_witc_2_1=1..60,CC_silence=0}] run particle minecraft:wax_on ~ ~0.2 ~ 0.5 0.1 0.5 1 2 force
execute at @a[scores={char=24,spell_witc_2_1=1..40,CC_silence=0}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 1 1 1 1 3 force
execute at @a[scores={char=24,spell_witc_2_1=1..20,CC_silence=0}] run particle minecraft:block{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 0.5 0.1 0.5 0.001 10 force
execute at @a[scores={char=24,spell_witc_2_1=21..40,CC_silence=0}] run particle minecraft:block{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 1 0.2 1 0.001 20 force
execute at @a[scores={char=24,spell_witc_2_1=41..60,CC_silence=0}] run particle minecraft:block{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 2 0.3 2 0.001 30 force

execute at @a[scores={char=24,spell_witc_2_1=61,CC_silence=0},team=purple] at @p[distance=..4,team=yellow] run particle minecraft:falling_dust{block_state:{Name:"minecraft:sandstone"}} ~ ~ ~ 1.5 1.5 1.5 1 300 force
execute at @a[scores={char=24,spell_witc_2_1=61,CC_silence=0},team=yellow] at @p[distance=..4,team=purple] run particle minecraft:falling_dust{block_state:{Name:"minecraft:sandstone"}} ~ ~ ~ 1.5 1.5 1.5 1 300 force
execute at @a[scores={char=24,spell_witc_2_1=61,CC_silence=0},team=purple] at @p[distance=..4,team=yellow] run particle minecraft:wax_on ~ ~ ~ 1.5 1.5 1.5 1 100 force
execute at @a[scores={char=24,spell_witc_2_1=61,CC_silence=0},team=yellow] at @p[distance=..4,team=purple] run particle minecraft:wax_on ~ ~ ~ 1.5 1.5 1.5 1 100 force


execute at @a[scores={char=24,spell_witc_2_1=61..62,CC_silence=0},team=purple] run scoreboard players set @p[distance=..4,team=yellow] CC_stun 30
execute at @a[scores={char=24,spell_witc_2_1=61..62,CC_silence=0},team=yellow] run scoreboard players set @p[distance=..4,team=purple] CC_stun 30
execute at @a[scores={char=24,spell_witc_2_1=61..65,CC_silence=0}] run playsound minecraft:block.sand.fall master @a[distance=..20] ~ ~ ~ 1.0 0.3 1.0

title @a[scores={char=24,spell_witc_2_1=1..75,CC_silence=0}] times 0 20 0
title @a[scores={char=24,spell_witc_2_1=1..75,CC_silence=0}] title {text:" ",type:"text"}
title @a[scores={char=24,spell_witc_2_1=1..19,CC_silence=0}] subtitle [{text:"=",bold:1b,color:"gold",type:"text"},{text:" 3 ",bold:1b,color:"yellow",type:"text"},{text:"=",bold:1b,color:"gold",type:"text"}]
title @a[scores={char=24,spell_witc_2_1=20..39,CC_silence=0}] subtitle [{text:"=",bold:1b,color:"gold",type:"text"},{text:" 2 ",bold:1b,color:"yellow",type:"text"},{text:"=",bold:1b,color:"gold",type:"text"}]
title @a[scores={char=24,spell_witc_2_1=40..59,CC_silence=0}] subtitle [{text:"=",bold:1b,color:"gold",type:"text"},{text:" 1 ",bold:1b,color:"yellow",type:"text"},{text:"=",bold:1b,color:"gold",type:"text"}]
title @a[scores={char=24,spell_witc_2_1=60..70,CC_silence=0}] subtitle {text:"Shraa'um Satt rou",italic:1b,color:"yellow",type:"text"}
title @a[scores={char=24,spell_witc_2_1=71..75,CC_silence=0}] subtitle {text:" ",type:"text"}

#sandbender mantle
scoreboard players add @a[scores={char=24,spell_witc_1_1=1}] passive_witc 1
scoreboard players add @a[scores={char=24,spell_witc_2_1=1}] passive_witc 1


item replace entity @a[scores={char=24,passive_witc=5}] hotbar.3 with minecraft:sand[minecraft:custom_name={text:"Sandbender's Mantle",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:protection":1}] 1
scoreboard players set @a[scores={char=24,passive_witc=5}] passive_witc 6
scoreboard players set @a[scores={char=24,passive_witc=6..}] passive_witc 6

item replace entity @a[scores={char=24,spell_witc_3=1,CC_silence=1..}] hotbar.3 with minecraft:sand[minecraft:custom_name={text:"Sandbender's Mantle",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:protection":1}] 1
scoreboard players set @a[scores={char=24,spell_witc_3=1,CC_silence=1..}] spell_witc_3 0

execute at @a[scores={char=24,spell_witc_3=1,CC_silence=0}] run playsound minecraft:block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 1 1.5 1
execute at @a[scores={char=24,spell_witc_3=1,CC_silence=0}] run playsound minecraft:block.sand.fall master @a[distance=..20] ~ ~ ~ 1.0 0.6 1.0
execute at @a[scores={char=24,spell_witc_3=1..,CC_silence=0}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:sandstone"}} ~ ~ ~ 0.8 1 0.8 1 150 force
execute at @a[scores={char=24,spell_witc_3=1..,CC_silence=0}] run particle minecraft:wax_on ~ ~ ~ 0.5 1 0.5 2 80
effect give @a[scores={char=24,spell_witc_3=1..,CC_silence=0}] minecraft:absorption 5 2
scoreboard players set @a[scores={char=24,spell_witc_3=1..,CC_silence=0}] passive_witc 0
scoreboard players set @a[scores={char=24,spell_witc_3=1..,CC_silence=0}] spell_witc_3 0


title @a[scores={char=24,passive_witc=0}] actionbar [{text:"[ ",color:"gold",bold:1b,type:"text"},{text:"- - - - -",color:"gray",type:"text"},{text:" ]",color:"gold",bold:1b,type:"text"}]
title @a[scores={char=24,passive_witc=1}] actionbar [{text:"[ ",color:"gold",bold:1b,type:"text"},{text:"=",color:"yellow",type:"text"},{text:" - - - -",color:"gray",type:"text"},{text:" ]",color:"gold",bold:1b,type:"text"}]
title @a[scores={char=24,passive_witc=2}] actionbar [{text:"[ ",color:"gold",bold:1b,type:"text"},{text:"= =",color:"yellow",type:"text"},{text:" - - -",color:"gray",type:"text"},{text:" ]",color:"gold",bold:1b,type:"text"}]
title @a[scores={char=24,passive_witc=3}] actionbar [{text:"[ ",color:"gold",bold:1b,type:"text"},{text:"= = =",color:"yellow",type:"text"},{text:" - -",color:"gray",type:"text"},{text:" ]",color:"gold",bold:1b,type:"text"}]
title @a[scores={char=24,passive_witc=4}] actionbar [{text:"[ ",color:"gold",bold:1b,type:"text"},{text:"= = = =",color:"yellow",type:"text"},{text:" -",color:"gray",type:"text"},{text:" ]",color:"gold",bold:1b,type:"text"}]
title @a[scores={char=24,passive_witc=5..6}] actionbar [{text:"[ ",color:"gold",bold:1b,type:"text"},{text:"= = = = =",color:"yellow",type:"text"},{text:" ]",color:"gold",bold:1b,type:"text"}]


# sand witch

scoreboard players add @a[scores={spell_witc_1=1..}] spell_witc_1_1 1
item replace entity @a[scores={char=24,spell_witc_1_1=120..}] hotbar.1 with minecraft:beetroot_seeds[minecraft:custom_name={text:"Claws of the Desert",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1
scoreboard players set @a[scores={spell_witc_1_1=121..}] spell_witc_1 0
scoreboard players set @a[scores={spell_witc_1_1=121..}] spell_witc_1_1 0
scoreboard players set @a[scores={spell_witc_1_1=1}] spellCD1 120

scoreboard players add @a[scores={spell_witc_2=1..}] spell_witc_2_1 1
item replace entity @a[scores={char=24,spell_witc_2_1=220..}] hotbar.2 with minecraft:rabbit_hide[minecraft:custom_name={text:"Approaching Sandstorm",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1
scoreboard players set @a[scores={spell_witc_2_1=221..}] spell_witc_2 0
scoreboard players set @a[scores={spell_witc_2_1=221..}] spell_witc_2_1 0
scoreboard players set @a[scores={spell_witc_2_1=1}] spellCD2 220

execute as @a[scores={char=24}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:golden_axe",Slot:0b}]}] run clear @a[scores={char=24}] minecraft:golden_axe
item replace entity @a[scores={char=24}] hotbar.0 with minecraft:golden_axe[minecraft:custom_name={bold:1b,color:"gray",text:"Mantis Claws"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.65d,operation:"add_multiplied_base",slot:"mainhand"}]] 1


execute as @a[scores={char=24,spell_witc_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:beetroot_seeds",Slot:1b}]}] run clear @a[scores={char=24}] minecraft:beetroot_seeds
item replace entity @a[scores={char=24,spell_witc_1=0}] hotbar.1 with minecraft:beetroot_seeds[minecraft:custom_name={text:"Claws of the Desert",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1

execute as @a[scores={char=24,spell_witc_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:rabbit_hide",Slot:2b}]}] run clear @a[scores={char=24}] minecraft:rabbit_hide
item replace entity @a[scores={char=24,spell_witc_2=0}] hotbar.2 with minecraft:rabbit_hide[minecraft:custom_name={text:"Approaching Sandstorm",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1



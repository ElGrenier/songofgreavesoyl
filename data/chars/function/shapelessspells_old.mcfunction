kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:crying_obsidian"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_ingot"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:obsidian"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:stone_hoe"}}]

# devour memory

effect give @a[scores={universal_hit=1..,char=37,passive_shap=0}] minecraft:absorption 2 0
execute at @a[scores={universal_hit=1..,char=37,passive_shap=0},team=yellow] run scoreboard players set @p[distance=..6,team=purple] CC_silence 20
execute at @a[scores={universal_hit=1..,char=37,passive_shap=0},team=purple] run scoreboard players set @p[distance=..6,team=yellow] CC_silence 20
scoreboard players set @a[scores={universal_hit=1..,char=37,passive_shap=0}] passive_shap 1
scoreboard players add @a[scores={passive_shap=1..}] passive_shap 1
scoreboard players set @a[scores={passive_shap=200..}] passive_shap 0


title @a[scores={char=37,passive_shap=1..20}] actionbar [{text:"[",bold:1b,color:"black",type:"text"},{text:"=",color:"gray",obfuscated:1b,type:"text"},{text:"=========",color:"dark_gray",obfuscated:1b,type:"text"},{text:"]",bold:1b,color:"black",type:"text"}]
title @a[scores={char=37,passive_shap=21..40}] actionbar [{text:"[",bold:1b,color:"black",type:"text"},{text:"==",color:"gray",obfuscated:1b,type:"text"},{text:"========",color:"dark_gray",obfuscated:1b,type:"text"},{text:"]",bold:1b,color:"black",type:"text"}]
title @a[scores={char=37,passive_shap=41..60}] actionbar [{text:"[",bold:1b,color:"black",type:"text"},{text:"===",color:"gray",obfuscated:1b,type:"text"},{text:"=======",color:"dark_gray",obfuscated:1b,type:"text"},{text:"]",bold:1b,color:"black",type:"text"}]
title @a[scores={char=37,passive_shap=61..80}] actionbar [{text:"[",bold:1b,color:"black",type:"text"},{text:"====",color:"gray",obfuscated:1b,type:"text"},{text:"======",color:"dark_gray",obfuscated:1b,type:"text"},{text:"]",bold:1b,color:"black",type:"text"}]
title @a[scores={char=37,passive_shap=81..100}] actionbar [{text:"[",bold:1b,color:"black",type:"text"},{text:"=====",color:"gray",obfuscated:1b,type:"text"},{text:"=====",color:"dark_gray",obfuscated:1b,type:"text"},{text:"]",bold:1b,color:"black",type:"text"}]
title @a[scores={char=37,passive_shap=101..120}] actionbar [{text:"[",bold:1b,color:"black",type:"text"},{text:"======",color:"gray",obfuscated:1b,type:"text"},{text:"====",color:"dark_gray",obfuscated:1b,type:"text"},{text:"]",bold:1b,color:"black",type:"text"}]
title @a[scores={char=37,passive_shap=121..140}] actionbar [{text:"[",bold:1b,color:"black",type:"text"},{text:"=======",color:"gray",obfuscated:1b,type:"text"},{text:"===",color:"dark_gray",obfuscated:1b,type:"text"},{text:"]",bold:1b,color:"black",type:"text"}]
title @a[scores={char=37,passive_shap=141..160}] actionbar [{text:"[",bold:1b,color:"black",type:"text"},{text:"========",color:"gray",obfuscated:1b,type:"text"},{text:"==",color:"dark_gray",obfuscated:1b,type:"text"},{text:"]",bold:1b,color:"black",type:"text"}]
title @a[scores={char=37,passive_shap=161..180}] actionbar [{text:"[",bold:1b,color:"black",type:"text"},{text:"=========",color:"gray",obfuscated:1b,type:"text"},{text:"=",color:"dark_gray",obfuscated:1b,type:"text"},{text:"]",bold:1b,color:"black",type:"text"}]
title @a[scores={char=37,passive_shap=181..200}] actionbar [{text:"[",bold:1b,color:"black",type:"text"},{text:"==========",color:"gray",obfuscated:1b,type:"text"},{text:"",color:"dark_gray",obfuscated:1b,type:"text"},{text:"]",bold:1b,color:"black",type:"text"}]

title @a[scores={passive_shap=0,char=37}] actionbar [{text:"[",color:"black",bold:1b,type:"text"},{text:"Devour Memory is ready",color:"gray",bold:0b,type:"text"},{text:"]",color:"black",bold:1b,type:"text"}]


#into the void

scoreboard players set @a[scores={char=37,spell_shap_1_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=37,spell_shap_1_1=1,CC_silence=1..}] spell_shap_1_1 260

execute at @a[scores={char=37,spell_shap_1_1=1..3,CC_silence=0}] run playsound minecraft:entity.wither_skeleton.ambient master @a[distance=..1] ~ ~ ~ 0.5 0.1 1
execute at @a[scores={char=37,spell_shap_1_1=1,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["void_blade"],NoGravity:0b}
tp @e[tag=void_blade,limit=1] @a[scores={char=37,spell_shap_1_1=1},limit=1]


execute if entity @a[scores={char=37,CC_silence=1..}] run kill @e[tag=void_gate]

execute at @e[tag=void_gate] run particle minecraft:block{block_state:{Name:"minecraft:black_concrete_powder"}} ~ ~1 ~ 0.2 1.5 0.2 0.0001 50 normal
execute at @e[tag=void_gate] run particle minecraft:smoke ~ ~1 ~ 1 2 1 0.0001 20 normal
execute at @e[tag=void_gate] run particle minecraft:falling_dust{block_state:{Name:"minecraft:crying_obsidian"}} ~ ~1 ~ 0.5 1 0.5 0.001 3 normal
execute as @e[tag=void_gate] at @s run tp @s ~ ~ ~ ~3 ~
execute as @e[tag=void_gate] at @s if block ~ ~-0.5 ~ #minecraft:dash run tp @s ~ ~-1 ~
execute as @e[tag=void_gate] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~
execute at @e[tag=void_gate] run playsound minecraft:entity.wither_skeleton.ambient master @a[distance=..10] ~ ~ ~ 0.03 0.1 1

execute at @e[tag=void_blade] run particle minecraft:block{block_state:{Name:"minecraft:black_concrete_powder"}} ~ ~ ~ 0.2 1.5 0.2 0.0001 50 normal
execute at @e[tag=void_blade] run particle minecraft:smoke ~ ~ ~ 0.2 1 0.2 0.0001 20 normal
execute at @e[tag=void_blade] run particle minecraft:falling_dust{block_state:{Name:"minecraft:crying_obsidian"}} ~ ~ ~ 0.2 1 0.2 0.0001 20 normal


execute store result entity @e[tag=void_blade,limit=1] Rotation[1] float 1 run clear
execute as @e[tag=void_blade] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @e[tag=void_gate]
execute as @e[tag=void_blade] at @s unless block ^ ^1 ^1 #minecraft:dash run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["void_gate"],equipment:{head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-799599922,1184187391,-1869063478,-691224947],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTYzOWQ0MDc5ZDZiN2MwYTkxM2NmZjYwOGVjNDNmYTM5YTcyZmNhNWQ2NGZiMjI3MDBiMWNjNmM0NmNjNjljMiJ9fX0="}]}},count:1}}}
execute as @e[tag=void_blade] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=void_blade] at @s run tp @s ^ ^ ^0.5

execute if entity @a[scores={char=37},team=yellow] at @e[tag=void_blade] if entity @a[distance=..2,team=purple] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["void_banish"],NoGravity:1b}
execute if entity @a[scores={char=37},team=purple] at @e[tag=void_blade] if entity @a[distance=..2,team=yellow] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["void_banish"],NoGravity:1b}
execute if entity @e[tag=void_banish] run kill @e[tag=void_blade]
execute at @a[scores={char=37,spell_shap_1_1=30..}] run kill @e[tag=void_blade]


execute at @e[tag=void_banish] if entity @p[scores={char=37},team=purple] run scoreboard players set @p[distance=..3,team=yellow] void 1
execute at @e[tag=void_banish] if entity @p[scores={char=37},team=yellow] run scoreboard players set @p[distance=..3,team=purple] void 1
execute at @e[tag=void_banish] run particle minecraft:smoke ~ ~1 ~ 2 2 2 0.001 400 force
execute at @e[tag=void_banish] run playsound minecraft:entity.elder_guardian.curse master @a[distance=..20] ~ ~ ~ 1 0.8 1
kill @e[tag=void_banish]

scoreboard players add @a[scores={void=1..}] void 1
scoreboard players set @a[scores={void=50..}] void 0

execute at @e[tag=voidmarker] run particle minecraft:smoke ~ ~1 ~ 0.4 1 0.4 0.1 15
execute at @e[tag=voidmarker] run particle minecraft:falling_dust{block_state:{Name:"minecraft:black_concrete_powder"}} ~ ~1 ~ 0.4 1 0.4 0.1 8

execute at @a[scores={void=1..,universal_death=1..}] run kill @e[tag=voidmarker]
scoreboard players set @a[scores={void=1..,universal_death=1..}] void 0

execute at @a[scores={void=2}] run summon minecraft:marker ~ ~ ~ {Tags:["voidmarker"]}
tp @a[scores={void=3}] 128 10 -215
effect give @a[scores={void=1..20}] minecraft:slowness 2 1 true
effect give @a[scores={void=1..30}] minecraft:blindness 2 0 true
execute as @a[scores={void=40}] at @e[tag=voidmarker,limit=1] run tp @s ~ ~ ~
execute at @a[scores={void=40..41}] run particle minecraft:smoke ~ ~1 ~ 1 1 1 0.01 80
execute at @a[scores={void=41}] run kill @e[tag=voidmarker]

#bycie w voidzie AAAAAAAAAAAAAAAAAAAAAAA ==================================================================================================================================================================================================================================================================================================================

execute at @e[tag=void_gate] run tag @a[distance=..1,scores={char=37,universal_sprint=0}] add in_the_void

execute if entity @e[tag=void_gate] as @a[tag=in_the_void,scores={char=37}] at @s run tp @s ~ ~-50 ~

execute if entity @e[tag=void_gate] run playsound minecraft:entity.wither.ambient master @a[tag=in_the_void,scores={char=37}] ~ ~ ~ 16 0.8 1
execute if entity @e[tag=void_gate] run playsound minecraft:block.soul_sand.break master @a[tag=in_the_void,scores={char=37}] ~ ~ ~ 16 1 1
execute if entity @e[tag=void_gate] run playsound minecraft:block.soul_sand.break master @a[tag=in_the_void,scores={char=37}] ~ ~ ~ 16 0.8 1
execute if entity @e[tag=void_gate] run playsound minecraft:block.soul_sand.break master @a[tag=in_the_void,scores={char=37}] ~ ~ ~ 16 0.6 1
execute if entity @e[tag=void_gate] run playsound minecraft:block.soul_sand.break master @a[tag=in_the_void,scores={char=37}] ~ ~ ~ 16 0.4 1
execute if entity @e[tag=void_gate] run playsound minecraft:block.soul_sand.break master @a[tag=in_the_void,scores={char=37}] ~ ~ ~ 16 0.2 1

execute if entity @a[tag=in_the_void,scores={char=37}] run kill @e[tag=void_gate]
effect clear @a[tag=in_the_void,scores={char=37}] minecraft:glowing
effect give @a[tag=in_the_void,scores={char=37}] minecraft:speed 1 1 true
effect give @a[tag=in_the_void,scores={char=37}] minecraft:weakness 1 100 true
effect give @a[tag=in_the_void,scores={char=37}] minecraft:resistance 1 100 true
effect give @a[tag=in_the_void,scores={char=37}] minecraft:night_vision 1 100 true
scoreboard players set @a[tag=in_the_void,scores={char=37}] CC_intangible 20

#item replace entity @a[scores={char=37},tag=in_the_void] armor.head with air
#item replace entity @a[scores={char=37},tag=in_the_void] armor.chest with air
#item replace entity @a[scores={char=37},tag=in_the_void] armor.legs with air
#item replace entity @a[scores={char=37},tag=in_the_void] armor.feet with air


scoreboard players set @a[tag=in_the_void,scores={char=37}] spell_shap_1 1
scoreboard players set @a[tag=in_the_void,scores={char=37}] spell_shap_1_1 190
scoreboard players set @a[tag=in_the_void,scores={char=37}] spell_shap_2 1
scoreboard players set @a[tag=in_the_void,scores={char=37}] spell_shap_2_1 100
scoreboard players set @a[tag=in_the_void,scores={char=37}] spellCD1 20
scoreboard players set @a[tag=in_the_void,scores={char=37}] spellCD2 20


execute at @e[tag=void_gate_return] run particle minecraft:block{block_state:{Name:"minecraft:white_concrete_powder"}} ~ ~1 ~ 0.2 1.5 0.2 0.0001 50 normal
execute at @e[tag=void_gate_return] run particle minecraft:spit ~ ~1 ~ 1 2 1 0.0001 3 normal
execute at @e[tag=void_gate_return] run particle minecraft:falling_dust{block_state:{Name:"minecraft:snow_block"}} ~ ~1 ~ 0.5 1 0.5 0.001 3 normal
execute as @e[tag=void_gate_return] at @s run tp @s ~ ~ ~ ~3 ~
execute as @e[tag=void_gate_return] at @s if block ~ ~-0.5 ~ #minecraft:dash run tp @s ~ ~-1 ~
execute as @e[tag=void_gate_return] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~
execute at @e[tag=void_gate_return] run playsound minecraft:entity.wither_skeleton.ambient master @a[distance=..10] ~ ~ ~ 0.03 0.1 1

execute at @e[tag=void_gate_return] run particle minecraft:block{block_state:{Name:"minecraft:black_concrete_powder"}} ~ ~51 ~ 0.2 1.5 0.2 0.0001 10 normal
execute at @e[tag=void_gate_return] run particle minecraft:smoke ~ ~51 ~ 1 2 1 0.0001 20 normal
execute at @e[tag=void_gate_return] run particle minecraft:falling_dust{block_state:{Name:"minecraft:crying_obsidian"}} ~ ~51 ~ 0.5 1 0.5 0.001 3 normal
execute at @e[tag=void_gate_return] positioned ~ ~50 ~ run playsound minecraft:entity.wither_skeleton.ambient master @a[distance=..10] ~ ~ ~ 0.03 0.1 1

clear @a[tag=!in_the_void,scores={char=37}] minecraft:obsidian
execute as @a[tag=in_the_void,scores={char=37}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:obsidian",Slot:3b}]}] run clear @a[scores={char=37}] minecraft:obsidian
item replace entity @a[tag=in_the_void,scores={char=37}] hotbar.3 with minecraft:obsidian[minecraft:custom_name={text:"From the Void",color:"dark_aqua",bold:1b}] 1
execute at @a[scores={char=37,spell_shap_3=1}] run kill @e[tag=void_blade_return]
execute at @a[scores={char=37,spell_shap_3=1}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["void_blade_return"],NoGravity:0b}
tp @e[tag=void_blade_return,limit=1] @a[scores={char=37,spell_shap_3=1},limit=1]
scoreboard players set @a[scores={spell_shap_3=1..,char=37}] spell_shap_3 0

execute at @e[tag=void_blade_return] run particle minecraft:block{block_state:{Name:"minecraft:black_concrete_powder"}} ~ ~ ~ 0.2 1.5 0.2 0.0001 50 normal
execute at @e[tag=void_blade_return] run particle minecraft:smoke ~ ~ ~ 0.2 1 0.2 0.0001 20 normal
execute at @e[tag=void_blade_return] run particle minecraft:falling_dust{block_state:{Name:"minecraft:crying_obsidian"}} ~ ~ ~ 0.2 1 0.2 0.0001 20 normal


execute store result entity @e[tag=void_blade_return,limit=1] Rotation[1] float 1 run clear
execute as @e[tag=void_blade_return] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @e[tag=void_gate_return]
execute as @e[tag=void_blade_return] at @s unless block ^ ^1 ^1 #minecraft:dash run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["void_gate_return"],equipment:{head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-799599922,1184187391,-1869063478,-691224947],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTYzOWQ0MDc5ZDZiN2MwYTkxM2NmZjYwOGVjNDNmYTM5YTcyZmNhNWQ2NGZiMjI3MDBiMWNjNmM0NmNjNjljMiJ9fX0="}]}},count:1}}}
execute as @e[tag=void_blade_return] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=void_blade_return] at @s run tp @s ^ ^ ^0.5



execute at @e[tag=void_gate_return] run scoreboard players set @a[distance=..1,scores={char=37}] spellCD1 140
execute at @e[tag=void_gate_return] run scoreboard players set @a[distance=..1,scores={char=37}] spell_shap_1 1
execute at @e[tag=void_gate_return] run scoreboard players set @a[distance=..1,scores={char=37}] spell_shap_1_1 140
execute at @e[tag=void_gate_return] run scoreboard players set @a[distance=..1,scores={char=37}] void_empower 60
execute at @e[tag=void_gate_return] run tag @a[distance=..1,scores={char=37}] remove invisible
execute at @e[tag=void_gate_return] run tag @a[distance=..1,scores={char=37}] remove in_the_void
execute at @e[tag=void_gate_return] unless entity @a[tag=in_the_void,scores={char=37}] run effect clear @a[scores={char=37}]
execute at @e[tag=void_gate_return] unless entity @a[tag=in_the_void,scores={char=37}] run particle minecraft:smoke ~ ~ ~ 3 2 3 0.0001 200 normal
#execute at @e[tag=void_gate_return] unless entity @a[scores={char=37},tag=in_the_void] run playsound entity.enderman.scream master @a[distance=..20] ~ ~ ~ 1 0.6 1

execute at @e[tag=void_gate_return] as @a[distance=..1,scores={char=37}] at @s run tp @s ~ ~50 ~
execute unless entity @a[tag=in_the_void,scores={char=37}] run kill @e[tag=void_gate_return]


execute at @a[scores={void_empower=50..60}] run playsound minecraft:block.soul_sand.break master @a[distance=..10] ~ ~ ~ 1 0.2 1
execute at @a[scores={void_empower=1..}] run particle minecraft:smoke ~ ~ ~ 3 2 3 0.01 20
scoreboard players remove @a[scores={void_empower=1..}] void_empower 1


execute at @a[tag=in_the_void,scores={char=37}] run particle minecraft:smoke ~ ~ ~ 15 15 15 0.01 300
execute if entity @a[tag=in_the_void,scores={char=37}] at @e[team=purple] run particle minecraft:dust{color:[1.0,0.0,0.97],scale:1.0f} ~ ~-49 ~ 0.3 0.7 0.3 0.1 5
execute if entity @a[tag=in_the_void,scores={char=37}] at @e[team=yellow] run particle minecraft:dust{color:[0.98,1.0,0.0],scale:1.0f} ~ ~-49 ~ 0.3 0.7 0.3 0.1 5

# ==================================================================================================================================================================================================================================================================================================================

#remember me

scoreboard players set @a[scores={char=37,spell_shap_2_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=37,spell_shap_2_1=1,CC_silence=1..}] spell_shap_2_1 240

execute as @a[scores={universal_death=1..}] run tag @s remove remember_me
execute at @a[scores={universal_death=1..,char=37}] run tag @a remove remember_me
execute at @a[scores={universal_hit=1..,char=37,CC_silence=0}] run tag @a remove remember_me
execute at @a[scores={universal_hit=1..,char=37,CC_silence=0,spell_shap_2_1=0},team=purple] run tag @p[distance=..6,team=yellow] add remember_me
execute at @a[scores={universal_hit=1..,char=37,CC_silence=0,spell_shap_2_1=0},team=yellow] run tag @p[distance=..6,team=purple] add remember_me

execute at @a[tag=remember_me] run particle minecraft:smoke ~ ~0.5 ~ 0.5 0.5 0.5 0.001 8

execute unless entity @p[tag=remember_me] run scoreboard players set @a[scores={char=37,spell_shap_2_1=2,CC_silence=0}] spellCD2 20
execute unless entity @p[tag=remember_me] run scoreboard players set @a[scores={char=37,spell_shap_2_1=2,CC_silence=0}] spell_shap_2_1 240

execute if entity @p[tag=remember_me] run scoreboard players set @a[scores={char=37,spell_shap_2_1=1,CC_silence=0}] shapeless_hit 1
execute if entity @p[tag=remember_me] run clear @a[scores={char=37,spell_shap_2_1=1,CC_silence=0}] minecraft:stone_hoe
execute if entity @p[tag=remember_me] run item replace entity @a[scores={char=37,spell_shap_2_1=1,CC_silence=0}] hotbar.0 with minecraft:stone_hoe[minecraft:custom_name={bold:1b,color:"gray",text:"Melted Grasp"},minecraft:damage=125,minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_speed",amount:-0.4d,operation:"add_multiplied_base",slot:"mainhand"},{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"}]] 1

execute as @a[scores={char=37,spell_shap_2_1=2..3,CC_silence=0}] run tp @p[tag=remember_me]
execute if entity @p[tag=remember_me] at @a[scores={char=37,spell_shap_2_1=1,CC_silence=0}] run playsound minecraft:entity.drowned.hurt master @a[distance=..10] ~ ~ ~ 1 0.1 1
execute at @a[scores={char=37,spell_shap_2_1=5,CC_silence=0}] run tag @a remove remember_me
scoreboard players set @a[scores={shapeless_hit=2..}] shapeless_hit 0


#shapeless

scoreboard players add @a[scores={spell_shap_1=1..}] spell_shap_1_1 1
item replace entity @a[scores={char=37,spell_shap_1_1=280..}] hotbar.1 with minecraft:crying_obsidian[minecraft:custom_name={text:"Into the Void",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_shap_1_1=281..}] spell_shap_1 0
scoreboard players set @a[scores={spell_shap_1_1=281..}] spell_shap_1_1 0
scoreboard players set @a[scores={spell_shap_1_1=1}] spellCD1 280

scoreboard players add @a[scores={spell_shap_2=1..}] spell_shap_2_1 1
item replace entity @a[scores={char=37,spell_shap_2_1=260..}] hotbar.2 with minecraft:netherite_ingot[minecraft:custom_name={text:"Remember Me",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_shap_2_1=261..}] spell_shap_2 0
scoreboard players set @a[scores={spell_shap_2_1=261..}] spell_shap_2_1 0
scoreboard players set @a[scores={spell_shap_2_1=1}] spellCD2 260

execute as @a[scores={char=37}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:stone_hoe",Slot:0b}]}] run scoreboard players set @a[scores={char=37}] shapeless_hit 0
execute as @a[scores={char=37}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:stone_hoe",Slot:0b}]}] run clear @a[scores={char=37}] minecraft:stone_hoe
item replace entity @a[scores={char=37,shapeless_hit=0}] hotbar.0 with minecraft:stone_hoe[minecraft:custom_name={bold:1b,color:"gray",text:"Melted Grasp"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"},{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"}]] 1


execute as @a[scores={char=37,spell_shap_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:crying_obsidian",Slot:1b}]}] run clear @a[scores={char=37}] minecraft:crying_obsidian
item replace entity @a[scores={char=37,spell_shap_1=0}] hotbar.1 with minecraft:crying_obsidian[minecraft:custom_name={text:"Into the Void",color:"dark_aqua",bold:1b}] 1

execute as @a[tag=!in_the_void,scores={char=37,spell_shap_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_ingot",Slot:2b}]}] run clear @a[scores={char=37}] minecraft:netherite_ingot
item replace entity @a[tag=!in_the_void,scores={char=37,spell_shap_2=0}] hotbar.2 with minecraft:netherite_ingot[minecraft:custom_name={text:"Remember Me",color:"dark_aqua",bold:1b}] 1
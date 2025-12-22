kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:stone_shovel"}}]


# feast on agony


execute at @a[scores={char=39,s2_timer=0}] as @a[distance=..5,tag=valid_spell_target,advancements={chars:basilisk_passive=true}] unless score @s Team = @p[scores={char=39}] Team run scoreboard players set @s basilisk_venom 120
advancement revoke @a[advancements={chars:basilisk_passive=true}] only chars:basilisk_passive


execute at @a[scores={char=39,HP=..26,passive_basi=0}] as @a[distance=..10,scores={CC_stun=1..}] unless score @s Team = @p[scores={char=39}] Team run scoreboard players set @p[scores={char=39}] passive_basi 160
execute at @a[scores={char=39,HP=..26,passive_basi=0}] as @a[distance=..10,scores={CC_root=1..}] unless score @s Team = @p[scores={char=39}] Team run scoreboard players set @p[scores={char=39}] passive_basi 160
execute at @a[scores={char=39,HP=..26,passive_basi=0}] as @a[distance=..10,scores={CC_knockup=1..}] unless score @s Team = @p[scores={char=39}] Team run scoreboard players set @p[scores={char=39}] passive_basi 160
execute at @a[scores={char=39,HP=..26,passive_basi=0}] as @a[distance=..10,scores={CC_petrify=1..}] unless score @s Team = @p[scores={char=39}] Team run scoreboard players set @p[scores={char=39}] passive_basi 160
execute at @a[scores={char=39,HP=..26,passive_basi=0}] as @a[distance=..10,scores={CC_taunt=1..}] unless score @s Team = @p[scores={char=39}] Team run scoreboard players set @p[scores={char=39}] passive_basi 160


title @a[scores={char=39,passive_basi=0}] actionbar [{text:"[",bold:1b,color:"dark_green",type:"text"},{text:" Feast is ready ",color:"green",bold:0b,type:"text"},{text:"]",bold:1b,color:"dark_green",type:"text"}]

title @a[scores={char=39,passive_basi=1..20}] actionbar [{text:"[",bold:1b,color:"dark_green",type:"text"},{text:"========",color:"green",type:"text"},{text:"",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_green",type:"text"}]
title @a[scores={char=39,passive_basi=21..40}] actionbar [{text:"[",bold:1b,color:"dark_green",type:"text"},{text:"=======",color:"green",type:"text"},{text:"=",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_green",type:"text"}]
title @a[scores={char=39,passive_basi=41..60}] actionbar [{text:"[",bold:1b,color:"dark_green",type:"text"},{text:"======",color:"green",type:"text"},{text:"==",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_green",type:"text"}]
title @a[scores={char=39,passive_basi=61..80}] actionbar [{text:"[",bold:1b,color:"dark_green",type:"text"},{text:"=====",color:"green",type:"text"},{text:"===",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_green",type:"text"}]
title @a[scores={char=39,passive_basi=81..100}] actionbar [{text:"[",bold:1b,color:"dark_green",type:"text"},{text:"====",color:"green",type:"text"},{text:"====",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_green",type:"text"}]
title @a[scores={char=39,passive_basi=101..120}] actionbar [{text:"[",bold:1b,color:"dark_green",type:"text"},{text:"===",color:"green",type:"text"},{text:"=====",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_green",type:"text"}]
title @a[scores={char=39,passive_basi=121..140}] actionbar [{text:"[",bold:1b,color:"dark_green",type:"text"},{text:"==",color:"green",type:"text"},{text:"======",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_green",type:"text"}]
title @a[scores={char=39,passive_basi=141..150}] actionbar [{text:"[",bold:1b,color:"dark_green",type:"text"},{text:"=",color:"green",type:"text"},{text:"=======",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_green",type:"text"}]
title @a[scores={char=39,passive_basi=150..}] actionbar {text:"Delicious!",color:"green",italic:1b,type:"text"}

scoreboard players remove @a[scores={passive_basi=1..}] passive_basi 1
execute at @a[scores={passive_basi=158}] run playsound entity.cat.hiss master @a[distance=..15] ~ ~ ~ 0.4 0.6 1
execute at @a[scores={passive_basi=158}] run playsound entity.player.levelup master @a[distance=..15] ~ ~ ~ 0.3 2 1
execute at @a[scores={passive_basi=158}] run particle happy_villager ~ ~0.6 ~ 0.4 0.8 0.4 1 20
execute at @a[scores={passive_basi=158}] run particle heart ~ ~1 ~ 0.4 0.5 0.4 0.1 3
effect give @a[scores={passive_basi=158}] instant_health 1 1


# burrowstrike

scoreboard players set @a[scores={char=39,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=39,s1_timer=1,CC_silence=1..}] s1_timer 200

execute at @a[scores={char=39,s1_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Invisible:1b,Tags:["burrowstrike_thing","entities_basilik"]}
tp @e[tag=burrowstrike_thing,limit=1] @p[scores={char=39,s1_timer=1}]
tag @a[scores={char=39,s1_timer=1}] add invisible
effect give @p[scores={char=39,s1_timer=1..10}] invisibility 2 1 true
effect give @p[scores={char=39,s1_timer=1..10}] resistance 1 100 true
effect give @p[scores={char=39,s1_timer=1..10}] weakness 1 100 true
scoreboard players set @a[scores={char=39,s1_timer=1..10}] CC_intangible 20
execute store result entity @e[tag=burrowstrike_thing,limit=1] Rotation[1] float 1 run clear
#execute if entity @e[tag=burrowstrike_thing] run item replace entity @a[scores={char=39}] armor.head with air
#execute if entity @e[tag=burrowstrike_thing] run item replace entity @a[scores={char=39}] armor.chest with air
#execute if entity @e[tag=burrowstrike_thing] run item replace entity @a[scores={char=39}] armor.legs with air
#execute if entity @e[tag=burrowstrike_thing] run item replace entity @a[scores={char=39}] armor.feet with air
tp @p[scores={char=39}] @e[tag=burrowstrike_thing,limit=1]


execute at @e[tag=burrowstrike_thing] as @a[tag=valid_spell_target,distance=..2] unless score @s Team = @p[scores={char=39}] Team as @a[tag=valid_spell_target,distance=..4] unless score @s Team = @p[scores={char=39}] Team run tag @s add burrowstrike_knocked_up

execute at @a[tag=burrowstrike_knocked_up] at @a[scores={char=39}] run particle block{block_state:{Name:"minecraft:cobblestone"}} ~ ~0.2 ~ 2 0.2 2 0.1 200 normal
execute at @a[tag=burrowstrike_knocked_up] at @a[scores={char=39}] run particle falling_dust{block_state:{Name:"minecraft:gravel"}} ~ ~0.2 ~ 2 0.2 2 0.1 200 normal
execute at @a[tag=burrowstrike_knocked_up] run kill @e[tag=burrowstrike_thing]
execute at @a[tag=burrowstrike_knocked_up] run playsound entity.zombie.attack_wooden_door master @a[distance=..10] ~ ~ ~ 1 0.8 1
scoreboard players set @a[tag=burrowstrike_knocked_up] CC_knockup 20
effect give @a[tag=burrowstrike_knocked_up] slowness 3 2
effect give @a[tag=burrowstrike_knocked_up] weakness 1 100
tag @a remove burrowstrike_knocked_up

execute as @e[tag=burrowstrike_thing] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=burrowstrike_thing] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=burrowstrike_thing] at @s run tp @s ^ ^ ^0.6
execute as @e[tag=burrowstrike_thing] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=burrowstrike_thing] at @s if block ~ ~-0.5 ~ #minecraft:dash run tp @s ~ ~-0.5 ~

execute at @e[tag=burrowstrike_thing] run playsound block.gravel.break master @a[distance=..10] ~ ~ ~ 1 0.2 1
execute at @e[tag=burrowstrike_thing] run playsound block.stone.break master @a[distance=..10] ~ ~ ~ 1 0.5 1
execute at @e[tag=burrowstrike_thing] run particle block{block_state:{Name:"minecraft:cobblestone"}} ~ ~ ~ 0.5 0.2 0.5 0.1 50 normal
execute at @e[tag=burrowstrike_thing] run particle falling_dust{block_state:{Name:"minecraft:gravel"}} ~ ~ ~ 2 0.1 2 0.1 30 normal
execute at @e[tag=burrowstrike_thing] run particle falling_dust{block_state:{Name:"minecraft:cobblestone"}} ~ ~ ~ 1 0.1 2 0.1 30 normal

effect clear @a[scores={char=39,s1_timer=15..22}] invisibility
execute at @a[scores={char=39,s1_timer=15..}] run kill @e[tag=burrowstrike_thing]
execute at @a[scores={char=39,s1_timer=15}] run playsound block.gravel.break master @a[distance=..10] ~ ~ ~ 1 0.5 1
tag @a[scores={char=39,s1_timer=15..22}] remove invisible


# petrifying venom

scoreboard players set @a[scores={char=39,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=39,s2_timer=1,CC_silence=1..}] s2_timer 340

#execute unless entity @a[scores={basilisk_venom=1..}] run title @a[scores={char=39,s2_timer=1,CC_silence=0}] times 0 20 0
#execute unless entity @a[scores={basilisk_venom=1..}] run title @a[scores={char=39,s2_timer=1,CC_silence=0}] actionbar {text:"No targets within range",color:red,bold:1b}
execute unless entity @a[scores={basilisk_venom=1..}] run scoreboard players set @a[scores={char=39,s2_timer=1,CC_silence=0}] spellCD2 20
execute unless entity @a[scores={basilisk_venom=1..}] run scoreboard players set @a[scores={char=39,s2_timer=1,CC_silence=0}] s2_timer 340

effect give @a[scores={basilisk_venom=120}] minecraft:poison 2
effect give @a[scores={basilisk_venom=80}] minecraft:poison 2
effect give @a[scores={basilisk_venom=40}] minecraft:poison 2

scoreboard players remove @a[scores={basilisk_venom=1..}] basilisk_venom 1
scoreboard players set @a[scores={universal_death=1..}] basilisk_venom 0

execute at @a[scores={char=39,s2_timer=1,CC_silence=0}] run scoreboard players set @a[scores={basilisk_venom=1..}] basilisk_petrify 1

effect give @a[scores={basilisk_petrify=1..2}] minecraft:slowness 3 100 true
effect give @a[scores={basilisk_petrify=1..2}] minecraft:weakness 3 100 true
effect give @a[scores={basilisk_petrify=1..2}] minecraft:resistance 3 100 true
scoreboard players set @a[scores={basilisk_petrify=1}] CC_petrify 60
scoreboard players set @a[scores={basilisk_petrify=1}] CC_intangible 60


execute as @a[scores={basilisk_petrify=1..2}] run attribute @s minecraft:knockback_resistance base set 1
execute as @a[scores={basilisk_petrify=1..2}] run attribute @s minecraft:jump_strength base set 0
execute at @a[scores={basilisk_petrify=1..60}] run particle falling_dust{block_state:{Name:"minecraft:stone"}} ~ ~ ~ 0.6 1.2 0.6 1 10

execute at @a[scores={basilisk_petrify=1..2}] run particle happy_villager ~ ~ ~ 0.8 1.2 0.8 1 30
execute at @a[scores={basilisk_petrify=1..2}] run playsound entity.cat.hiss master @a[distance=..10] ~ ~ ~ 1 0.5 1
execute at @a[scores={basilisk_petrify=1..2}] run playsound entity.wither.shoot master @a[distance=..10] ~ ~ ~ 0.6 0.5 1
execute at @a[scores={basilisk_petrify=1..3}] run playsound block.stone.place master @a[distance=..10] ~ ~ ~ 0.3 0.5 1
execute as @a[scores={basilisk_petrify=59..61}] run attribute @s minecraft:knockback_resistance base set 0
execute as @a[scores={basilisk_petrify=59..61}] run attribute @s minecraft:jump_strength base set 0.41
execute at @a[scores={basilisk_petrify=59..61}] run particle block{block_state:{Name:"minecraft:stone"}} ~ ~ ~ 0.5 1.2 0.5 1 50
execute at @a[scores={basilisk_petrify=59..61}] run particle block{block_state:{Name:"minecraft:cobblestone"}} ~ ~ ~ 0.5 1.2 0.5 1 50
execute at @a[scores={basilisk_petrify=60..61}] run playsound block.stone.break master @a[distance=..10] ~ ~ ~ 1 0.1 1
execute at @a[scores={basilisk_petrify=60..61}] run kill @e[tag=petrify_visuals,distance=..1]

scoreboard players add @a[scores={basilisk_petrify=1..}] basilisk_petrify 1
scoreboard players set @a[scores={basilisk_petrify=61..}] basilisk_petrify 0



execute at @a[scores={basilisk_petrify=1..}] unless entity @e[distance=..1.5,tag=petrify_visual_1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["petrify_visual_1","petrify_visuals","entities_basilik"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.65f,-0.5f,-0.65f],scale:[1.3f,1f,1.3f]},block_state:{Name:"minecraft:cobblestone"}}
execute at @a[scores={basilisk_petrify=1..}] unless entity @e[distance=..1.5,tag=petrify_visual_2] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["petrify_visual_2","petrify_visuals","entities_basilik"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.6f,-0.5f,-0.6f],scale:[1.2f,1f,1.2f]},block_state:{Name:"minecraft:andesite"}}
execute at @a[scores={basilisk_petrify=1..}] unless entity @e[distance=..1.5,tag=petrify_visual_3] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["petrify_visual_3","petrify_visuals","entities_basilik"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.5f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:stone"}}


execute as @e[tag=petrify_visuals] at @s unless entity @a[distance=..1.7,scores={basilisk_petrify=1..}] run kill @s

execute at @a[scores={basilisk_petrify=1..}] run tp @e[distance=..1.5,tag=petrify_visual_1] ~ ~0.5 ~
execute at @a[scores={basilisk_petrify=1..}] run tp @e[distance=..1.5,tag=petrify_visual_2] ~ ~1 ~
execute at @a[scores={basilisk_petrify=1..}] run tp @e[distance=..1.5,tag=petrify_visual_3] ~ ~1.6 ~






# basilisk

scoreboard players set @a[scores={char=39}] MaxHP 30

scoreboard players set @a[scores={s1_timer=1,char=39}] spellCD1 280
scoreboard players add @a[scores={s1_timer=1..,char=39}] s1_timer 1
scoreboard players set @a[scores={s1_timer=281..,char=39}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=39}] spellCD2 360
scoreboard players add @a[scores={s2_timer=1..,char=39}] s2_timer 1
scoreboard players set @a[scores={s2_timer=361..,char=39}] s2_timer 0

execute as @a[scores={char=39}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:stone_shovel",Slot:0b}]}] run clear @a[scores={char=39}] minecraft:stone_shovel
item replace entity @a[scores={char=39}] hotbar.0 with minecraft:stone_shovel[custom_data={basilisk:1},minecraft:custom_name={bold:1b,color:"gray",text:"Claws"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.7d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=39,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=39}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=39,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:iron_horse_armor",minecraft:custom_name={text:"Burrowstrike",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:protection":1}] 1

execute as @a[scores={char=39,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=39}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=39,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:cobblestone",minecraft:custom_name={text:"Petrifying Venom",color:"dark_aqua",bold:1b}] 1



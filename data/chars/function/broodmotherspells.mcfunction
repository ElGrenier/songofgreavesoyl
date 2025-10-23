#kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:turtle_egg"}}]
#kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:fermented_spider_eye"}}]
#kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:deepslate_gold_ore"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:bow"}}]

effect give @a[scores={char=41},nbt={SelectedItem:{id:"minecraft:bow"}}] minecraft:weakness 1 100 true

execute at @a[scores={char=41,arrowcd_1=..10}] run tag @e[type=minecraft:arrow,distance=..2] add broodmothershot_ar
execute at @e[tag=broodmothershot_ar] run particle minecraft:block{block_state:{Name:"minecraft:green_wool"}} ~ ~ ~ 0.1 0.1 0.1 0.1 2

execute at @a[scores={char=41,CC_disarm=1..}] run kill @e[tag=broodmothershot_ar]

#passive frenzy

execute at @a[nbt={active_effects:[{id:"minecraft:bad_omen"}]}] run effect give @e[distance=..5,tag=swarmerboi] minecraft:strength 1 0
execute at @a[nbt={active_effects:[{id:"minecraft:bad_omen"}]}] run effect give @e[distance=..5,tag=swarmerboi] minecraft:speed 1 0

execute at @a[scores={char=41,CC_silence=0,universal_kill=1..}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["swarmer_egg","entities_broodmother"],Marker:1b,Invisible:1b,Small:1b,equipment:{head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-873057486,-1593291491,-1351530060,-1707542533],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTE4NTY1N2MzOGFjZGQ4Zjk1ZTFkMmNkMTExNWJiMGYxMTEzOWFkMmIzY2U0NDIyNjdlNjk3MDZkOTE2ZSJ9fX0="}]}},count:1}}}
execute at @a[scores={char=41,CC_silence=0,universal_kill=1..}] run playsound minecraft:entity.spider.step master @a[distance=..10] ~ ~ ~ 1 0.5 1

#crawler

scoreboard players set @a[scores={char=41,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=41,s1_timer=1,CC_silence=1..}] s1_timer 340

execute at @a[scores={char=41,s1_timer=1,CC_silence=0},y_rotation=-45..45] run summon minecraft:cave_spider ~ ~ ~ {NoAI:1b,Invulnerable:1b,Tags:["scoutcrawler","entities_broodmother"],Rotation:[0.0f,0.0f]}
execute at @a[scores={char=41,s1_timer=1,CC_silence=0},y_rotation=45..135] run summon minecraft:cave_spider ~ ~ ~ {NoAI:1b,Invulnerable:1b,Tags:["scoutcrawler","entities_broodmother"],Rotation:[90.0f,0.0f]}
execute at @a[scores={char=41,s1_timer=1,CC_silence=0},y_rotation=135..-135] run summon minecraft:cave_spider ~ ~ ~ {NoAI:1b,Invulnerable:1b,Tags:["scoutcrawler","entities_broodmother"],Rotation:[180.0f,0.0f]}
execute at @a[scores={char=41,s1_timer=1,CC_silence=0},y_rotation=-135..-45] run summon minecraft:cave_spider ~ ~ ~ {NoAI:1b,Invulnerable:1b,Tags:["scoutcrawler","entities_broodmother"],Rotation:[-90.0f,0.0f]}
tp @e[tag=scoutcrawler,limit=1] @a[scores={char=41,s1_timer=1},limit=1]

execute as @e[tag=scoutcrawler] at @s unless block ^ ^1 ^1 #minecraft:dash run particle minecraft:falling_dust{block_state:{Name:"minecraft:gray_concrete"}} ~ ~ ~ 0.7 1 0.7 0.1 100
execute as @e[tag=scoutcrawler] at @s unless block ^ ^1 ^1 #minecraft:dash run tp @e[tag=scoutcrawler] ~ ~-200 ~
execute store result entity @e[tag=scoutcrawler,limit=1] Rotation[1] float 1 run clear


execute as @e[tag=scoutcrawler] at @s run tp @s ^ ^ ^0.2
execute as @e[tag=scoutcrawler] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.2 ~
execute as @e[tag=scoutcrawler] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~0.6 ~

execute at @a[scores={char=41,s1_timer=100..}] at @e[tag=scoutcrawler] run particle minecraft:falling_dust{block_state:{Name:"minecraft:gray_concrete"}} ~ ~ ~ 0.5 0.2 0.5 0.1 40
execute at @a[scores={char=41,s1_timer=100..}] run tp @e[tag=scoutcrawler] ~ ~-200 ~


execute at @e[tag=scoutcrawler] as @e[distance=..2] unless score @s Team = @p[scores={char=41}] Team run tag @e[tag=scoutcrawler] add grabber

#execute at @e[tag=scoutcrawler] if entity @a[scores={char=41},team=purple] if entity @p[distance=..2,team=yellow] run tag @e[tag=scoutcrawler] add grabber

tag @e[tag=grabber] remove scoutcrawler

execute as @e[tag=grabber] at @s as @e[distance=..3] unless score @s Team = @p[scores={char=41}] Team run tp @e[tag=grabber,distance=..3,limit=1] @s
execute as @e[tag=grabber] at @s as @e[distance=..3] unless score @s Team = @p[scores={char=41}] Team run effect give @s minecraft:slowness 2 1 true
execute as @e[tag=grabber] at @s as @e[distance=..3] unless score @s Team = @p[scores={char=41}] Team run scoreboard players set @s CC_grounded 20

#execute as @e[tag=grabber] if entity @a[scores={char=41},team=purple] at @s run tp @p[distance=..3,team=yellow]
#execute as @e[tag=grabber] if entity @a[scores={char=41},team=purple] at @s run effect give @p[distance=..1,team=yellow] minecraft:slowness 2 1 true
#execute as @e[tag=grabber] if entity @a[scores={char=41},team=purple] at @s run scoreboard players set @p[distance=..1,team=yellow] CC_grounded 20

scoreboard players add @e[tag=grabber] s1_timer 1
execute as @e[tag=grabber,scores={s1_timer=40..}] at @s run particle minecraft:falling_dust{block_state:{Name:"minecraft:gray_concrete"}} ~ ~ ~ 0.5 0.2 0.5 0.1 40
execute as @e[tag=grabber,scores={s1_timer=40..}] at @s run tp @e[tag=grabber] ~ ~-200 ~


#swarm

scoreboard players set @a[scores={char=41,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=41,s2_timer=1,CC_silence=1..}] s2_timer 180

execute at @a[scores={char=41,s2_timer=1,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["swarmer_egg","egg_limit","entities_broodmother"],Marker:1b,Invisible:1b,Small:1b,equipment:{head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-873057486,-1593291491,-1351530060,-1707542533],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTE4NTY1N2MzOGFjZGQ4Zjk1ZTFkMmNkMTExNWJiMGYxMTEzOWFkMmIzY2U0NDIyNjdlNjk3MDZkOTE2ZSJ9fX0="}]}},count:1}}}
execute at @a[scores={char=41,s2_timer=1,CC_silence=0}] run playsound minecraft:entity.spider.step master @a[distance=..10] ~ ~ ~ 1 0.5 1
execute at @a[scores={char=41,s2_timer=1,CC_silence=0}] run scoreboard players add @e[tag=egg_limit] SummonAge 1
execute at @a[scores={char=41,s2_timer=1,CC_silence=0}] run kill @e[tag=egg_limit,scores={SummonAge=4..}]

execute as @e[tag=swarmer_egg] at @s if block ~ ~0.6 ~ #minecraft:dash run tp @s ~ ~-0.1 ~
execute at @e[tag=swarmer_egg] run particle minecraft:falling_dust{block_state:{Name:"minecraft:gray_concrete"}} ~ ~0.9 ~ 0.2 0.1 0.2 0.1 1

#hatch

scoreboard players set @a[scores={char=41,s3_timer=1,CC_silence=1..}] spellCD3 20
scoreboard players set @a[scores={char=41,s3_timer=1,CC_silence=1..}] s3_timer 60

execute at @a[scores={char=41,s3_timer=1,CC_silence=0}] at @e[tag=swarmer_egg] run summon minecraft:spider ~ ~1 ~ {Health:30.0f,Tags:["swarmerboi","entities_broodmother"],attributes:[{id:"minecraft:attack_damage",base:6},{id:"minecraft:knockback_resistance",base:1},{id:"minecraft:max_health",base:8}],equipment:{legs:{id:"minecraft:leather_boots",components:{"minecraft:enchantments":{"minecraft:feather_falling":10}},count:1}}}

execute at @a[scores={char=41},team=purple] run team join purple @e[tag=swarmerboi]
execute at @a[scores={char=41},team=yellow] run team join yellow @e[tag=swarmerboi]

execute at @a[scores={char=41,s3_timer=1,CC_silence=0}] at @e[tag=swarmer_egg] run playsound minecraft:entity.turtle.egg_break ambient @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=41,s3_timer=1,CC_silence=0}] run kill @e[tag=swarmer_egg]

execute at @a[scores={char=41,s3_timer=10}] as @e[tag=swarmerboi] as @e[distance=..20] unless score @s Team = @p[scores={char=41}] Team run damage @e[tag=swarmerboi,limit=1,distance=..20] 0 generic by @s from @s


#execute at @a[scores={char=41,s3_timer=10},team=yellow] as @e[tag=swarmerboi] run damage @s 0 generic by @p[team=purple,distance=.20] from @p[team=purple,distance=.20]

execute at @a[scores={spiderkill=1..}] as @a[scores={char=41}] run function chars:add_kill
scoreboard players remove @a[scores={spiderkill=1..}] spiderkill 1


# broodmother

scoreboard players set @a[scores={char=41,s1_timer=1}] spellCD1 360
scoreboard players add @a[scores={char=41,s1_timer=1..}] s1_timer 1
#item replace entity @a[scores={char=41,s1_timer=360..}] hotbar.1 with minecraft:fermented_spider_eye[minecraft:custom_name={text:"Cave Scout",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={char=41,s1_timer=361..}] s1_timer 0

scoreboard players set @a[scores={char=41,s2_timer=1}] spellCD2 200
scoreboard players add @a[scores={char=41,s2_timer=1..}] s2_timer 1
#item replace entity @a[scores={char=41,s2_timer=200..}] hotbar.2 with minecraft:turtle_egg[minecraft:custom_name={text:"Birth Cycle",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={char=41,s2_timer=201..}] s2_timer 0

scoreboard players set @a[scores={char=41,s3_timer=1}] spellCD3 80
scoreboard players add @a[scores={char=41,s3_timer=1..}] s3_timer 1
#item replace entity @a[scores={char=41,s3_timer=80..}] hotbar.3 with minecraft:deepslate_gold_ore[minecraft:custom_name={text:"The Swarm",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={char=41,s3_timer=81..}] s3_timer 0


execute as @a[scores={char=41}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bow",Slot:0b}]}] run clear @a[scores={char=41}] minecraft:bow
item replace entity @a[scores={char=41}] hotbar.0 with minecraft:bow[minecraft:custom_name={text:"Mandibles",color:"gray",bold:1b},minecraft:unbreakable={}] 1

execute as @a[scores={char=41,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=41}] minecraft:carrot_on_a_stick
item replace entity @a[scores={char=41,s1_timer=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:fermented_spider_eye",minecraft:custom_name={text:"Cave Scout",color:"dark_aqua",bold:1b}] 1


execute as @a[scores={char=41,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=41}] minecraft:warped_fungus_on_a_stick
item replace entity @a[scores={char=41,s2_timer=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:turtle_egg",minecraft:custom_name={text:"Birth Cycle",color:"dark_aqua",bold:1b}] 1



execute as @a[scores={char=41,s3_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:deepslate_gold_ore",Slot:3b}]}] run clear @a[scores={char=41}] minecraft:deepslate_gold_ore
item replace entity @a[scores={char=41,s3_timer=0}] hotbar.3 with minecraft:carrot_on_a_stick[custom_data={s3:1},minecraft:item_model="minecraft:deepslate_gold_ore",minecraft:custom_name={text:"The Swarm",color:"dark_aqua",bold:1b}] 1



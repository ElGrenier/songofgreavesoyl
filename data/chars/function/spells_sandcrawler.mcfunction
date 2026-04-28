kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:copper_hoe"}}]

#apex predator

execute at @e[scores={char=9}] at @a[distance=1..,team=yellow] run particle block{block_state:{Name:"minecraft:yellow_wool"}} ~ 11 ~ 0.5 0.1 0.5 0.1 5
execute at @e[scores={char=9}] at @a[distance=1..,team=purple] run particle block{block_state:{Name:"minecraft:purple_wool"}} ~ 11 ~ 0.5 0.1 0.5 0.1 5

#title @a[tag=crawler_burrowed] actionbar burrowed
#title @a[tag=!crawler_burrowed] actionbar not_burrowed

scoreboard players add @a[scores={char=9,passive_craw=..-0}] passive_craw 1

scoreboard players set @a[scores={char=9,universal_damagetaken=1..}] passive_craw 0
scoreboard players set @a[scores={char=9,universal_damagetaken_shield=1..}] passive_craw 0
scoreboard players set @a[scores={char=9,universal_hit=1..}] passive_craw 0
scoreboard players set @a[scores={char=9,universal_hit=1..}] passive_craw 0

scoreboard players add @a[scores={char=9,universal_sneak=1..passive_craw=0..}] passive_craw 1
scoreboard players set @a[scores={char=9,universal_sneak=0,passive_craw=0..}] passive_craw 0

execute at @a[scores={char=9,universal_walk=1..},tag=crawler_burrowed] run particle block{block_state:{Name:"minecraft:sand"}} ~ ~0.1 ~ 0.3 0.1 0.3 1 4 force
execute at @a[scores={char=9,universal_walk=1..},tag=crawler_burrowed] run particle falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~0.1 ~ 0.3 0.1 0.3 1 1 force
execute at @a[scores={char=9,universal_walk=1..},tag=crawler_burrowed] run playsound block.sand.break master @a[distance=..10] ~ ~ ~ 0.2 0.1 1.0

execute at @a[scores={char=9,passive_craw=40..,CC_silence=0},tag=!crawler_burrowed] run particle block{block_state:{Name:"minecraft:sand"}} ~ ~0.1 ~ 0.5 0.1 0.5 1 10 force
execute at @a[scores={char=9,passive_craw=40..,CC_silence=0},tag=!crawler_burrowed] run tag @a[scores={char=9}] add crawler_become_burrowed

execute at @a[scores={char=9,passive_craw=30..,CC_silence=0},tag=crawler_burrowed] run scoreboard players set @a[scores={char=9}] s0_timer 1
execute at @a[scores={char=9,passive_craw=30..,CC_silence=0},tag=crawler_burrowed] run tag @a[scores={char=9}] add crawler_become_unburrowed

title @a[scores={char=9,passive_craw=1..40}] times 0 3 0
title @a[scores={char=9,passive_craw=1..40}] title {text:" ",type:"text"}
#title @a[scores={char=9,passive_craw=1}] subtitle {text:" ",type:"text"}

title @a[scores={char=9,passive_craw=1..10},tag=!crawler_burrowed] subtitle [{text:"[",bold:1b,color:"#684822",type:"text"},{text:"=",color:"gold",bold:0b,type:"text"},{text:"===",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"#684822",type:"text"}]
title @a[scores={char=9,passive_craw=11..20},tag=!crawler_burrowed] subtitle [{text:"[",bold:1b,color:"#684822",type:"text"},{text:"==",color:"gold",bold:0b,type:"text"},{text:"==",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"#684822",type:"text"}]
title @a[scores={char=9,passive_craw=21..30},tag=!crawler_burrowed] subtitle [{text:"[",bold:1b,color:"#684822",type:"text"},{text:"===",color:"gold",bold:0b,type:"text"},{text:"=",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"#684822",type:"text"}]
title @a[scores={char=9,passive_craw=31..40},tag=!crawler_burrowed] subtitle [{text:"[",bold:1b,color:"#684822",type:"text"},{text:"====",color:"gold",bold:0b,type:"text"},{text:"",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"#684822",type:"text"}]


title @a[scores={char=9,passive_craw=1..10},tag=crawler_burrowed] subtitle [{text:"[",bold:1b,color:"#684822",type:"text"},{text:"=",color:"gold",bold:0b,type:"text"},{text:"==",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"#684822",type:"text"}]
title @a[scores={char=9,passive_craw=11..20},tag=crawler_burrowed] subtitle [{text:"[",bold:1b,color:"#684822",type:"text"},{text:"==",color:"gold",bold:0b,type:"text"},{text:"=",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"#684822",type:"text"}]
title @a[scores={char=9,passive_craw=21..30},tag=crawler_burrowed] subtitle [{text:"[",bold:1b,color:"#684822",type:"text"},{text:"===",color:"gold",bold:0b,type:"text"},{text:"",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"#684822",type:"text"}]

# burrowing
tag @a[scores={char=9},tag=crawler_become_burrowed] add crawler_burrowed
attribute @p[scores={char=9},tag=crawler_become_burrowed] scale base set 0.5
attribute @p[scores={char=9},tag=crawler_become_burrowed] step_height base set 1
attribute @p[scores={char=9},tag=crawler_become_burrowed] jump_strength base set 0
attribute @p[scores={char=9},tag=crawler_become_burrowed] gravity base set 1

scoreboard players set @a[scores={char=9},tag=crawler_become_burrowed] passive_craw -20
tag @a remove crawler_become_burrowed

# unburrowing
tag @a[scores={char=9},tag=crawler_become_unburrowed] remove crawler_burrowed
tag @a[scores={char=9},tag=crawler_become_unburrowed] remove invisible
attribute @p[scores={char=9},tag=crawler_become_unburrowed] scale base set 1
attribute @p[scores={char=9},tag=crawler_become_unburrowed] step_height base set 0.6
attribute @p[scores={char=9},tag=crawler_become_unburrowed] jump_strength base set 0.41
attribute @p[scores={char=9},tag=crawler_become_unburrowed] gravity base set 0.08
effect clear @a[scores={char=9},tag=crawler_become_unburrowed]
execute at @p[scores={char=9},tag=crawler_become_unburrowed] run particle falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~1 ~ 1 1 1 1 100 force
execute at @p[scores={char=9},tag=crawler_become_unburrowed] run playsound entity.cat.hiss master @a[distance=..10] ~ ~ ~ 1 0.6 1
execute at @p[scores={char=9},tag=crawler_become_unburrowed] run playsound entity.polar_bear.warning master @a[distance=..10] ~ ~ ~ 0.6 0.1 1
scoreboard players set @a[scores={char=9},tag=crawler_become_unburrowed] passive_craw -20
tag @a remove crawler_become_unburrowed

effect give @p[scores={char=9,s0_timer=2}] levitation 1 11 true
execute at @p[scores={char=9,s0_timer=2}] as @e[distance=..4,tag=valid_spell_target] unless score @s Team = @p[scores={char=9}] Team run scoreboard players set @s CC_knockup 15
effect clear @p[scores={char=9,s0_timer=7}] levitation

effect give @a[scores={char=9},tag=crawler_burrowed] weakness infinite 10 true
effect give @a[scores={char=9},tag=crawler_burrowed] resistance infinite 5 true
effect give @a[scores={char=9},tag=crawler_burrowed] speed infinite 2 true
effect give @a[scores={char=9},tag=crawler_burrowed] invisibility infinite 0 true
effect give @a[scores={char=9},tag=crawler_burrowed] blindness infinite 0 true
scoreboard players set @a[scores={char=9},tag=crawler_burrowed] CC_intangible 3
tag @a[scores={char=9},tag=crawler_burrowed] add invisible

item replace entity @a[scores={char=9},tag=crawler_burrowed] armor.head with stone[item_model=air,minecraft:custom_name={bold:1b,color:"aqua",text:"Super Secret Invisibility Health Retaining Tech(TM)"},minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:4.0d,operation:"add_value",slot:"head"}]] 1
item replace entity @a[scores={char=9},tag=crawler_burrowed] armor.chest with air
item replace entity @a[scores={char=9},tag=crawler_burrowed] armor.legs with air
item replace entity @a[scores={char=9},tag=crawler_burrowed] armor.feet with air


execute at @a[scores={char=9,passive_craw=1..39}] run particle block{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 0.5 0.2 0.5 0.01 10 force
execute at @a[scores={char=9,passive_craw=1..39}] run playsound block.sand.break master @a[distance=..10] ~ ~ ~ 1.0 0.1 1.0
execute at @a[scores={char=9,passive_craw=38..39}] run playsound block.grass.break master @a[distance=..10] ~ ~ ~ 1 1 1

tag @a[scores={char=9},tag=crawler_burrowed] add cannot_capture_altars
tag @a[scores={char=9},tag=!crawler_burrowed] remove cannot_capture_altars

#death from below - surface


scoreboard players set @a[scores={char=9,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=9,s1_timer=1,CC_silence=1..}] s1_timer 160

tag @a[scores={char=9,s1_timer=1},tag=!crawler_burrowed] add invisible
effect give @a[scores={char=9,s1_timer=1..2},tag=!crawler_burrowed] invisibility 2 1 true

execute at @a[scores={char=9,s1_timer=1,CC_silence=0},tag=!crawler_burrowed] run summon marker ~ ~ ~ {Tags:["death_from_below_dash","death_from_below_things","entities_sandcrawler"]}
execute at @a[scores={char=9,s1_timer=1,CC_silence=0},tag=crawler_burrowed] run summon marker ~ ~ ~ {Tags:["death_from_below_leap","death_from_below_things","entities_sandcrawler"]}
effect clear @a[scores={char=9,s1_timer=1..2},tag=crawler_burrowed] blindness

tag @a[scores={char=9,s1_timer=1,CC_silence=0},tag=crawler_burrowed] add crawler_become_unburrowed

tp @e[tag=death_from_below_things,limit=1] @a[scores={char=9,s1_timer=1},limit=1]
tag @a[scores={char=9,s1_timer=1}] add invisible
effect give @a[scores={char=9,s1_timer=1..2}] invisibility 2 1 true
scoreboard players set @a[scores={char=9,s1_timer=1..2}] CC_intangible 8
execute store result entity @e[tag=death_from_below_dash,limit=1] Rotation[1] float 1 run clear
execute if entity @e[tag=death_from_below_dash] run item replace entity @a[scores={char=9}] armor.head with stone[item_model=air,minecraft:custom_name={bold:1b,color:"aqua",text:"Super Secret Invisibility Health Retaining Tech(TM)"},minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:4.0d,operation:"add_value",slot:"head"}]] 1
execute if entity @e[tag=death_from_below_dash] run item replace entity @a[scores={char=9}] armor.chest with air
execute if entity @e[tag=death_from_below_dash] run item replace entity @a[scores={char=9}] armor.legs with air
execute if entity @e[tag=death_from_below_dash] run item replace entity @a[scores={char=9}] armor.feet with :air

execute at @a[scores={char=9,universal_death=1..}] run kill @e[tag=death_from_below_things]

tp @a[scores={char=9}] @e[tag=death_from_below_dash,limit=1]

execute as @e[tag=death_from_below_dash] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=death_from_below_dash] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~
execute as @e[tag=death_from_below_dash] at @s run tp @s ^ ^ ^0.4
execute as @e[tag=death_from_below_dash] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=death_from_below_dash] at @s if block ~ ~-0.5 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute at @e[tag=death_from_below_dash] as @e[distance=..1.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=9}] Team run tag @s add sand_crawler_hit
execute as @e[tag=death_from_below_dash] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=death_from_below_dash] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~
execute as @e[tag=death_from_below_dash] at @s run tp @s ^ ^ ^0.4
execute as @e[tag=death_from_below_dash] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=death_from_below_dash] at @s if block ~ ~-0.5 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute at @e[tag=death_from_below_dash] as @e[distance=..1.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=9}] Team run tag @s add sand_crawler_hit
execute as @e[tag=death_from_below_dash] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=death_from_below_dash] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~
execute as @e[tag=death_from_below_dash] at @s run tp @s ^ ^ ^0.4
execute as @e[tag=death_from_below_dash] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=death_from_below_dash] at @s if block ~ ~-0.5 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute at @e[tag=death_from_below_dash] as @e[distance=..1.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=9}] Team run tag @s add sand_crawler_hit

execute at @e[tag=death_from_below_dash] run playsound block.gravel.break master @a[distance=..10] ~ ~ ~ 1 0.2 1
execute at @e[tag=death_from_below_dash] run playsound block.sand.break master @a[distance=..10] ~ ~ ~ 1 0.5 1
execute at @e[tag=death_from_below_dash] run particle block{block_state:{Name:"minecraft:sandstone"}} ~ ~ ~ 0.5 0.2 0.5 0.1 50 normal
execute at @e[tag=death_from_below_dash] run particle falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 1 0.1 1 0.1 30 normal

execute as @e[tag=death_from_below_leap,x_rotation=-44..90] at @s run tp @s ~ ~ ~ ~ -45
tp @a[scores={char=9}] @e[tag=death_from_below_leap,limit=1]
execute if entity @e[tag=death_from_below_leap] as @a[scores={char=9}] at @s run tp @s ~ ~ ~ ~ 0

execute at @a[scores={char=9,s1_timer=1..7}] as @e[tag=death_from_below_leap] at @s run tp @s ^ ^ ^0.25
execute at @a[scores={char=9,s1_timer=1..7}] as @e[tag=death_from_below_leap] at @s run tp @s ^ ^ ^0.25
execute at @a[scores={char=9,s1_timer=1..7}] as @e[tag=death_from_below_leap] at @s run tp @s ^ ^ ^0.25
execute at @a[scores={char=9,s1_timer=1..7}] as @e[tag=death_from_below_leap] at @s run tp @s ^ ^ ^0.25

execute at @a[scores={char=9,s1_timer=7..12}] as @e[tag=death_from_below_leap] at @s run tp @s ^ ^ ^0.2
execute at @a[scores={char=9,s1_timer=7..12}] as @e[tag=death_from_below_leap] at @s run tp @s ^ ^ ^0.2
execute at @a[scores={char=9,s1_timer=7..12}] as @e[tag=death_from_below_leap] at @s run tp @s ^ ^ ^0.2
execute at @a[scores={char=9,s1_timer=7..12}] as @e[tag=death_from_below_leap] at @s run tp @s ~ ~-0.2 ~
execute at @a[scores={char=9,s1_timer=7..12}] as @e[tag=death_from_below_leap] at @s run tp @s ~ ~-0.2 ~
execute at @a[scores={char=9,s1_timer=7..12}] as @e[tag=death_from_below_leap] at @s run tp @s ~ ~-0.2 ~

execute at @a[scores={char=9,s1_timer=13..}] as @e[tag=death_from_below_leap] at @s run tp @s ^ ^ ^0.15
execute at @a[scores={char=9,s1_timer=13..}] as @e[tag=death_from_below_leap] at @s run tp @s ^ ^ ^0.15
execute at @a[scores={char=9,s1_timer=13..}] as @e[tag=death_from_below_leap] at @s run tp @s ^ ^ ^0.15
execute at @a[scores={char=9,s1_timer=13..}] as @e[tag=death_from_below_leap] at @s run tp @s ~ ~-0.25 ~
execute at @a[scores={char=9,s1_timer=13..}] as @e[tag=death_from_below_leap] at @s run tp @s ~ ~-0.25 ~
execute at @a[scores={char=9,s1_timer=13..}] as @e[tag=death_from_below_leap] at @s run tp @s ~ ~-0.25 ~
execute at @a[scores={char=9,s1_timer=13..}] as @e[tag=death_from_below_leap] at @s run tp @s ~ ~-0.25 ~

execute as @e[tag=death_from_below_leap] at @s unless block ^ ^ ^0.5 #minecraft:dash run summon marker ~ ~1 ~ {Tags:["sandcrawler_leap_slam","entities_sandcrawler"]}
execute as @e[tag=death_from_below_leap] at @s unless block ^ ^ ^1 #minecraft:dash run summon marker ~ ~1 ~ {Tags:["sandcrawler_leap_slam","entities_sandcrawler"]}


execute at @e[tag=sandcrawler_leap_slam] run kill @e[tag=death_from_below_leap]
execute at @e[tag=sandcrawler_leap_slam] run tp @a[scores={char=9}] ~ ~0.5 ~
execute at @e[tag=sandcrawler_leap_slam] run particle falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 3 0.3 3 0.1 100 normal
execute at @e[tag=sandcrawler_leap_slam] run particle block{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 3 0.2 3 0.1 250 normal
execute at @e[tag=sandcrawler_leap_slam] run playsound block.sand.break master @a[distance=..10] ~ ~ ~ 1 0.3 1
execute at @e[tag=sandcrawler_leap_slam] run playsound block.stone.fall master @a[distance=..10] ~ ~ ~ 1 0.3 1
execute at @e[tag=sandcrawler_leap_slam] run playsound block.sand.fall master @a[distance=..10] ~ ~ ~ 1 0.3 1
execute at @e[tag=sandcrawler_leap_slam] as @e[distance=..4,tag=valid_spell_target] unless score @s Team = @p[scores={char=9}] Team run tag @s add sand_crawler_hit
kill @e[tag=sandcrawler_leap_slam]

effect clear @a[scores={char=9,s1_timer=10..12}] invisibility
effect clear @a[scores={char=9,s1_timer=10..12}] weakness
effect clear @a[scores={char=9,s1_timer=10..12}] resistance
execute at @a[scores={char=9,s1_timer=10..}] run kill @e[tag=death_from_below_dash]
execute at @a[scores={char=9,s1_timer=40..}] run kill @e[tag=death_from_below_leap]
execute at @a[scores={char=9,s1_timer=10}] run playsound block.sand.break master @a[distance=..10] ~ ~ ~ 1 0.5 1
tag @a[scores={char=9,s1_timer=10..12}] remove invisible


execute at @e[tag=sand_crawler_hit] run kill @e[tag=death_from_below_things]
execute at @e[tag=sand_crawler_hit] run playsound entity.cat.hiss master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute as @e[tag=sand_crawler_hit] run damage @s 5 generic by @p[scores={char=9}] from @p[scores={char=9}]
effect give @e[tag=sand_crawler_hit] slowness 2 3
tag @e remove sand_crawler_hit



#death from below - underground

execute at @a[scores={char=9,s1_timer=1,burrowed=1}] run summon marker ~ ~ ~ {Tags:["below_knockup","entities_sandcrawler"]}

execute at @a[scores={char=9,s1_timer=1,burrowed=1}] run effect clear @a[scores={char=9}] invisibility
execute at @a[scores={char=9,s1_timer=1,burrowed=1}] run effect clear @a[scores={char=9}] speed
execute at @a[scores={char=9,s1_timer=1,burrowed=1}] run effect clear @a[scores={char=9}] night_vision

execute at @a[scores={char=9,s1_timer=1,burrowed=1}] run tp @a[scores={char=9}] ~ 12 ~ ~ -90
execute at @a[scores={char=9,s1_timer=1,burrowed=1}] run particle block{block_state:{Name:"minecraft:sand"}} ~ 13 ~ 4 0.5 4 1 100 force
execute at @a[scores={char=9,s1_timer=1,burrowed=1}] run particle falling_dust{block_state:{Name:"minecraft:sand"}} ~ 13 ~ 4 0.5 4 1 100 force
execute if entity @e[tag=below_knockup] at @a[scores={char=9,s1_timer=1..10}] as @a[scores={char=9}] run tp @s ~ ~0.3 ~
execute if entity @e[tag=below_knockup] at @a[scores={char=9,s1_timer=1..10}] run particle block{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 1 2 1 1 60 force

execute if entity @e[tag=below_knockup] at @a[scores={char=9,s1_timer=2}] run playsound block.grass.break master @a[distance=..10] ~ ~ ~ 1 1 1
execute if entity @e[tag=below_knockup] at @a[scores={char=9,s1_timer=5}] run playsound block.grass.break master @a[distance=..10] ~ ~ ~ 1 1 1
execute if entity @e[tag=below_knockup] at @a[scores={char=9,s1_timer=8}] run playsound block.grass.break master @a[distance=..10] ~ ~ ~ 1 1 1
execute if entity @e[tag=below_knockup] at @a[scores={char=9,s1_timer=3}] run playsound entity.cat.hiss master @a[distance=..10] ~ ~ ~ 1 0.4 1

execute if entity @e[tag=below_knockup] at @a[scores={char=9,s1_timer=5..10}] as @e[distance=..4,tag=valid_spell_target] unless score @s Team = @p[scores={char=9}] Team run scoreboard players set @s CC_knockup 20

execute at @a[scores={char=9,s1_timer=10}] run kill @e[tag=below_knockup]

#sandstorm

scoreboard players set @a[scores={char=9,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=9,s2_timer=1,CC_silence=1..}] s2_timer 400

execute at @a[scores={char=9,s2_timer=1}] run summon marker ~ ~ ~ {Tags:["sandstorm_source","entities_sandcrawler"]}

execute at @a[scores={char=9,CC_silence=1..}] run kill @e[tag=sandstorm_source]
execute at @a[scores={char=9,s2_timer=120}] run kill @e[tag=sandstorm_source]
execute at @e[tag=sandstorm_source] as @e[distance=..6,tag=valid_spell_target] unless score @s Team = @p[scores={char=9}] Team run effect give @s slowness 2 0 true
execute at @e[tag=sandstorm_source] as @e[distance=..6,tag=valid_spell_target] unless score @s Team = @p[scores={char=9}] Team run effect give @s blindness 2 0 true

execute at @e[tag=sandstorm_source] run playsound block.sand.place master @a[distance=..12] ~ ~ ~ 0.1 0.5 1
execute at @e[tag=sandstorm_source] run particle falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 3.5 3 3.5 1 50 force
execute at @e[tag=sandstorm_source] run particle block{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 3.2 0.1 3.2 1 50 force

execute at @e[tag=sandstorm_source] run tag @a[distance=..6,scores={char=9}] add invisible
execute at @e[tag=sandstorm_source] run effect give @a[distance=..6,scores={char=9}] invisibility 999 0 true
execute at @e[tag=sandstorm_source] run item replace entity @a[distance=..6,scores={char=9}] armor.head with stone[item_model=air,minecraft:custom_name={bold:1b,color:"aqua",text:"Super Secret Invisibility Health Retaining Tech(TM)"},minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:4.0d,operation:"add_value",slot:"head"}]] 1
execute at @e[tag=sandstorm_source] run item replace entity @a[distance=..6,scores={char=9}] armor.chest with air
execute at @e[tag=sandstorm_source] run item replace entity @a[distance=..6,scores={char=9}] armor.legs with air
execute at @e[tag=sandstorm_source] run item replace entity @a[distance=..6,scores={char=9}] armor.feet with air


execute at @e[tag=sandstorm_source] unless entity @e[tag=death_from_below_things] run tag @a[distance=6.1..,scores={char=9},tag=!crawler_burrowed] remove invisible
execute at @e[tag=sandstorm_source] unless entity @e[tag=death_from_below_things] run effect clear @a[distance=6.1..,scores={char=9},tag=!crawler_burrowed] invisibility

execute at @a[scores={char=9,s2_timer=120}] run effect clear @a[scores={char=9},tag=!crawler_burrowed] invisibility
tag @a[scores={char=9,s2_timer=120},tag=!crawler_burrowed] remove invisible

execute as @e[tag=sandstorm_source] at @s run rotate @s ~6 ~
execute as @e[tag=sandstorm_source] at @s run particle dust{color:[1.0,0.67,0.0],scale:1} ^ ^ ^6 0.1 0.2 0.1 0 10
execute as @e[tag=sandstorm_source] at @s run particle dust{color:[1.0,0.67,0.0],scale:1} ^ ^ ^-6 0.1 0.2 0.1 0 10
execute as @e[tag=sandstorm_source] at @s run particle dust{color:[1.0,0.67,0.0],scale:1} ^6 ^ ^ 0.1 0.2 0.1 0 10
execute as @e[tag=sandstorm_source] at @s run particle dust{color:[1.0,0.67,0.0],scale:1} ^-6 ^ ^ 0.1 0.2 0.1 0 10
execute as @e[tag=sandstorm_source] at @s run particle dust{color:[1.0,0.67,0.0],scale:1} ^4.5 ^ ^4.5 0.1 0.2 0.1 0 10
execute as @e[tag=sandstorm_source] at @s run particle dust{color:[1.0,0.67,0.0],scale:1} ^-4.5 ^ ^-4.5 0.1 0.2 0.1 0 10
execute as @e[tag=sandstorm_source] at @s run particle dust{color:[1.0,0.67,0.0],scale:1} ^4.5 ^ ^-4.5 0.1 0.2 0.1 0 10
execute as @e[tag=sandstorm_source] at @s run particle dust{color:[1.0,0.67,0.0],scale:1} ^-4.5 ^ ^4.5 0.1 0.2 0.1 0 10

execute as @e[tag=sandstorm_source] at @s if block ~ ~-0.5 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=sandstorm_source] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~
execute as @e[tag=sandstorm_source] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~
execute as @e[tag=sandstorm_source] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~

# sand crawler


scoreboard players add @a[scores={s0_timer=1..,char=9}] s0_timer 1
scoreboard players set @a[scores={s0_timer=10..,char=9}] s0_timer 0

scoreboard players set @a[scores={s1_timer=1,char=9}] spellCD1 180
scoreboard players add @a[scores={s1_timer=1..,char=9}] s1_timer 1
scoreboard players set @a[scores={s1_timer=181..,char=9}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=9}] spellCD2 440
scoreboard players add @a[scores={s2_timer=1..,char=9}] s2_timer 1
scoreboard players set @a[scores={s2_timer=441..,char=9}] s2_timer 0

execute as @a[scores={char=9}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:copper_hoe",Slot:0b}]}] run clear @a[scores={char=9}] copper_hoe
item replace entity @a[scores={char=9},tag=!crawler_burrowed] hotbar.0 with copper_hoe[minecraft:custom_name={bold:1b,color:"gray",text:"Tail"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.55d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=1] 1
item replace entity @a[scores={char=9},tag=crawler_burrowed] hotbar.0 with copper_hoe[minecraft:custom_name={bold:1b,color:"gray",text:"Burrowed"},minecraft:item_model="minecraft:barrier",minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:-3d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.55d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=1] 1

execute as @a[scores={char=9,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=9}] minecraft:carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=9,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:spectral_arrow",minecraft:custom_name={text:"Death from Below",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=9,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=9}] minecraft:warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=9,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:eye_armor_trim_smithing_template",minecraft:custom_name={text:"Sandstorm",color:"dark_aqua",bold:1b}] 1



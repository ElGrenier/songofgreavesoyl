kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:copper_hoe"}}]

#apex predator

execute at @e[scores={char=9,burrowed=1}] at @a[distance=1..,team=yellow] run particle block{block_state:{Name:"minecraft:yellow_wool"}} ~ 11 ~ 0.5 0.1 0.5 0.1 5
execute at @e[scores={char=9,burrowed=1}] at @a[distance=1..,team=purple] run particle block{block_state:{Name:"minecraft:purple_wool"}} ~ 11 ~ 0.5 0.1 0.5 0.1 5

#scoreboard players set @a[scores={passive_craw=61}] passive_craw 0
scoreboard players add @a[scores={char=9,passive_craw=-10..-1}] passive_craw 1
scoreboard players add @a[scores={char=9,passive_craw=90..99}] passive_craw 1

execute at @a[scores={char=9,passive_craw=40,burrowed=0,CC_silence=0}] run particle block{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 0.5 1 0.5 1 40 force
execute at @a[scores={char=9,passive_craw=40,burrowed=0,CC_silence=0}] run tp @a[scores={char=9}] ~ 9 ~
execute at @a[scores={char=9,passive_craw=40,burrowed=0,CC_silence=0}] run scoreboard players set @a[scores={char=9}] burrowed 1
scoreboard players set @a[scores={char=9,passive_craw=40..89,burrowed=1}] passive_craw 90

title @a[scores={char=9,passive_craw=1..40,burrowed=0}] times 0 2 1
title @a[scores={char=9,passive_craw=1..40,burrowed=0}] title {text:" ",type:"text"}

title @a[scores={char=9,passive_craw=1..10,burrowed=0}] subtitle [{text:"[",bold:1b,color:"#684822",type:"text"},{text:"=",color:"gold",bold:0b,type:"text"},{text:"===",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"#684822",type:"text"}]
title @a[scores={char=9,passive_craw=11..20,burrowed=0}] subtitle [{text:"[",bold:1b,color:"#684822",type:"text"},{text:"==",color:"gold",bold:0b,type:"text"},{text:"==",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"#684822",type:"text"}]
title @a[scores={char=9,passive_craw=21..30,burrowed=0}] subtitle [{text:"[",bold:1b,color:"#684822",type:"text"},{text:"===",color:"gold",bold:0b,type:"text"},{text:"=",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"#684822",type:"text"}]
title @a[scores={char=9,passive_craw=31..40,burrowed=0}] subtitle [{text:"[",bold:1b,color:"#684822",type:"text"},{text:"====",color:"gold",bold:0b,type:"text"},{text:"",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"#684822",type:"text"}]

title @a[scores={char=9,passive_craw=100..130,burrowed=1}] times 0 2 1
title @a[scores={char=9,passive_craw=100..130,burrowed=1}] title {text:" ",type:"text"}

title @a[scores={char=9,passive_craw=101..110,burrowed=1}] subtitle [{text:"[",bold:1b,color:"#684822",type:"text"},{text:"=",color:"gold",bold:0b,type:"text"},{text:"==",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"#684822",type:"text"}]
title @a[scores={char=9,passive_craw=111..120,burrowed=1}] subtitle [{text:"[",bold:1b,color:"#684822",type:"text"},{text:"==",color:"gold",bold:0b,type:"text"},{text:"=",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"#684822",type:"text"}]
title @a[scores={char=9,passive_craw=121..130,burrowed=1}] subtitle [{text:"[",bold:1b,color:"#684822",type:"text"},{text:"===",color:"gold",bold:0b,type:"text"},{text:"",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"#684822",type:"text"}]


effect give @a[scores={char=9,burrowed=1}] speed 999 1 true
effect give @a[scores={char=9,burrowed=1}] night_vision 999 0 true
effect give @a[scores={char=9,burrowed=1}] invisibility 999 0 true

effect clear @a[scores={char=9,burrowed=1}] slowness
effect clear @a[scores={char=9,burrowed=1}] weakness
effect clear @a[scores={char=9,burrowed=1}] blindness
scoreboard players set @a[scores={char=9,burrowed=1}] CC_confusion 0
scoreboard players set @a[scores={char=9,burrowed=1}] CC_intangible 3


execute at @a[scores={char=9,passive_craw=130,burrowed=1}] run tp @a[scores={char=9}] ~ 13 ~
execute at @a[scores={char=9,passive_craw=130,burrowed=1}] run particle block{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 1 1 1 1 60 force
execute at @a[scores={char=9,passive_craw=130,burrowed=1}] run effect clear @a[scores={char=9}] invisibility
execute at @a[scores={char=9,passive_craw=130,burrowed=1}] run effect clear @a[scores={char=9}] speed
execute at @a[scores={char=9,passive_craw=130,burrowed=1}] run effect clear @a[scores={char=9}] night_vision
execute at @a[scores={char=9,passive_craw=130,burrowed=1}] run scoreboard players set @a[scores={char=9}] burrowed 0
execute at @a[scores={char=9,passive_craw=130,burrowed=0}] run scoreboard players set @a[scores={char=9}] passive_craw -10

scoreboard players set @a[scores={char=9,CC_silence=1..,burrowed=0}] passive_craw 0
scoreboard players set @a[scores={char=9,universal_jump=1..,burrowed=0}] passive_craw 0
scoreboard players set @a[scores={char=9,burrow_interrupt=1..,burrowed=0}] passive_craw 0
scoreboard players set @a[scores={char=9,burrowinterrupt1=1..,burrowed=0}] passive_craw 0
scoreboard players set @a[scores={char=9,burrowinterrupt2=1..,burrowed=0}] passive_craw 0
scoreboard players set @a[scores={char=9,burrow_interrupt=1..,burrowed=1}] passive_craw 100
scoreboard players set @a[scores={char=9,burrowinterrupt1=1..,burrowed=1}] passive_craw 100
scoreboard players set @a[scores={char=9,burrowinterrupt2=1..,burrowed=1}] passive_craw 100
scoreboard players set @a[scores={char=9,burrow_interrupt=1..}] burrow_interrupt 0
scoreboard players set @a[scores={char=9,burrowinterrupt1=1..}] burrowinterrupt1 0
scoreboard players set @a[scores={char=9,burrowinterrupt2=1..}] burrowinterrupt2 0


execute at @a[scores={char=9,passive_craw=1..39}] run particle block{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 0.5 0.5 0.5 0.01 30 force
execute at @a[scores={char=9,passive_craw=1..39}] run playsound block.sand.break master @a[distance=..10] ~ ~ ~ 1.0 0.1 1.0
execute at @a[scores={char=9,passive_craw=38..39}] run playsound block.grass.break master @a[distance=..10] ~ ~ ~ 1 1 1

execute at @a[scores={char=9,passive_craw=101..129}] run particle block{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 0.5 0.5 0.5 0.01 30 force
execute at @a[scores={char=9,passive_craw=101..129}] run playsound block.sand.break master @a[distance=..10] ~ ~ ~ 1 1 1
execute at @a[scores={char=9,passive_craw=128..129}] run playsound block.grass.break master @a[distance=..10] ~ ~ ~ 1 1 1



#death from below - surface


scoreboard players set @a[scores={char=9,s1_timer=1,CC_silence=1..,burrowed=0}] spellCD1 20
scoreboard players set @a[scores={char=9,s1_timer=1,CC_silence=1..,burrowed=0}] s1_timer 160

execute at @a[scores={char=9,s1_timer=1,CC_silence=0,burrowed=0}] run summon marker ~ ~ ~ {Tags:["death_from_below_thing","entities_sandcrawler"]}
tp @e[tag=death_from_below_thing,limit=1] @a[scores={char=9,s1_timer=1},limit=1]
tag @a[scores={char=9,s1_timer=1}] add invisible
effect give @a[scores={char=9,s1_timer=1..2}] invisibility 2 1 true
effect give @a[scores={char=9,s1_timer=1..2}] resistance 2 100 true
effect give @a[scores={char=9,s1_timer=1..2}] weakness 2 100 true
scoreboard players set @a[scores={char=9,s1_timer=1..2}] CC_intangible 8
execute store result entity @e[tag=death_from_below_thing,limit=1] Rotation[1] float 1 run clear
execute if entity @e[tag=death_from_below_thing] run item replace entity @a[scores={char=9}] armor.head with air
execute if entity @e[tag=death_from_below_thing] run item replace entity @a[scores={char=9}] armor.chest with air
execute if entity @e[tag=death_from_below_thing] run item replace entity @a[scores={char=9}] armor.legs with air
execute if entity @e[tag=death_from_below_thing] run item replace entity @a[scores={char=9}] armor.feet with :air

execute at @a[scores={char=9,universal_death=1..}] run kill @e[tag=death_from_below_thing]

tp @a[scores={char=9}] @e[tag=death_from_below_thing,limit=1]

execute as @e[tag=death_from_below_thing] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=death_from_below_thing] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=death_from_below_thing] at @s run tp @s ^ ^ ^0.9
execute as @e[tag=death_from_below_thing] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=death_from_below_thing] at @s if block ~ ~-0.5 ~ #minecraft:dash run tp @s ~ ~-0.5 ~

execute at @e[tag=death_from_below_thing] run playsound block.gravel.break master @a[distance=..10] ~ ~ ~ 1 0.2 1
execute at @e[tag=death_from_below_thing] run playsound block.sand.break master @a[distance=..10] ~ ~ ~ 1 0.5 1
execute at @e[tag=death_from_below_thing] run particle block{block_state:{Name:"minecraft:sandstone"}} ~ ~ ~ 0.5 0.2 0.5 0.1 50 normal
execute at @e[tag=death_from_below_thing] run particle falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 1 0.1 1 0.1 30 normal

effect clear @a[scores={char=9,s1_timer=10..12}] invisibility
effect clear @a[scores={char=9,s1_timer=10..12}] weakness
effect clear @a[scores={char=9,s1_timer=10..12}] resistance
execute at @a[scores={char=9,s1_timer=10..}] run kill @e[tag=death_from_below_thing]
execute at @a[scores={char=9,s1_timer=10}] run playsound minecraft:block.sand.break master @a[distance=..10] ~ ~ ~ 1 0.5 1
tag @a[scores={char=9,s1_timer=10..12}] remove invisible


execute at @e[tag=death_from_below_thing] as @p[distance=..1.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=9}] Team run playsound entity.cat.hiss master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @e[tag=death_from_below_thing] as @p[distance=..1.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=9}] Team run effect give @s slowness 2 3
execute at @e[tag=death_from_below_thing] as @p[distance=..1.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=9}] Team run damage @s 5 generic by @p[scores={char=9}] from @p[scores={char=9}]
execute at @e[tag=death_from_below_thing] as @p[distance=..1.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=9}] Team run item replace entity @a[scores={char=9}] hotbar.0 with minecraft:wooden_shovel[minecraft:custom_name={bold:1b,color:"gray",text:"Tail"},minecraft:damage=54,minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:4.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.65d,operation:"add_multiplied_base",slot:"mainhand"}]] 1
execute at @e[tag=death_from_below_thing] as @p[distance=..1.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=9}] Team run kill @e[tag=death_from_below_thing]


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

execute at @a[scores={char=9,s1_timer=1,burrowed=1}] run scoreboard players set @a[scores={char=9}] burrowed 0
execute at @a[scores={char=9,s1_timer=2,burrowed=0}] run scoreboard players set @a[scores={char=9}] passive_craw -10

execute at @a[scores={char=9,s1_timer=10}] run kill @e[tag=below_knockup]

#sandstorm

scoreboard players set @a[scores={char=9,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=9,s2_timer=1,CC_silence=1..}] s2_timer 400

execute at @a[scores={char=9,s2_timer=1,burrowed=1}] run summon marker ~ 13 ~ {Tags:["sandstorm_source","entities_sandcrawler"]}
execute at @a[scores={char=9,s2_timer=1,burrowed=0}] run summon marker ~ ~ ~ {Tags:["sandstorm_source","entities_sandcrawler"]}

execute at @a[scores={char=9,CC_silence=1..}] run kill @e[tag=sandstorm_source]
execute at @a[scores={char=9,s2_timer=120}] run kill @e[tag=sandstorm_source]
execute at @e[tag=sandstorm_source] as @e[distance=..6,tag=valid_spell_target] unless score @s Team = @p[scores={char=9}] Team run effect give @s slowness 2 0 true
execute at @e[tag=sandstorm_source] as @e[distance=..6,tag=valid_spell_target] unless score @s Team = @p[scores={char=9}] Team run effect give @s blindness 2 0 true

execute at @e[tag=sandstorm_source] run playsound block.sand.place master @a[distance=..12] ~ ~ ~ 0.1 0.5 1
execute at @e[tag=sandstorm_source] run particle falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 3.5 3 3.5 1 50 force
execute at @e[tag=sandstorm_source] run particle block{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 3.2 0.1 3.2 1 50 force

execute at @e[tag=sandstorm_source] run tag @a[distance=..6,scores={char=9}] add invisible
execute at @e[tag=sandstorm_source] run effect give @a[distance=..6,scores={char=9}] invisibility 999 0 true
execute at @e[tag=sandstorm_source] run item replace entity @a[distance=..6,scores={char=9}] armor.head with minecraft:air
execute at @e[tag=sandstorm_source] run item replace entity @a[distance=..6,scores={char=9}] armor.chest with minecraft:air
execute at @e[tag=sandstorm_source] run item replace entity @a[distance=..6,scores={char=9}] armor.legs with minecraft:air
execute at @e[tag=sandstorm_source] run item replace entity @a[distance=..6,scores={char=9}] armor.feet with minecraft:air

effect clear @a[scores={char=9,CC_silence=1..}] minecraft:invisibility
tag @a[scores={char=9,CC_silence=1..}] remove invisible
execute at @e[tag=sandstorm_source] run tag @a[distance=6.1..,scores={char=9}] remove invisible
execute at @e[tag=sandstorm_source] run effect clear @a[distance=6.1..,scores={char=9}] minecraft:invisibility

execute at @a[scores={char=9,s2_timer=120}] run effect clear @a[scores={char=9}] minecraft:invisibility
tag @a[scores={char=9,s2_timer=120}] remove invisible

execute as @e[tag=sandstorm_source] at @s run rotate @s ~6 ~
execute as @e[tag=sandstorm_source] at @s run particle dust{color:[1.0,0.67,0.0],scale:1} ^ ^ ^6 0.1 0.2 0.1 0 10
execute as @e[tag=sandstorm_source] at @s run particle dust{color:[1.0,0.67,0.0],scale:1} ^ ^ ^-6 0.1 0.2 0.1 0 10
execute as @e[tag=sandstorm_source] at @s run particle dust{color:[1.0,0.67,0.0],scale:1} ^6 ^ ^ 0.1 0.2 0.1 0 10
execute as @e[tag=sandstorm_source] at @s run particle dust{color:[1.0,0.67,0.0],scale:1} ^-6 ^ ^ 0.1 0.2 0.1 0 10
execute as @e[tag=sandstorm_source] at @s run particle dust{color:[1.0,0.67,0.0],scale:1} ^4.5 ^ ^4.5 0.1 0.2 0.1 0 10
execute as @e[tag=sandstorm_source] at @s run particle dust{color:[1.0,0.67,0.0],scale:1} ^-4.5 ^ ^-4.5 0.1 0.2 0.1 0 10
execute as @e[tag=sandstorm_source] at @s run particle dust{color:[1.0,0.67,0.0],scale:1} ^4.5 ^ ^-4.5 0.1 0.2 0.1 0 10
execute as @e[tag=sandstorm_source] at @s run particle dust{color:[1.0,0.67,0.0],scale:1} ^-4.5 ^ ^4.5 0.1 0.2 0.1 0 10

# sand crawler

scoreboard players set @a[scores={s1_timer=1,char=9}] spellCD1 180
scoreboard players add @a[scores={s1_timer=1..,char=9}] s1_timer 1
scoreboard players set @a[scores={s1_timer=181..,char=9}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=9}] spellCD2 440
scoreboard players add @a[scores={s2_timer=1..,char=9}] s2_timer 1
scoreboard players set @a[scores={s2_timer=441..,char=9}] s2_timer 0

execute as @a[scores={char=9}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:copper_hoe",Slot:0b}]}] run clear @a[scores={char=9}] copper_hoe
item replace entity @a[scores={char=9}] hotbar.0 with copper_hoe[minecraft:custom_name={bold:1b,color:"gray",text:"Tail"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.65d,operation:"add_multiplied_base",slot:"mainhand"}]] 1


execute as @a[scores={char=9,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=9}] minecraft:carrot_on_a_stick
item replace entity @a[scores={char=9,s1_timer=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:spectral_arrow",minecraft:custom_name={text:"Death from Below",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=9,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=9}] minecraft:warped_fungus_on_a_stick
item replace entity @a[scores={char=9,s2_timer=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:eye_armor_trim_smithing_template",minecraft:custom_name={text:"Sandstorm",color:"dark_aqua",bold:1b}] 1



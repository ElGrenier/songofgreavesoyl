kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:lapis_lazuli"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:light_blue_dye"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_shovel"}}]


#passive



title @a[scores={char=35,passive_pris=1..60}] actionbar [{text:"[",bold:1b,color:"blue",type:"text"},{text:"==========",color:"aqua",bold:0b,type:"text"},{text:"",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]
title @a[scores={char=35,passive_pris=61..120}] actionbar [{text:"[",bold:1b,color:"blue",type:"text"},{text:"=========",color:"aqua",bold:0b,type:"text"},{text:"=",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]
title @a[scores={char=35,passive_pris=121..180}] actionbar [{text:"[",bold:1b,color:"blue",type:"text"},{text:"========",color:"aqua",bold:0b,type:"text"},{text:"==",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]
title @a[scores={char=35,passive_pris=181..240}] actionbar [{text:"[",bold:1b,color:"blue",type:"text"},{text:"=======",color:"aqua",bold:0b,type:"text"},{text:"===",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]
title @a[scores={char=35,passive_pris=241..300}] actionbar [{text:"[",bold:1b,color:"blue",type:"text"},{text:"======",color:"aqua",bold:0b,type:"text"},{text:"====",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]
title @a[scores={char=35,passive_pris=301..360}] actionbar [{text:"[",bold:1b,color:"blue",type:"text"},{text:"=====",color:"aqua",bold:0b,type:"text"},{text:"=====",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]
title @a[scores={char=35,passive_pris=361..420}] actionbar [{text:"[",bold:1b,color:"blue",type:"text"},{text:"====",color:"aqua",bold:0b,type:"text"},{text:"======",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]
title @a[scores={char=35,passive_pris=421..480}] actionbar [{text:"[",bold:1b,color:"blue",type:"text"},{text:"===",color:"aqua",bold:0b,type:"text"},{text:"=======",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]
title @a[scores={char=35,passive_pris=481..540}] actionbar [{text:"[",bold:1b,color:"blue",type:"text"},{text:"==",color:"aqua",bold:0b,type:"text"},{text:"========",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]
title @a[scores={char=35,passive_pris=541..600}] actionbar [{text:"[",bold:1b,color:"blue",type:"text"},{text:"=",color:"aqua",bold:0b,type:"text"},{text:"=========",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]
title @a[scores={char=35,passive_pris=600..700}] actionbar [{text:"[",bold:1b,color:"blue",type:"text"},{text:"",color:"aqua",bold:0b,type:"text"},{text:"==========",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]
title @a[scores={char=35,passive_pris=701..}] actionbar {text:"Thank you!",color:"gray",italic:1b,type:"text"}

title @a[scores={char=35,passive_pris=0}] actionbar [{text:"[",bold:1b,color:"blue",type:"text"},{text:"The Gift is ready",color:"aqua",bold:0b,type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]

scoreboard players set @a[scores={passive_pris=0,char=35,universal_damagetaken=1..,HP=..10}] passive_pris 740


effect give @a[scores={passive_pris=739,char=35}] minecraft:absorption 7 2
execute at @a[scores={passive_pris=730..739,char=35}] run particle minecraft:rain ~ ~0.6 ~ 0.6 0.8 0.6 1 60
execute at @a[scores={passive_pris=739,char=35}] run particle minecraft:dripping_water ~ ~ ~ 3 3 3 1 300
execute at @a[scores={passive_pris=739,char=35}] run playsound minecraft:block.enchantment_table.use master @a[distance=..10] ~ ~ ~ 1 0.9 1
execute at @a[scores={passive_pris=739,char=35}] run playsound minecraft:weather.rain master @a[distance=..10] ~ ~ ~ 1 1 1

scoreboard players remove @a[scores={passive_pris=1..}] passive_pris 1


#heal dash

scoreboard players set @a[scores={char=35,spell_pris_1_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=35,spell_pris_1_1=1,CC_silence=1..}] spell_pris_1_1 180

execute at @a[scores={char=35,death_dash_reset=1..}] run kill @e[tag=healdash]
execute at @a[scores={char=35,universal_death=1..}] run kill @e[tag=healdash]
execute at @a[scores={char=35,CC_grounded=1..}] run kill @e[tag=healdash]
execute at @a[scores={char=35,CC_root=1..}] run kill @e[tag=healdash]
execute at @a[scores={char=35,CC_stun=1..}] run kill @e[tag=healdash]
execute at @a[scores={char=35,CC_silence=1..}] run kill @e[tag=healdash]

effect give @a[scores={char=35,spell_pris_1_1=2,CC_silence=0}] minecraft:slow_falling 1 1 true
execute at @a[scores={char=35,spell_pris_1_1=2}] run particle minecraft:dripping_water ~ ~0.1 ~ 0.4 0.15 0.4 1 50
execute at @a[scores={char=35,spell_pris_1_1=1..2}] run kill @e[tag=healdash]
execute at @a[scores={char=35,spell_pris_1_1=1..2}] run kill @e[tag=silencedash]
execute at @a[scores={char=35,spell_pris_1_1=1,CC_silence=0}] run playsound minecraft:block.enchantment_table.use master @a[distance=..10] ~ ~ ~ 1 2 1
execute at @a[scores={char=35,spell_pris_1_1=2}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["healdash"],NoGravity:1b}
tp @e[tag=healdash,limit=1] @a[scores={char=35,spell_pris_1_1=2},limit=1]
execute at @a[scores={char=35,spell_pris_1_1=2},limit=1] run tp @e[tag=healdash,limit=1] ~ ~0.5 ~

execute as @e[tag=healdash] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=healdash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=healdash] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=healdash] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=healdash] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=healdash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute as @e[tag=healdash] at @s run tp @s ^ ^ ^1

tp @a[scores={char=35,spell_pris_1_1=2..8,death_dash_reset=0}] @e[tag=healdash,limit=1]
execute at @a[scores={char=35,spell_pris_1_1=10}] run kill @e[tag=healdash]
execute as @a[scores={char=35,spell_pris_1_1=10}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~
effect clear @a[scores={char=35,spell_pris_1_1=10..11,CC_silence=0}] minecraft:slow_falling

execute at @a[scores={char=35,spell_pris_1_1=1..10,CC_silence=0}] run particle minecraft:enchanted_hit ~ ~1 ~ 0.4 0.8 0.4 0.01 5
execute at @a[scores={char=35,spell_pris_1_1=1..10,CC_silence=0}] run particle minecraft:block{block_state:{Name:"minecraft:water"}} ~ ~1 ~ 2 1 2 0.01 1
execute at @a[scores={char=35,spell_pris_1_1=1..10,CC_silence=0}] run particle minecraft:rain ~ ~1 ~ 2 1 2 0.01 5

execute at @a[scores={char=35,spell_pris_1_1=1..10,CC_silence=0},team=yellow] if entity @e[tag=healdash] run scoreboard players set @a[distance=..3,team=yellow,scores={priestess_heal=0}] priestess_heal 1
execute at @a[scores={char=35,spell_pris_1_1=1..10,CC_silence=0},team=purple] if entity @e[tag=healdash] run scoreboard players set @a[distance=..3,team=purple,scores={priestess_heal=0}] priestess_heal 1

effect give @a[scores={priestess_heal=2}] minecraft:instant_health
effect give @a[scores={priestess_heal=2}] minecraft:absorption 4
execute at @a[scores={priestess_heal=1..}] run particle minecraft:rain ~ ~0.6 ~ 0.6 0.8 0.6 1 10
scoreboard players add @a[scores={priestess_heal=1..}] priestess_heal 1
scoreboard players set @a[scores={priestess_heal=10..}] priestess_heal 0

#silence dash

scoreboard players set @a[scores={char=35,spell_pris_2_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=35,spell_pris_2_1=1,CC_silence=1..}] spell_pris_2_1 280

execute at @a[scores={char=35,death_dash_reset=1..}] run kill @e[tag=silencedash]
execute at @a[scores={char=35,universal_death=1..}] run kill @e[tag=silencedash]
execute at @a[scores={char=35,CC_grounded=1..}] run kill @e[tag=silencedash]
execute at @a[scores={char=35,CC_root=1..}] run kill @e[tag=silencedash]
execute at @a[scores={char=35,CC_stun=1..}] run kill @e[tag=silencedash]
execute at @a[scores={char=35,CC_silence=1..}] run kill @e[tag=silencedash]

effect give @a[scores={char=35,spell_pris_2_1=2,CC_silence=0}] minecraft:slow_falling 1 1 true
execute at @a[scores={char=35,spell_pris_2_1=2}] run particle minecraft:dripping_water ~ ~0.1 ~ 0.4 0.15 0.4 1 50
execute at @a[scores={char=35,spell_pris_2_1=1..2}] run kill @e[tag=healdash]
execute at @a[scores={char=35,spell_pris_2_1=1..2}] run kill @e[tag=silencedash]
execute at @a[scores={char=35,spell_pris_2_1=1,CC_silence=0}] run playsound minecraft:entity.zombie.infect master @a[distance=..10] ~ ~ ~ 1 2 1
execute at @a[scores={char=35,spell_pris_2_1=2}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["silencedash"],NoGravity:1b}
tp @e[tag=silencedash,limit=1] @a[scores={char=35,spell_pris_2_1=2},limit=1]
execute at @a[scores={char=35,spell_pris_2_1=2},limit=1] run tp @e[tag=silencedash,limit=1] ~ ~0.5 ~

execute as @e[tag=silencedash] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=silencedash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=silencedash] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=silencedash] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=silencedash] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=silencedash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute as @e[tag=silencedash] at @s run tp @s ^ ^ ^1

execute at @a[scores={char=35,spell_pris_2_1=1..10,CC_silence=0},team=yellow] if entity @e[tag=silencedash] run scoreboard players set @a[distance=..2.5,team=purple] CC_silence 60
execute at @a[scores={char=35,spell_pris_2_1=1..10,CC_silence=0},team=purple] if entity @e[tag=silencedash] run scoreboard players set @a[distance=..2.5,team=yellow] CC_silence 60
execute at @a[scores={char=35,spell_pris_2_1=1..10,CC_silence=0},team=yellow] at @a[distance=..2.5,team=purple] run particle minecraft:enchant ~ ~0.5 ~ 0.3 1 0.3 0.01 20
execute at @a[scores={char=35,spell_pris_2_1=1..10,CC_silence=0},team=purple] at @a[distance=..2.5,team=yellow] run particle minecraft:enchant ~ ~0.5 ~ 0.3 1 0.3 0.01 20

tp @a[scores={char=35,spell_pris_2_1=2..7,death_dash_reset=0}] @e[tag=silencedash,limit=1]
execute at @a[scores={char=35,spell_pris_2_1=7..8}] run kill @e[tag=silencedash]
execute as @a[scores={char=35,spell_pris_2_1=7}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~
effect clear @a[scores={char=35,spell_pris_2_1=7..8,CC_silence=0}] minecraft:slow_falling

execute at @a[scores={char=35,spell_pris_2_1=1..10,CC_silence=0}] run particle minecraft:enchant ~ ~1 ~ 0.4 0.8 0.4 0.01 7
execute at @a[scores={char=35,spell_pris_2_1=1..10,CC_silence=0}] run particle minecraft:rain ~ ~1 ~ 2 1 2 0.01 5


# priestess

scoreboard players add @a[scores={spell_pris_1=1..}] spell_pris_1_1 1
item replace entity @a[scores={char=35,spell_pris_1_1=200..}] hotbar.1 with minecraft:light_blue_dye[minecraft:custom_name={text:"Drizzle Dance",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_pris_1_1=201..}] spell_pris_1 0
scoreboard players set @a[scores={spell_pris_1_1=201..}] spell_pris_1_1 0
scoreboard players set @a[scores={spell_pris_1_1=1}] spellCD1 200

scoreboard players add @a[scores={spell_pris_2=1..}] spell_pris_2_1 1
item replace entity @a[scores={char=35,spell_pris_2_1=300..}] hotbar.2 with minecraft:lapis_lazuli[minecraft:custom_name={text:"Hush",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_pris_2_1=301..}] spell_pris_2 0
scoreboard players set @a[scores={spell_pris_2_1=301..}] spell_pris_2_1 0
scoreboard players set @a[scores={spell_pris_2_1=1}] spellCD2 300

execute as @a[scores={char=35}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:golden_shovel",Slot:0b}]}] run clear @a[scores={char=35}] minecraft:golden_shovel
item replace entity @a[scores={char=35}] hotbar.0 with minecraft:golden_shovel[minecraft:custom_name={bold:1b,color:"gray",text:"Staff"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=35,spell_pris_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:light_blue_dye",Slot:1b}]}] run clear @a[scores={char=35}] minecraft:light_blue_dye
item replace entity @a[scores={char=35,spell_pris_1=0}] hotbar.1 with minecraft:light_blue_dye[minecraft:custom_name={text:"Drizzle Dance",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=35,spell_pris_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:lapis_lazuli",Slot:2b}]}] run clear @a[scores={char=35}] minecraft:lapis_lazuli
item replace entity @a[scores={char=35,spell_pris_2=0}] hotbar.2 with minecraft:lapis_lazuli[minecraft:custom_name={text:"Hush",color:"dark_aqua",bold:1b}] 1
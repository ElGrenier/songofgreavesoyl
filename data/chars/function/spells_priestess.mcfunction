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


effect give @a[scores={passive_pris=739,char=35}] absorption 7 2
execute at @a[scores={passive_pris=730..739,char=35}] run particle rain ~ ~0.6 ~ 0.6 0.8 0.6 1 60
execute at @a[scores={passive_pris=739,char=35}] run particle dripping_water ~ ~ ~ 3 3 3 1 300
execute at @a[scores={passive_pris=739,char=35}] run playsound block.enchantment_table.use master @a[distance=..10] ~ ~ ~ 1 0.9 1
execute at @a[scores={passive_pris=739,char=35}] run playsound weather.rain master @a[distance=..10] ~ ~ ~ 1 1 1

scoreboard players remove @a[scores={passive_pris=1..}] passive_pris 1


#heal dash

scoreboard players set @a[scores={char=35,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=35,s1_timer=1,CC_silence=1..}] s1_timer 180

execute at @a[scores={char=35,death_dash_reset=1..}] run kill @e[tag=healdash]
execute at @a[scores={char=35,universal_death=1..}] run kill @e[tag=healdash]
execute at @a[scores={char=35,CC_grounded=1..}] run kill @e[tag=healdash]
execute at @a[scores={char=35,CC_root=1..}] run kill @e[tag=healdash]
execute at @a[scores={char=35,CC_stun=1..}] run kill @e[tag=healdash]
execute at @a[scores={char=35,CC_silence=1..}] run kill @e[tag=healdash]

effect give @a[scores={char=35,s1_timer=2,CC_silence=0}] slow_falling 1 1 true
execute at @a[scores={char=35,s1_timer=1}] run scoreboard players set @a priestess_heal 0
execute at @a[scores={char=35,s1_timer=2}] run particle dripping_water ~ ~0.1 ~ 0.4 0.15 0.4 1 50
execute at @a[scores={char=35,s1_timer=2}] run particle cloud ~ ~0.1 ~ 0.3 0 0.3 0.001 10
execute at @a[scores={char=35,s1_timer=1..2}] run kill @e[tag=healdash]
execute at @a[scores={char=35,s1_timer=1..2}] run kill @e[tag=silencedash]
execute at @a[scores={char=35,s1_timer=1,CC_silence=0}] run playsound block.enchantment_table.use master @a[distance=..10] ~ ~ ~ 1 2 1
execute at @a[scores={char=35,s1_timer=1,CC_silence=0}] run playsound entity.player.attack.sweep master @a[distance=..10] ~ ~ ~ 1 0.8 1

execute at @a[scores={char=35,s1_timer=2}] run summon marker ~ ~ ~ {Tags:["healdash","entities_priestess"]}
tp @e[tag=healdash,limit=1] @a[scores={char=35,s1_timer=2},limit=1]
execute at @a[scores={char=35,s1_timer=2},limit=1] run tp @e[tag=healdash,limit=1] ~ ~0.5 ~

execute as @e[tag=healdash] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=healdash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=healdash] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=healdash] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=healdash] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=healdash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute as @e[tag=healdash] at @s run tp @s ^ ^ ^1

tp @a[scores={char=35,s1_timer=2..8,death_dash_reset=0}] @e[tag=healdash,limit=1]
execute at @a[scores={char=35,s1_timer=10}] run kill @e[tag=healdash]
execute as @a[scores={char=35,s1_timer=10}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~
effect clear @a[scores={char=35,s1_timer=10..11,CC_silence=0}] minecraft:slow_falling

execute at @a[scores={char=35,s1_timer=1..10,CC_silence=0}] run particle enchanted_hit ~ ~1 ~ 0.4 0.8 0.4 0.01 5
execute at @a[scores={char=35,s1_timer=1..10,CC_silence=0}] run particle block{block_state:{Name:"minecraft:water"}} ~ ~1 ~ 2 1 2 0.01 1
execute at @a[scores={char=35,s1_timer=1..10,CC_silence=0}] run particle rain ~ ~1 ~ 1.5 1 1.5 0.01 25

execute at @a[scores={char=35,s1_timer=1..10,CC_silence=0}] if entity @e[tag=healdash] as @a[tag=valid_spell_target,distance=..3,scores={priestess_heal=0}] if score @s Team = @p[scores={char=35}] Team run scoreboard players set @s priestess_heal 1

effect give @a[scores={priestess_heal=2}] instant_health
effect give @a[scores={priestess_heal=2}] absorption 4
execute at @a[scores={priestess_heal=3}] run playsound entity.experience_orb.pickup master @a[distance=..3] ~ ~ ~ 0.3 1.5 1
execute at @a[scores={priestess_heal=1..}] run particle rain ~ ~0.6 ~ 0.6 0.8 0.6 1 10
scoreboard players add @a[scores={priestess_heal=1..}] priestess_heal 1
scoreboard players set @a[scores={priestess_heal=10..}] priestess_heal 0

#silence dash

scoreboard players set @a[scores={char=35,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=35,s2_timer=1,CC_silence=1..}] s2_timer 280

execute at @a[scores={char=35,death_dash_reset=1..}] run kill @e[tag=silencedash]
execute at @a[scores={char=35,universal_death=1..}] run kill @e[tag=silencedash]
execute at @a[scores={char=35,CC_grounded=1..}] run kill @e[tag=silencedash]
execute at @a[scores={char=35,CC_root=1..}] run kill @e[tag=silencedash]
execute at @a[scores={char=35,CC_stun=1..}] run kill @e[tag=silencedash]
execute at @a[scores={char=35,CC_silence=1..}] run kill @e[tag=silencedash]

effect give @a[scores={char=35,s2_timer=2,CC_silence=0}] slow_falling 1 1 true
execute at @a[scores={char=35,s2_timer=2}] run particle dripping_water ~ ~0.1 ~ 0.4 0.15 0.4 1 50
execute at @a[scores={char=35,s2_timer=1..2}] run kill @e[tag=healdash]
execute at @a[scores={char=35,s2_timer=1..2}] run kill @e[tag=silencedash]
execute at @a[scores={char=35,s2_timer=1,CC_silence=0}] run playsound entity.zombie.infect master @a[distance=..10] ~ ~ ~ 1 2 1
execute at @a[scores={char=35,s2_timer=1,CC_silence=0}] run playsound entity.player.attack.sweep master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=35,s2_timer=2}] run summon marker ~ ~ ~ {Tags:["silencedash","entities_priestess"]}
tp @e[tag=silencedash,limit=1] @a[scores={char=35,s2_timer=2},limit=1]
execute at @a[scores={char=35,s2_timer=2},limit=1] run tp @e[tag=silencedash,limit=1] ~ ~0.5 ~

execute as @e[tag=silencedash] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=silencedash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=silencedash] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=silencedash] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=silencedash] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=silencedash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute as @e[tag=silencedash] at @s run tp @s ^ ^ ^1

execute at @a[scores={char=35,s2_timer=1..10,CC_silence=0}] if entity @e[tag=silencedash] as @a[tag=valid_spell_target,distance=..2.5] unless score @s Team = @p[scores={char=35,CC_silence=0}] Team run particle cloud ~ ~1.5 ~ 0.5 0 0.5 0.01 10
execute at @a[scores={char=35,s2_timer=1..10,CC_silence=0}] if entity @e[tag=silencedash] as @a[tag=valid_spell_target,distance=..2.5] unless score @s Team = @p[scores={char=35,CC_silence=0}] Team run playsound entity.player.attack.nodamage master @a[distance=..10] ~ ~ ~ 1 0.5 1
execute at @a[scores={char=35,s2_timer=1..10,CC_silence=0}] if entity @e[tag=silencedash] as @a[tag=valid_spell_target,distance=..2.5] unless score @s Team = @p[scores={char=35}] Team run scoreboard players set @s CC_silence 40
execute at @a[scores={char=35,s2_timer=1..10,CC_silence=0}] as @a[distance=..2.5] unless score @s Team = @p[scores={char=35}] Team at @s run particle enchant ~ ~0.5 ~ 0.3 1 0.3 0.01 20

tp @a[scores={char=35,s2_timer=2..7,death_dash_reset=0}] @e[tag=silencedash,limit=1]
execute at @a[scores={char=35,s2_timer=7..8}] run kill @e[tag=silencedash]
execute as @a[scores={char=35,s2_timer=7}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~
effect clear @a[scores={char=35,s2_timer=7..8,CC_silence=0}] slow_falling

execute at @a[scores={char=35,s2_timer=1..10,CC_silence=0}] run particle enchant ~ ~1 ~ 0.4 0.8 0.4 0.01 7
execute at @a[scores={char=35,s2_timer=1..10,CC_silence=0}] run particle rain ~ ~1 ~ 2 1 2 0.01 5
execute at @a[scores={char=35,s2_timer=1..10,CC_silence=0}] run particle cloud ~ ~1 ~ 2 1 2 0.01 2


# priestess

scoreboard players set @a[scores={s1_timer=1,char=35}] spellCD1 200
scoreboard players add @a[scores={s1_timer=1..,char=35}] s1_timer 1
scoreboard players set @a[scores={s1_timer=201..,char=35}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=35}] spellCD2 300
scoreboard players add @a[scores={s2_timer=1..,char=35}] s2_timer 1
scoreboard players set @a[scores={s2_timer=301..,char=35}] s2_timer 0

execute as @a[scores={char=35}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:golden_shovel",Slot:0b}]}] run clear @a[scores={char=35}] golden_shovel
item replace entity @a[scores={char=35}] hotbar.0 with minecraft:golden_shovel[minecraft:custom_name={bold:1b,color:"gray",text:"Staff"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=1] 1

execute as @a[scores={char=35,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=35}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=35,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:allay_spawn_egg",minecraft:custom_name={text:"Drizzle Dance",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=35,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=35}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=35,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:vex_spawn_egg",minecraft:custom_name={text:"Hush",color:"dark_aqua",bold:1b}] 1

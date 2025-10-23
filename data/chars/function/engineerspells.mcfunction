kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:music_disc_pigstep"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:raw_copper"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:stone_axe"}}]

#passive

execute if entity @a[scores={turretkills=1..}] as @a[scores={char=30}] run function chars:add_kill
scoreboard players remove @a[scores={turretkills=1..}] turretkills 1

execute at @a[scores={universal_death=1..,char=30}] run scoreboard players set @e[tag=turret] SummonAge 5


scoreboard players set @e[scores={CC_silence=1..}] passive_engi 0
scoreboard players set @e[scores={engi_reset1=1..}] passive_engi 0
scoreboard players set @e[scores={engi_reset2=1..}] passive_engi 0
scoreboard players set @e[scores={engi_reset1=1..}] engi_reset1 0
scoreboard players set @e[scores={engi_reset2=1..}] engi_reset2 0

execute at @a[scores={char=30},team=purple] run team join purple @e[tag=turret]
execute at @a[scores={char=30},team=yellow] run team join yellow @e[tag=turret]

execute at @a[scores={char=30,passive_engi=59,CC_silence=0}] run playsound minecraft:entity.iron_golem.repair master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=30,passive_engi=59,CC_silence=0}] run playsound minecraft:block.anvil.use master @a[distance=..10] ~ ~ ~ 0.3 0.4 1
execute at @a[scores={char=30,passive_engi=59,CC_silence=0}] run particle minecraft:wax_on ~ ~ ~ 0.6 1 0.6 1 10 normal
execute at @a[scores={char=30,passive_engi=59,CC_silence=0}] run particle minecraft:block{block_state:{Name:"minecraft:dirt"}} ~ ~ ~ 0.5 1 0.5 0.001 40 normal
execute at @a[scores={char=30,passive_engi=59,CC_silence=0}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:dirt"}} ~ ~ ~ 0.5 1 0.5 0.001 40 normal
execute at @a[scores={char=30,passive_engi=59,CC_silence=0}] run summon minecraft:skeleton ~ ~ ~ {Silent:1b,Health:30.0f,Tags:["turret"],attributes:[{id:"minecraft:follow_range",base:40},{id:"minecraft:knockback_resistance",base:1},{id:"minecraft:max_health",base:10},{id:"minecraft:movement_speed",base:0}],equipment:{mainhand:{id:"minecraft:bow",components:{"minecraft:enchantments":{"minecraft:power":2}},count:1},feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":4804412},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":4804412},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":9201733},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-1984654599,-571650081,-1692938628,1098393423],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTAyMzExNTk4ZmU1MzMwZDQ3N2QwMWUxY2Q0MWE4NjgxMGVhZGUxMTdiMmFhMGJmMGVhYzgyNTkwNjk1NTBlYiJ9fX0="}]}},count:1}}}
execute at @a[scores={char=30,passive_engi=59,CC_silence=0}] run scoreboard players add @e[tag=turret] SummonAge 1



execute at @a[scores={char=30,passive_engi=10,CC_silence=0}] run playsound minecraft:block.anvil.place master @a[distance=..10] ~ ~ ~ 0.2 1.2 1
execute at @a[scores={char=30,passive_engi=20,CC_silence=0}] run playsound minecraft:block.anvil.place master @a[distance=..10] ~ ~ ~ 0.2 1.3 1
execute at @a[scores={char=30,passive_engi=30,CC_silence=0}] run playsound minecraft:block.anvil.place master @a[distance=..10] ~ ~ ~ 0.2 1.4 1
execute at @a[scores={char=30,passive_engi=40,CC_silence=0}] run playsound minecraft:block.anvil.place master @a[distance=..10] ~ ~ ~ 0.2 1.5 1
execute at @a[scores={char=30,passive_engi=50,CC_silence=0}] run playsound minecraft:block.anvil.place master @a[distance=..10] ~ ~ ~ 0.2 1.6 1
execute at @a[scores={char=30,passive_engi=60,CC_silence=0}] run playsound minecraft:block.anvil.place master @a[distance=..10] ~ ~ ~ 0.2 1.7 1



scoreboard players set @a[scores={char=30,passive_engi=59}] passive_engi 80

scoreboard players add @a[scores={char=30,passive_engi=80..}] passive_engi 1
scoreboard players set @a[scores={char=30,passive_engi=90..}] passive_engi 0

execute at @e[tag=turret,scores={SummonAge=5..}] run particle minecraft:block{block_state:{Name:"minecraft:dirt"}} ~ ~ ~ 0.5 1 0.5 0.001 60 normal
execute at @e[tag=turret,scores={SummonAge=5..}] run playsound minecraft:entity.iron_golem.damage master @a[distance=..10] ~ ~ ~ 1 1.2 1
tp @e[tag=turret,scores={SummonAge=5..}] ~ ~-100 ~

execute as @e[tag=turret] at @s unless entity @a[distance=..15,scores={char=30}] run particle minecraft:block{block_state:{Name:"minecraft:dirt"}} ~ ~ ~ 0.5 1 0.5 0.001 60 normal
execute as @e[tag=turret] at @s unless entity @a[distance=..15,scores={char=30}] run playsound minecraft:entity.iron_golem.damage master @a[distance=..10] ~ ~ ~ 1 1.2 1
execute as @e[tag=turret] at @s unless entity @a[distance=..15,scores={char=30}] run tp @s ~ ~-100 ~


title @a[scores={char=30,passive_engi=1..90}] times 0 2 1
title @a[scores={char=30,passive_engi=1..90}] title {text:" ",type:"text"}

title @a[scores={char=30,passive_engi=1..20}] subtitle [{text:"[",bold:1b,color:"dark_gray",type:"text"},{text:"",color:"yellow",type:"text"},{text:"===",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_gray",type:"text"}]
title @a[scores={char=30,passive_engi=20..40}] subtitle [{text:"[",bold:1b,color:"dark_gray",type:"text"},{text:"=",color:"yellow",type:"text"},{text:"==",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_gray",type:"text"}]
title @a[scores={char=30,passive_engi=40..80}] subtitle [{text:"[",bold:1b,color:"dark_gray",type:"text"},{text:"==",color:"yellow",type:"text"},{text:"=",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_gray",type:"text"}]
title @a[scores={char=30,passive_engi=80..90}] subtitle [{text:"[",bold:1b,color:"dark_gray",type:"text"},{text:"===",color:"yellow",type:"text"},{text:"",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_gray",type:"text"}]





#E.B.T.D.

scoreboard players set @a[scores={char=30,spell_engi_1_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=30,spell_engi_1_1=1,CC_silence=1..}] spell_engi_1_1 260

execute at @a[scores={char=30,spell_engi_1_1=1,CC_silence=0}] run playsound minecraft:entity.evoker.cast_spell master @a[distance=..15] ~ ~ ~ 1 0.1 1
execute at @a[scores={char=30,spell_engi_1_1=1,CC_silence=0}] run playsound minecraft:entity.zombie.infect master @a[distance=..15] ~ ~ ~ 1 0.1 1
execute at @a[scores={char=30,spell_engi_1_1=1,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["tracker"],NoGravity:1b}
tp @e[tag=tracker,limit=1] @a[scores={char=30,spell_engi_1_1=1},limit=1]
execute as @e[tag=tracker] at @s run tp @s ^ ^ ^0.8
execute at @e[tag=tracker] run particle minecraft:falling_dust{block_state:{Name:"minecraft:gold_block"}} ~ ~1 ~ 0.1 0.1 0.1 0.001 3 normal
execute at @e[tag=tracker] run particle minecraft:wax_on ~ ~1 ~ 0.1 0.1 0.1 0.001 5 normal

execute at @a[scores={char=30,spell_engi_1_1=60}] run kill @e[tag=tracker]

effect give @a[scores={tracked=1..}] minecraft:glowing 1 0 true
execute if entity @a[scores={char=30},team=purple] at @e[tag=tracker] run scoreboard players set @p[distance=..2,team=yellow] tracked 1
execute if entity @a[scores={char=30},team=yellow] at @e[tag=tracker] run scoreboard players set @p[distance=..2,team=purple] tracked 1
execute at @a[scores={tracked=1..}] run kill @e[tag=tracker]

scoreboard players add @a[scores={tracked=1..}] tracked 1
scoreboard players set @a[scores={tracked=120..}] tracked 0

execute if entity @a[scores={tracked=1..40}] at @e[tag=turret,scores={SummonAge=1}] run particle minecraft:wax_on ~ ~1.8 ~ 0.3 0.3 0.3 1 1 normal
execute if entity @a[scores={tracked=20..60}] at @e[tag=turret,scores={SummonAge=2}] run particle minecraft:wax_on ~ ~1.8 ~ 0.3 0.3 0.3 1 1 normal
execute if entity @a[scores={tracked=40..80}] at @e[tag=turret,scores={SummonAge=3}] run particle minecraft:wax_on ~ ~1.8 ~ 0.3 0.3 0.3 1 1 normal
execute if entity @a[scores={tracked=60..100}] at @e[tag=turret,scores={SummonAge=4}] run particle minecraft:wax_on ~ ~1.8 ~ 0.3 0.3 0.3 1 1 normal

execute if entity @a[scores={tracked=30}] at @e[tag=turret,scores={SummonAge=1}] run playsound minecraft:block.beacon.activate master @a[distance=..15] ~ ~ ~ 0.5 2 1
execute if entity @a[scores={tracked=50}] at @e[tag=turret,scores={SummonAge=2}] run playsound minecraft:block.beacon.activate master @a[distance=..15] ~ ~ ~ 0.5 2 1
execute if entity @a[scores={tracked=70}] at @e[tag=turret,scores={SummonAge=3}] run playsound minecraft:block.beacon.activate master @a[distance=..15] ~ ~ ~ 0.5 2 1
execute if entity @a[scores={tracked=90}] at @e[tag=turret,scores={SummonAge=4}] run playsound minecraft:block.beacon.activate master @a[distance=..15] ~ ~ ~ 0.5 2 1

execute at @a[scores={tracked=40}] at @e[tag=turret,scores={SummonAge=1}] run summon minecraft:marker ~ ~ ~ {Tags:["turretshoot"]}
execute at @a[scores={tracked=60}] at @e[tag=turret,scores={SummonAge=2}] run summon minecraft:marker ~ ~ ~ {Tags:["turretshoot"]}
execute at @a[scores={tracked=80}] at @e[tag=turret,scores={SummonAge=3}] run summon minecraft:marker ~ ~ ~ {Tags:["turretshoot"]}
execute at @a[scores={tracked=100}] at @e[tag=turret,scores={SummonAge=4}] run summon minecraft:marker ~ ~ ~ {Tags:["turretshoot"]}

execute at @e[tag=turretshoot] run particle minecraft:wax_on ~ ~1 ~ 0.1 0.1 0.1 0.001 10 normal
execute at @e[tag=turretshoot] run particle minecraft:falling_dust{block_state:{Name:"minecraft:gold_block"}} ~ ~1 ~ 0.2 0.2 0.2 0.1 10 normal
scoreboard players add @e[tag=turretshoot] trackedlife 1

execute at @e[tag=turretshoot,scores={trackedlife=1}] run playsound minecraft:entity.evoker.cast_spell master @a[distance=..20] ~ ~ ~ 1 2 1
execute at @e[tag=turretshoot,scores={trackedlife=1}] run playsound minecraft:entity.zombie_villager.cure master @a[distance=..20] ~ ~ ~ 0.5 2 1

execute as @e[tag=turretshoot,scores={trackedlife=2}] at @s run tp @s ~ ~ ~ facing entity @p[scores={tracked=1..}]
execute as @e[tag=turretshoot,scores={trackedlife=3..}] at @s run tp @s ^ ^ ^1
execute as @e[tag=turretshoot,scores={trackedlife=80..}] run kill @s



execute if entity @a[scores={char=30},team=yellow] at @e[tag=turretshoot] if entity @a[distance=..2,scores={HP=..6},team=purple] run effect give @p[scores={HP=..6},team=purple] minecraft:instant_damage 1 10
execute if entity @a[scores={char=30},team=yellow] at @e[tag=turretshoot] if entity @a[distance=..2,scores={HP=..6,CC_intangible=0},team=purple] as @a[scores={char=30}] run function chars:add_kill
execute if entity @a[scores={char=30},team=yellow] at @e[tag=turretshoot] if entity @a[distance=..2,scores={HP=7..},team=purple] run effect give @p[scores={HP=7..},team=purple] minecraft:instant_damage
execute if entity @a[scores={char=30},team=yellow] at @e[tag=turretshoot] if entity @a[distance=..2,team=purple] run kill @e[tag=turretshoot]

execute if entity @a[scores={char=30},team=purple] at @e[tag=turretshoot] if entity @a[distance=..2,scores={HP=..6},team=yellow] run effect give @p[scores={HP=..6},team=yellow] minecraft:instant_damage 1 10
execute if entity @a[scores={char=30},team=purple] at @e[tag=turretshoot] if entity @a[distance=..2,scores={HP=..6,CC_intangible=0},team=yellow] as @a[scores={char=30}] run function chars:add_kill
execute if entity @a[scores={char=30},team=purple] at @e[tag=turretshoot] if entity @a[distance=..2,scores={HP=7..},team=yellow] run effect give @p[scores={HP=7..},team=yellow] minecraft:instant_damage
execute if entity @a[scores={char=30},team=purple] at @e[tag=turretshoot] if entity @a[distance=..2,team=yellow] run kill @e[tag=turretshoot]


#toxic disorder

scoreboard players set @a[scores={char=30,spell_engi_2_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=30,spell_engi_2_1=1,CC_silence=1..}] spell_engi_2_1 340

execute at @a[scores={char=30,spell_engi_2_1=1,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["canister"],NoGravity:1b,Small:1b,equipment:{head:{id:"minecraft:waxed_exposed_copper",count:1}}}
execute at @a[scores={char=30,spell_engi_2_1=1,CC_silence=0}] run playsound minecraft:entity.snowball.throw master @a[distance=..10] ~ ~ ~ 1 1.3 1
tp @e[tag=canister,limit=1] @a[scores={char=30,spell_engi_2_1=1},limit=1]


execute at @a[scores={char=30,spell_engi_2_1=1..14}] as @e[tag=canister] at @s run tp @s ^ ^ ^0.7
execute at @a[scores={char=30,spell_engi_2_1=15..24}] as @e[tag=canister] at @s run tp @s ^ ^ ^0.8
execute at @a[scores={char=30,spell_engi_2_1=15..24}] as @e[tag=canister] at @s run tp @s ~ ~-0.3 ~
execute at @a[scores={char=30,spell_engi_2_1=25..}] as @e[tag=canister] at @s run tp @s ^ ^ ^0.4
execute at @a[scores={char=30,spell_engi_2_1=25..}] as @e[tag=canister] at @s run tp @s ~ ~-0.5 ~
execute at @a[scores={char=30,spell_engi_2_1=40..}] as @e[tag=canister] at @s run tp @s ~ ~-0.6 ~

#execute at @e[tag=canister] run particle crit ~ ~1 ~ 0.1 0.2 0.1 0.01 3 normal
execute at @e[tag=canister] run particle minecraft:falling_dust{block_state:{Name:"minecraft:cactus"}} ~ ~1 ~ 0.2 0.2 0.2 0.01 1 normal
execute at @e[tag=canister] run particle minecraft:item_slime ~ ~1 ~ 0.2 0.2 0.2 0.01 10 normal

execute at @e[tag=toxicdisorder] run particle minecraft:sneeze ~ ~1 ~ 4 1 4 0.01 40 normal
execute at @e[tag=toxicdisorder] run particle minecraft:item_slime ~ ~1 ~ 5 3 5 0.01 80 normal
execute at @e[tag=toxicdisorder,scores={toxic_life=..5}] run particle minecraft:item_slime ~ ~1 ~ 3 1 3 0.01 80 normal

execute at @e[tag=toxicdisorder,scores={toxic_life=3}] run playsound minecraft:item.bucket.empty master @a[distance=..16] ~ ~ ~ 1.0 0.1 1
execute at @e[tag=toxicdisorder,scores={toxic_life=5}] run playsound minecraft:block.brewing_stand.brew master @a[distance=..16] ~ ~ ~ 1.0 0.1 1

execute as @a[scores={char=30},team=purple] as @e[tag=canister] at @s if entity @a[distance=..2,team=yellow] run summon minecraft:armor_stand ~ ~1 ~ {Marker:1b,Invisible:1b,Tags:["toxicdisorder"],NoGravity:1b}
execute as @a[scores={char=30},team=yellow] as @e[tag=canister] at @s if entity @a[distance=..2,team=purple] run summon minecraft:armor_stand ~ ~1 ~ {Marker:1b,Invisible:1b,Tags:["toxicdisorder"],NoGravity:1b}
execute as @e[tag=canister] at @s unless block ^ ^1 ^1 #minecraft:dash run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["toxicdisorder"],NoGravity:1b}
execute as @e[tag=canister] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute if entity @e[tag=toxicdisorder] run kill @e[tag=canister]

execute as @e[tag=toxicdisorder] at @s if block ~ ~-0.2 ~ #minecraft:dash run tp @s ~ ~-0.5 ~

execute if entity @a[scores={char=30},team=purple] at @e[tag=toxicdisorder] run effect give @a[distance=..6,team=yellow] minecraft:slowness 1 0
execute if entity @a[scores={char=30},team=yellow] at @e[tag=toxicdisorder] run effect give @a[distance=..6,team=purple] minecraft:slowness 1 0
execute if entity @a[scores={char=30},team=purple] at @e[tag=toxicdisorder] run effect give @a[distance=..6,team=yellow] minecraft:nausea 2 0
execute if entity @a[scores={char=30},team=yellow] at @e[tag=toxicdisorder] run effect give @a[distance=..6,team=purple] minecraft:nausea 2 0
execute at @e[tag=toxicdisorder] if entity @a[scores={char=30},team=yellow] as @a[distance=..6,team=purple] unless entity @s[nbt={active_effects:[{id:"minecraft:poison"}]}] run effect give @s minecraft:poison 1 1
execute at @e[tag=toxicdisorder] if entity @a[scores={char=30},team=purple] as @a[distance=..6,team=yellow] unless entity @s[nbt={active_effects:[{id:"minecraft:poison"}]}] run effect give @s minecraft:poison 1 1


scoreboard players add @e[tag=toxicdisorder] toxic_life 1
kill @e[tag=toxicdisorder,scores={toxic_life=100..}]


# engineer

scoreboard players add @a[scores={spell_engi_1=1..}] spell_engi_1_1 1
item replace entity @a[scores={char=30,spell_engi_1_1=280..}] hotbar.1 with minecraft:music_disc_pigstep[minecraft:custom_name={text:"E.B.T.D.",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_engi_1_1=281..}] spell_engi_1 0
scoreboard players set @a[scores={spell_engi_1_1=281..}] spell_engi_1_1 0
scoreboard players set @a[scores={spell_engi_1_1=1}] spellCD1 280

scoreboard players add @a[scores={spell_engi_2=1..}] spell_engi_2_1 1
item replace entity @a[scores={char=30,spell_engi_2_1=360..}] hotbar.2 with minecraft:raw_copper[minecraft:custom_name={text:"Toxic Disorder",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_engi_2_1=361..}] spell_engi_2 0
scoreboard players set @a[scores={spell_engi_2_1=361..}] spell_engi_2_1 0
scoreboard players set @a[scores={spell_engi_2_1=1}] spellCD2 360

execute as @a[scores={char=30}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:stone_axe",Slot:0b}]}] run clear @a[scores={char=30}] minecraft:stone_axe
item replace entity @a[scores={char=30}] hotbar.0 with minecraft:stone_axe[minecraft:custom_name={bold:1b,color:"gray",text:"Tools"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=30,spell_engi_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:music_disc_pigstep",Slot:1b}]}] run clear @a[scores={char=30}] minecraft:music_disc_pigstep
item replace entity @a[scores={char=30,spell_engi_1=0}] hotbar.1 with minecraft:music_disc_pigstep[minecraft:custom_name={text:"E.B.T.D.",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=30,spell_engi_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:raw_copper",Slot:2b}]}] run clear @a[scores={char=30}] minecraft:raw_copper
item replace entity @a[scores={char=30,spell_engi_2=0}] hotbar.2 with minecraft:raw_copper[minecraft:custom_name={text:"Toxic Disorder",color:"dark_aqua",bold:1b}] 1

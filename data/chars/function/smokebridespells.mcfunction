kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:stone_hoe"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:glow_lichen"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:gray_candle"}}]

# lungs collapse

scoreboard players add @a[scores={asphyxiation=1..}] asphyxiation_decay_initial 1

scoreboard players add @a[scores={asphyxiation_decay_initial=140..}] asphyxiation_decay 1
scoreboard players remove @a[scores={asphyxiation_decay_initial=140..,asphyxiation_timer=1..}] asphyxiation_timer 1

scoreboard players remove @a[scores={asphyxiation_decay=30..}] asphyxiation 1
scoreboard players set @a[scores={asphyxiation_decay=30..}] asphyxiation_decay 1

scoreboard players set @a[scores={asphyxiation=0}] asphyxiation_decay_initial 1
scoreboard players set @a[scores={asphyxiation=0}] asphyxiation_decay 1


scoreboard players add @a[scores={asphyxiation_timer=20..}] asphyxiation 1
scoreboard players set @a[scores={asphyxiation_timer=20..}] asphyxiation_timer 0


scoreboard players set @a[scores={universal_death=1..}] asphyxiation_decay_initial 0
scoreboard players set @a[scores={universal_death=1..}] asphyxiation_decay 0
scoreboard players set @a[scores={universal_death=1..}] asphyxiation_timer 0
scoreboard players set @a[scores={universal_death=1..}] asphyxiation 0


execute if entity @p[scores={char=56},team=yellow] as @a[scores={asphyxiation=5..},team=purple] run damage @s 5 generic by @p[scores={char=56}] from @p[scores={char=56}]
execute if entity @p[scores={char=56},team=purple] as @a[scores={asphyxiation=5..},team=yellow] run damage @s 5 generic by @p[scores={char=56}] from @p[scores={char=56}]
execute at @a[scores={asphyxiation=5..}] run particle minecraft:campfire_cosy_smoke ~ ~1.5 ~ 0.3 0.3 0.3 0.01 5
execute at @a[scores={asphyxiation=5..}] run particle minecraft:crit ~ ~1.8 ~ 0.5 0.3 0.5 0.1 10
execute at @a[scores={asphyxiation=5..}] run playsound minecraft:entity.blaze.ambient master @a[distance=..10] ~ ~ ~ 1 1.7 1
execute at @a[scores={asphyxiation=5..}] run playsound minecraft:entity.player.hurt_on_fire master @a[distance=..10] ~ ~ ~ 1 1.5 1

scoreboard players set @a[scores={asphyxiation=5..}] CC_stun 30

scoreboard players set @a[scores={asphyxiation=5..}] asphyxiation_immunity 30

scoreboard players set @a[scores={asphyxiation_immunity=1..}] asphyxiation 0
scoreboard players remove @a[scores={asphyxiation_immunity=1..}] asphyxiation_immunity 1





execute at @a[scores={asphyxiation=1}] positioned ~ ~2.2 ~ unless entity @e[distance=..1,tag=display_asphyxiation_1] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["display_asphyxiation_1","asph_display"],CustomName:{text:"X",extra:[{text:" - - - -",color:"gray",bold:1b}],color:"dark_gray",bold:1b}}
execute at @a[scores={asphyxiation=1}] positioned ~ ~2.2 ~ run tp @e[distance=..1,tag=display_asphyxiation_1] ~ ~ ~
execute as @e[tag=display_asphyxiation_1] at @s positioned ~ ~-2.2 ~ unless entity @a[distance=..1,scores={asphyxiation=1}] run kill @s

execute at @a[scores={asphyxiation=2}] positioned ~ ~2.2 ~ unless entity @e[distance=..1,tag=display_asphyxiation_2] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["display_asphyxiation_2","asph_display"],CustomName:{text:"X X",extra:[{text:" - - -",color:"gray",bold:1b}],color:"dark_gray",bold:1b}}
execute at @a[scores={asphyxiation=2}] positioned ~ ~2.2 ~ run tp @e[distance=..1,tag=display_asphyxiation_2] ~ ~ ~
execute as @e[tag=display_asphyxiation_2] at @s positioned ~ ~-2.2 ~ unless entity @a[distance=..1,scores={asphyxiation=2}] run kill @s

execute at @a[scores={asphyxiation=3}] positioned ~ ~2.2 ~ unless entity @e[distance=..1,tag=display_asphyxiation_3] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["display_asphyxiation_3","asph_display"],CustomName:{text:"X X X",extra:[{text:" - -",color:"gray",bold:1b}],color:"dark_gray",bold:1b}}
execute at @a[scores={asphyxiation=3}] positioned ~ ~2.2 ~ run tp @e[distance=..1,tag=display_asphyxiation_3] ~ ~ ~
execute as @e[tag=display_asphyxiation_3] at @s positioned ~ ~-2.2 ~ unless entity @a[distance=..1,scores={asphyxiation=3}] run kill @s

execute at @a[scores={asphyxiation=4}] positioned ~ ~2.2 ~ unless entity @e[distance=..1,tag=display_asphyxiation_4] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["display_asphyxiation_4","asph_display"],CustomName:{text:"X X X X",extra:[{text:" -",color:"gray",bold:1b}],color:"dark_gray",bold:1b}}
execute at @a[scores={asphyxiation=4}] positioned ~ ~2.2 ~ run tp @e[distance=..1,tag=display_asphyxiation_4] ~ ~ ~
execute as @e[tag=display_asphyxiation_4] at @s positioned ~ ~-2.2 ~ unless entity @a[distance=..1,scores={asphyxiation=4}] run kill @s

execute at @a[scores={asphyxiation_immunity=1..}] positioned ~ ~2.2 ~ unless entity @e[distance=..1,tag=display_asphyxiation_5] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["display_asphyxiation_5","asph_display"],CustomName:{text:"BREATHE IN",extra:[{text:"",color:"gray",bold:1b}],color:"dark_gray",bold:1b}}
execute at @a[scores={asphyxiation_immunity=1..}] positioned ~ ~2.2 ~ run tp @e[distance=..1,tag=display_asphyxiation_5] ~ ~ ~
execute as @e[tag=display_asphyxiation_5] at @s positioned ~ ~-2.2 ~ unless entity @a[distance=..1,scores={asphyxiation_immunity=1..}] run kill @s



# smell of the embers

scoreboard players set @a[scores={char=56,spell_smok_1_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=56,spell_smok_1_1=1,CC_silence=1..}] spell_smok_1_1 140


execute at @a[scores={char=56,spell_smok_1_1=1,CC_silence=0}] run playsound minecraft:block.fire.extinguish master @a[distance=..10] ~ ~ ~ 0.3 1.2 1
execute at @a[scores={char=56,spell_smok_1_1=1,CC_silence=0}] run playsound minecraft:entity.snowball.throw master @a[distance=..10] ~ ~ ~ 0.5 0.5 1
execute at @a[scores={char=56,spell_smok_1_1=1,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["smell_projectile"],NoGravity:1b,Small:1b,equipment:{head:{id:"minecraft:gray_candle",count:1}}}
tp @e[tag=smell_projectile,limit=1] @a[scores={char=56,spell_smok_1_1=1},limit=1]


execute at @a[scores={char=56,spell_smok_1_1=1..10}] as @e[tag=smell_projectile] at @s run tp @s ^ ^ ^0.6
execute at @a[scores={char=56,spell_smok_1_1=11..20}] as @e[tag=smell_projectile] at @s run tp @s ^ ^ ^0.4
execute at @a[scores={char=56,spell_smok_1_1=11..20}] as @e[tag=smell_projectile] at @s run tp @s ~ ~-0.3 ~
execute at @a[scores={char=56,spell_smok_1_1=21..}] as @e[tag=smell_projectile] at @s run tp @s ^ ^ ^0.4
execute at @a[scores={char=56,spell_smok_1_1=21..}] as @e[tag=smell_projectile] at @s run tp @s ~ ~-0.5 ~
execute at @a[scores={char=56,spell_smok_1_1=30..}] as @e[tag=smell_projectile] at @s run tp @s ~ ~-0.6 ~

execute at @e[tag=smell_projectile] run particle minecraft:falling_dust{block_state:{Name:"minecraft:gray_wool"}} ~ ~1 ~ 0.1 0.1 0.1 0.01 2 normal
execute at @e[tag=smell_projectile] run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.1 0.1 0.1 0.05 2

execute as @e[tag=ember] at @s run tp @s ~ ~ ~ ~11 ~

execute as @a[scores={char=56},team=purple] as @e[tag=smell_projectile] at @s if entity @a[distance=..2,team=yellow] run summon minecraft:armor_stand ~ ~1 ~ {Small:1b,Marker:1b,Invisible:1b,Tags:["ember"],NoGravity:1b,equipment:{head:{id:"minecraft:gray_candle",count:1}}}
execute as @a[scores={char=56},team=yellow] as @e[tag=smell_projectile] at @s if entity @a[distance=..2,team=purple] run summon minecraft:armor_stand ~ ~1 ~ {Small:1b,Marker:1b,Invisible:1b,Tags:["ember"],NoGravity:1b,equipment:{head:{id:"minecraft:gray_candle",count:1}}}
execute as @a[scores={char=56}] as @e[tag=smell_projectile] at @s unless block ^ ^1 ^1 #minecraft:dash run summon minecraft:armor_stand ~ ~1 ~ {Small:1b,Marker:1b,Invisible:1b,Tags:["ember"],NoGravity:1b,equipment:{head:{id:"minecraft:gray_candle",count:1}}}
execute as @e[tag=smell_projectile] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute if entity @e[tag=ember] run kill @e[tag=smell_projectile]

execute at @e[tag=ember] run particle minecraft:campfire_cosy_smoke ~ ~0.5 ~ 0.1 0.1 0.1 0.1 2
scoreboard players add @e[tag=ember] spell_smok_1_1 1

execute at @e[tag=ember,scores={spell_smok_1_1=2}] run playsound minecraft:block.lava.extinguish master @a[distance=..10] ~ ~ ~ 0.5 0.5 1
execute at @e[tag=ember,scores={spell_smok_1_1=2}] run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.5 1 0.5 0.3 10
execute at @e[tag=ember,scores={spell_smok_1_1=2}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:gray_wool"}} ~ ~1 ~ 3 2 3 0.5 300

execute at @e[tag=ember,scores={spell_smok_1_1=2}] if entity @p[scores={char=56},team=yellow] as @a[distance=..4,team=purple] run attribute @s minecraft:knockback_resistance base set 100
execute at @e[tag=ember,scores={spell_smok_1_1=2}] if entity @p[scores={char=56},team=yellow] as @a[distance=..4,team=purple] run damage @s 3 generic by @p[scores={char=56}] from @p[scores={char=56}]
execute at @e[tag=ember,scores={spell_smok_1_1=2}] if entity @p[scores={char=56},team=yellow] as @a[distance=..4,team=purple] run attribute @s minecraft:knockback_resistance base set 0

execute at @e[tag=ember,scores={spell_smok_1_1=2}] if entity @p[scores={char=56},team=purple] as @a[distance=..4,team=yellow] run attribute @s minecraft:knockback_resistance base set 100
execute at @e[tag=ember,scores={spell_smok_1_1=2}] if entity @p[scores={char=56},team=purple] as @a[distance=..4,team=yellow] run damage @s 3 generic by @p[scores={char=56}] from @p[scores={char=56}]
execute at @e[tag=ember,scores={spell_smok_1_1=2}] if entity @p[scores={char=56},team=purple] as @a[distance=..4,team=yellow] run attribute @s minecraft:knockback_resistance base set 0


execute at @e[tag=ember,scores={spell_smok_1_1=2}] if entity @p[scores={char=56},team=yellow] run scoreboard players add @a[distance=..4,team=purple] asphyxiation 1
execute at @e[tag=ember,scores={spell_smok_1_1=2}] if entity @p[scores={char=56},team=yellow] run scoreboard players add @a[distance=..4,team=purple] asphyxiation_decay_initial 0
execute at @e[tag=ember,scores={spell_smok_1_1=2}] if entity @p[scores={char=56},team=yellow] run scoreboard players add @a[distance=..4,team=purple] asphyxiation_decay 0
execute at @e[tag=ember,scores={spell_smok_1_1=2}] if entity @p[scores={char=56},team=purple] run scoreboard players add @a[distance=..4,team=yellow] asphyxiation 1
execute at @e[tag=ember,scores={spell_smok_1_1=2}] if entity @p[scores={char=56},team=purple] run scoreboard players add @a[distance=..4,team=yellow] asphyxiation_decay_initial 0
execute at @e[tag=ember,scores={spell_smok_1_1=2}] if entity @p[scores={char=56},team=purple] run scoreboard players add @a[distance=..4,team=yellow] asphyxiation_decay 0

execute at @e[tag=ember,scores={spell_smok_1_1=17}] run playsound minecraft:block.lava.extinguish master @a[distance=..10] ~ ~ ~ 0.5 0.5 1
execute at @e[tag=ember,scores={spell_smok_1_1=17}] run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.5 1 0.5 0.3 10
execute at @e[tag=ember,scores={spell_smok_1_1=17}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:gray_wool"}} ~ ~1 ~ 3 2 3 0.5 300

execute at @e[tag=ember,scores={spell_smok_1_1=17}] if entity @p[scores={char=56},team=yellow] as @a[distance=..4,team=purple] run attribute @s minecraft:knockback_resistance base set 100
execute at @e[tag=ember,scores={spell_smok_1_1=17}] if entity @p[scores={char=56},team=yellow] as @a[distance=..4,team=purple] run damage @s 3 generic by @p[scores={char=56}] from @p[scores={char=56}]
execute at @e[tag=ember,scores={spell_smok_1_1=17}] if entity @p[scores={char=56},team=yellow] as @a[distance=..4,team=purple] run attribute @s minecraft:knockback_resistance base set 0

execute at @e[tag=ember,scores={spell_smok_1_1=17}] if entity @p[scores={char=56},team=purple] as @a[distance=..4,team=yellow] run attribute @s minecraft:knockback_resistance base set 100
execute at @e[tag=ember,scores={spell_smok_1_1=17}] if entity @p[scores={char=56},team=purple] as @a[distance=..4,team=yellow] run damage @s 3 generic by @p[scores={char=56}] from @p[scores={char=56}]
execute at @e[tag=ember,scores={spell_smok_1_1=17}] if entity @p[scores={char=56},team=purple] as @a[distance=..4,team=yellow] run attribute @s minecraft:knockback_resistance base set 0

execute at @e[tag=ember,scores={spell_smok_1_1=12}] if entity @p[scores={char=56},team=yellow] run scoreboard players add @a[distance=..4,team=purple] asphyxiation 1
execute at @e[tag=ember,scores={spell_smok_1_1=12}] if entity @p[scores={char=56},team=yellow] run scoreboard players add @a[distance=..4,team=purple] asphyxiation_decay_initial 0
execute at @e[tag=ember,scores={spell_smok_1_1=12}] if entity @p[scores={char=56},team=yellow] run scoreboard players add @a[distance=..4,team=purple] asphyxiation_decay 0
execute at @e[tag=ember,scores={spell_smok_1_1=12}] if entity @p[scores={char=56},team=purple] run scoreboard players add @a[distance=..4,team=yellow] asphyxiation 1
execute at @e[tag=ember,scores={spell_smok_1_1=12}] if entity @p[scores={char=56},team=purple] run scoreboard players add @a[distance=..4,team=yellow] asphyxiation_decay_initial 0
execute at @e[tag=ember,scores={spell_smok_1_1=12}] if entity @p[scores={char=56},team=purple] run scoreboard players add @a[distance=..4,team=yellow] asphyxiation_decay 0

execute at @e[tag=ember,scores={spell_smok_1_1=32}] run playsound minecraft:block.lava.extinguish master @a[distance=..10] ~ ~ ~ 0.5 0.5 1
execute at @e[tag=ember,scores={spell_smok_1_1=32}] run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.5 1 0.5 0.3 10
execute at @e[tag=ember,scores={spell_smok_1_1=32}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:gray_wool"}} ~ ~1 ~ 3 2 3 0.5 300

execute at @e[tag=ember,scores={spell_smok_1_1=32}] if entity @p[scores={char=56},team=yellow] as @a[distance=..4,team=purple] run attribute @s minecraft:knockback_resistance base set 100
execute at @e[tag=ember,scores={spell_smok_1_1=32}] if entity @p[scores={char=56},team=yellow] as @a[distance=..4,team=purple] run damage @s 3 generic by @p[scores={char=56}] from @p[scores={char=56}]
execute at @e[tag=ember,scores={spell_smok_1_1=32}] if entity @p[scores={char=56},team=yellow] as @a[distance=..4,team=purple] run attribute @s minecraft:knockback_resistance base set 0

execute at @e[tag=ember,scores={spell_smok_1_1=32}] if entity @p[scores={char=56},team=purple] as @a[distance=..4,team=yellow] run attribute @s minecraft:knockback_resistance base set 100
execute at @e[tag=ember,scores={spell_smok_1_1=32}] if entity @p[scores={char=56},team=purple] as @a[distance=..4,team=yellow] run damage @s 3 generic by @p[scores={char=56}] from @p[scores={char=56}]
execute at @e[tag=ember,scores={spell_smok_1_1=32}] if entity @p[scores={char=56},team=purple] as @a[distance=..4,team=yellow] run attribute @s minecraft:knockback_resistance base set 0

execute at @e[tag=ember,scores={spell_smok_1_1=32}] if entity @p[scores={char=56},team=yellow] run scoreboard players add @a[distance=..4,team=purple] asphyxiation 1
execute at @e[tag=ember,scores={spell_smok_1_1=32}] if entity @p[scores={char=56},team=yellow] run scoreboard players add @a[distance=..4,team=purple] asphyxiation_decay_initial 0
execute at @e[tag=ember,scores={spell_smok_1_1=32}] if entity @p[scores={char=56},team=yellow] run scoreboard players add @a[distance=..4,team=purple] asphyxiation_decay 0
execute at @e[tag=ember,scores={spell_smok_1_1=32}] if entity @p[scores={char=56},team=purple] run scoreboard players add @a[distance=..4,team=yellow] asphyxiation 1
execute at @e[tag=ember,scores={spell_smok_1_1=32}] if entity @p[scores={char=56},team=purple] run scoreboard players add @a[distance=..4,team=yellow] asphyxiation_decay_initial 0
execute at @e[tag=ember,scores={spell_smok_1_1=32}] if entity @p[scores={char=56},team=purple] run scoreboard players add @a[distance=..4,team=yellow] asphyxiation_decay 0


kill @e[tag=ember,scores={spell_smok_1_1=50..}]



# fume veil

scoreboard players set @a[scores={char=56,spell_smok_2_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=56,spell_smok_2_1=1,CC_silence=1..}] spell_smok_2_1 320


execute at @a[scores={char=56,spell_smok_2_1=1,CC_silence=0}] run playsound minecraft:entity.blaze.ambient master @a[distance=..15] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=56,spell_smok_2_1=1,CC_silence=0}] run playsound minecraft:block.lava.extinguish master @a[distance=..15] ~ ~ ~ 1 0.3 1
execute at @a[scores={char=56,spell_smok_2_1=1..100,CC_silence=0}] run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.5 0.8 0.5 0.05 1
execute at @a[scores={char=56,spell_smok_2_1=1..100,CC_silence=0}] run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 3.5 0.5 3.5 0.08 1
execute at @a[scores={char=56,spell_smok_2_1=1..100,CC_silence=0}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:gray_wool"}} ~ ~1 ~ 0.8 0.8 0.8 0.05 3

execute at @a[scores={char=56,spell_smok_2_1=1..100,CC_silence=0}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:light_gray_wool"}} ~ ~1 ~ 0.8 0.8 0.8 0.05 3
effect give @a[scores={char=56,spell_smok_2_1=1,CC_silence=0}] minecraft:resistance 5 1


execute at @a[scores={char=56,spell_smok_2_1=101,CC_silence=0}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:gray_wool"}} ~ ~1 ~ 3 2 3 0.05 500
execute at @a[scores={char=56,spell_smok_2_1=101,CC_silence=0}] run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 5 2 5 0.05 200
execute at @a[scores={char=56,spell_smok_2_1=101,CC_silence=0}] run playsound minecraft:entity.blaze.ambient master @a[distance=..15] ~ ~ ~ 1 1.5 1
execute at @a[scores={char=56,spell_smok_2_1=101,CC_silence=0}] run playsound minecraft:block.lava.extinguish master @a[distance=..15] ~ ~ ~ 1 1.1 1

execute at @a[scores={char=56,spell_smok_2_1=1..100,CC_silence=0},team=yellow] run effect give @a[distance=..3,team=purple] minecraft:slowness 1 1
execute at @a[scores={char=56,spell_smok_2_1=1..100,CC_silence=0},team=purple] run effect give @a[distance=..3,team=yellow] minecraft:slowness 1 1
execute at @a[scores={char=56,spell_smok_2_1=1..100,CC_silence=0},team=yellow] run scoreboard players set @a[distance=..4,team=purple] CC_silence 2
execute at @a[scores={char=56,spell_smok_2_1=1..100,CC_silence=0},team=purple] run scoreboard players set @a[distance=..4,team=yellow] CC_silence 2
execute at @a[scores={char=56,spell_smok_2_1=1..100,CC_silence=0},team=yellow] run scoreboard players add @a[distance=..4,team=purple] asphyxiation_timer 1
execute at @a[scores={char=56,spell_smok_2_1=1..100,CC_silence=0},team=purple] run scoreboard players add @a[distance=..4,team=yellow] asphyxiation_timer 1
execute at @a[scores={char=56,spell_smok_2_1=1..100,CC_silence=0},team=yellow] run scoreboard players add @a[distance=..4,team=purple] asphyxiation_decay_initial 0
execute at @a[scores={char=56,spell_smok_2_1=1..100,CC_silence=0},team=purple] run scoreboard players add @a[distance=..4,team=yellow] asphyxiation_decay_initial 0
execute at @a[scores={char=56,spell_smok_2_1=1..100,CC_silence=0},team=yellow] run scoreboard players add @a[distance=..4,team=purple] asphyxiation_decay 0
execute at @a[scores={char=56,spell_smok_2_1=1..100,CC_silence=0},team=purple] run scoreboard players add @a[distance=..4,team=yellow] asphyxiation_decay 0

##execute at @a[scores={char=56,spell_smok_2_1=61,CC_silence=0},team=yellow] run effect give @a[team=purple,distance=..5] slowness 1 1
##execute at @a[scores={char=56,spell_smok_2_1=61,CC_silence=0},team=purple] run effect give @a[team=yellow,distance=..5] slowness 1 1
##execute at @a[scores={char=56,spell_smok_2_1=61,CC_silence=0},team=yellow] run scoreboard players set @a[team=purple,distance=..5] CC_silence 2
##execute at @a[scores={char=56,spell_smok_2_1=61,CC_silence=0},team=purple] run scoreboard players set @a[team=yellow,distance=..5] CC_silence 2
##execute at @a[scores={char=56,spell_smok_2_1=61,CC_silence=0},team=yellow] run scoreboard players set @a[team=purple,distance=..5] asphyxiation 1
##execute at @a[scores={char=56,spell_smok_2_1=61,CC_silence=0},team=purple] run scoreboard players set @a[team=yellow,distance=..5] asphyxiation 1



# smoke bride

scoreboard players add @a[scores={spell_smok_1=1..}] spell_smok_1_1 1
item replace entity @a[scores={char=56,spell_smok_1_1=140..}] hotbar.1 with minecraft:gray_candle[minecraft:custom_name={text:"Smell of the Embers",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_smok_1_1=141..}] spell_smok_1 0
scoreboard players set @a[scores={spell_smok_1_1=141..}] spell_smok_1_1 0
scoreboard players set @a[scores={spell_smok_1_1=1}] spellCD1 140

scoreboard players add @a[scores={spell_smok_2=1..}] spell_smok_2_1 1
item replace entity @a[scores={char=56,spell_smok_2_1=340..}] hotbar.2 with minecraft:glow_lichen[minecraft:custom_name={text:"Fume Veil",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:protection":1}] 1
scoreboard players set @a[scores={spell_smok_2_1=341..}] spell_smok_2 0
scoreboard players set @a[scores={spell_smok_2_1=341..}] spell_smok_2_1 0
scoreboard players set @a[scores={spell_smok_2_1=1}] spellCD2 340

execute as @a[scores={char=56}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:stone_hoe",Slot:0b}]}] run clear @a[scores={char=56}] minecraft:stone_hoe
item replace entity @a[scores={char=56}] hotbar.0 with minecraft:stone_hoe[minecraft:custom_name={bold:1b,color:"gray",text:"Umbrella"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.7d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=56,spell_smok_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:gray_candle",Slot:1b}]}] run clear @a[scores={char=56}] minecraft:gray_candle
item replace entity @a[scores={char=56,spell_smok_1=0}] hotbar.1 with minecraft:gray_candle[minecraft:custom_name={text:"Smell of the Embers",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=56,spell_smok_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:glow_lichen",Slot:2b}]}] run clear @a[scores={char=56}] minecraft:glow_lichen
item replace entity @a[scores={char=56,spell_smok_2=0}] hotbar.2 with minecraft:glow_lichen[minecraft:custom_name={text:"Fume Veil",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:protection":1}] 1

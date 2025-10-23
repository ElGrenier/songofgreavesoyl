kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_carrot",count:1}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:glistering_melon_slice",count:1}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_sword",count:1}}]


#eviscerate

scoreboard players set @a[scores={char=23,spell_prow_1_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=23,spell_prow_1_1=1,CC_silence=1..}] spell_prow_1_1 220

execute at @a[scores={char=23,death_dash_reset=1..}] run kill @e[tag=dash]
execute at @a[scores={char=23,universal_death=1..}] run kill @e[tag=dash]
execute at @a[scores={char=23,CC_grounded=1..}] run kill @e[tag=dash]
execute at @a[scores={char=23,CC_root=1..}] run kill @e[tag=dash]
execute at @a[scores={char=23,CC_stun=1..}] run kill @e[tag=dash]
execute at @a[scores={char=23,CC_silence=1..}] run kill @e[tag=dash]


execute at @a[scores={char=23,spell_prow_1_1=2,CC_silence=0}] run playsound minecraft:entity.player.attack.sweep master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=23,spell_prow_1_1=2,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["dash"],NoGravity:1b}
tp @e[tag=dash,limit=1] @a[scores={char=23,spell_prow_1_1=2},limit=1]
execute at @a[scores={char=23,spell_prow_1_1=2},limit=1] run tp @e[tag=dash,limit=1] ~ ~0.5 ~

execute as @e[tag=dash] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=dash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=dash] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=dash] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=dash] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=dash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute as @e[tag=dash] at @s run tp @s ^ ^ ^1.5
execute at @e[tag=dash] run particle minecraft:falling_dust{block_state:{Name:"minecraft:sandstone"}} ~ ~1 ~ 0.3 0.3 0.3 0.00001 3 normal
execute at @e[tag=dash] run particle sweep_attack ~ ~1 ~ 0.8 0.5 0.8 0.1 1 normal

tp @a[scores={char=23,spell_prow_1_1=2..9,death_dash_reset=0}] @e[tag=dash,limit=1]


execute at @a[scores={char=23,spell_prow_1_1=10}] run kill @e[tag=dash]
execute as @a[scores={char=23,spell_prow_1_1=10}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~

scoreboard players set @a[scores={char=23,universal_kill=1..,spell_prow_1_1=1..,CC_silence=0}] spell_prow_1_1 238
scoreboard players set @a[scores={char=23,universal_kill=1..,spell_prow_1_1=1..,CC_silence=0}] spellCD1 2


execute at @a[scores={char=23,spell_prow_1_1=2..10,CC_silence=0},team=purple] run tag @p[distance=..2,team=yellow] add prowler_execute
execute at @a[scores={char=23,spell_prow_1_1=2..10,CC_silence=0},team=yellow] run tag @p[distance=..2,team=purple] add prowler_execute
effect give @a[tag=prowler_execute,scores={HP=..5}] minecraft:instant_damage 1 10 true
tag @a remove prowler_execute

execute at @a[scores={char=23,spell_prow_1_1=2..10,CC_silence=0},team=purple] run effect give @p[distance=..2,team=yellow] minecraft:poison 3 2
execute at @a[scores={char=23,spell_prow_1_1=2..10,CC_silence=0},team=yellow] run effect give @p[distance=..2,team=purple] minecraft:poison 3 2

execute at @a[scores={char=23},team=purple] at @a[distance=..12,scores={HP=..5},team=yellow] positioned ~ ~2.7 ~ unless entity @e[distance=..1,tag=display_eviscerate] run summon minecraft:armor_stand ~ ~ ~ {Tags:["display_eviscerate"],Marker:1b,Invisible:1b,CustomName:{text:">EVISCERATE<",color:"dark_red",bold:1b},CustomNameVisible:1b}
execute at @a[scores={char=23},team=purple] at @a[distance=..12,scores={HP=..5},team=yellow] positioned ~ ~2.7 ~ run tp @e[distance=..1,tag=display_eviscerate] ~ ~ ~

execute at @a[scores={char=23},team=yellow] at @a[distance=..12,scores={HP=..5},team=purple] positioned ~ ~2.7 ~ unless entity @e[distance=..1,tag=display_eviscerate] run summon minecraft:armor_stand ~ ~ ~ {Tags:["display_eviscerate"],Marker:1b,Invisible:1b,CustomName:{text:">EVISCERATE<",color:"dark_red",bold:1b},CustomNameVisible:1b}
execute at @a[scores={char=23},team=yellow] at @a[distance=..12,scores={HP=..5},team=purple] positioned ~ ~2.7 ~ run tp @e[distance=..1,tag=display_eviscerate] ~ ~ ~

execute as @e[tag=display_eviscerate] at @s positioned ~ ~-2.7 ~ unless entity @a[distance=..1,scores={HP=..5}] run kill @s

#scornful stab (formerly mark of Khaak Raff)

scoreboard players set @a[scores={char=23,spell_prow_2_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=23,spell_prow_2_1=1,CC_silence=1..}] spell_prow_2_1 240

execute at @a[scores={char=23,spell_prow_2_1=1,CC_silence=0}] run playsound minecraft:entity.iron_golem.attack master @a[distance=..12] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=23,spell_prow_2_1=1,CC_silence=0}] run playsound minecraft:item.armor.equip_leather master @a[distance=..12] ~ ~ ~ 1 1.8 1
execute at @a[scores={char=23,spell_prow_2_1=1,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:["prowler_tail","tail_things"],NoGravity:0b,equipment:{head:{id:"minecraft:granite_wall",count:1}}}
execute at @a[scores={char=23,spell_prow_2_1=1,CC_silence=0}] run summon minecraft:marker ~ ~ ~ {Tags:["prowler_tail_visual_core","tail_things"]}
tp @e[tag=prowler_tail,limit=1] @a[scores={char=23,spell_prow_2_1=1},limit=1]

execute at @e[tag=prowler_tail] run particle dust{color:[0.91,0.92,0.58],scale:1} ~ ~0.7 ~ 0.2 0.2 0.2 5 5 force

execute as @e[tag=prowler_tail] at @s run tp @s ^ ^ ^0.5

execute store result entity @e[tag=prowler_tail,limit=1] Rotation[1] float 1 run clear
execute as @e[tag=prowler_tail] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=prowler_tail] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s

#execute at @a[tag=prowler_tail] unless entity @e[tag=prowler_tail_visual_core] run summon marker ~ ~ ~ {Tags:["prowler_tail_visual_core"]}
execute as @e[tag=prowler_tail] at @s run tp @e[tag=prowler_tail_visual_core] ~ ~ ~ facing entity @p[scores={char=23}]

execute as @e[tag=prowler_tail_visual_core] at @s if entity @a[scores={char=23,spell_prow_2_1=2}] unless entity @e[tag=tail1] at @s positioned ^ ^ ^1 run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:["tail1","tail_visuals","tail_things"],Marker:1b,equipment:{head:{id:"minecraft:brown_terracotta",count:1}}}
execute as @e[tag=prowler_tail_visual_core] at @s if entity @a[scores={char=23,spell_prow_2_1=3}] unless entity @e[tag=tail2] at @s positioned ^ ^ ^2 run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:["tail2","tail_visuals","tail_things"],Marker:1b,equipment:{head:{id:"minecraft:brown_terracotta",count:1}}}
execute as @e[tag=prowler_tail_visual_core] at @s if entity @a[scores={char=23,spell_prow_2_1=4}] unless entity @e[tag=tail3] at @s positioned ^ ^ ^3 run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:["tail3","tail_visuals","tail_things"],Marker:1b,equipment:{head:{id:"minecraft:brown_terracotta",count:1}}}
execute as @e[tag=prowler_tail_visual_core] at @s if entity @a[scores={char=23,spell_prow_2_1=5}] unless entity @e[tag=tail4] at @s positioned ^ ^ ^4 run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:["tail4","tail_visuals","tail_things"],Marker:1b,equipment:{head:{id:"minecraft:brown_terracotta",count:1}}}

execute as @e[tag=prowler_tail_visual_core] at @s positioned ^ ^ ^4 run tp @e[tag=tail4] ~ ~ ~
execute as @e[tag=prowler_tail_visual_core] at @s positioned ^ ^ ^3 run tp @e[tag=tail3] ~ ~ ~
execute as @e[tag=prowler_tail_visual_core] at @s positioned ^ ^ ^2 run tp @e[tag=tail2] ~ ~ ~
execute as @e[tag=prowler_tail_visual_core] at @s positioned ^ ^ ^1 run tp @e[tag=tail1] ~ ~ ~

execute at @a[scores={char=23,spell_prow_2_1=15..20}] run kill @e[tag=tail_things]

execute if entity @a[scores={char=23,CC_silence=0},team=purple] at @e[tag=prowler_tail] if entity @p[distance=..2,team=yellow] run playsound minecraft:entity.bee.sting master @a[distance=..12] ~ ~ ~ 1 0.4 1
execute if entity @a[scores={char=23,CC_silence=0},team=purple] at @e[tag=prowler_tail] if entity @p[distance=..2,team=yellow] run effect give @p[distance=..2,team=yellow] minecraft:poison 4
execute if entity @a[scores={char=23,CC_silence=0},team=purple] at @e[tag=prowler_tail] if entity @p[distance=..2,team=yellow] run scoreboard players set @p[distance=..2,team=yellow] stab_timer 100
execute if entity @a[scores={char=23,CC_silence=0},team=purple] at @e[tag=prowler_tail] if entity @p[distance=..2,team=yellow] run scoreboard players set @p[distance=..2,team=yellow] detonatemark 1
execute if entity @a[scores={char=23,CC_silence=0},team=purple] at @e[tag=prowler_tail] if entity @p[distance=..2,team=yellow] run tag @p[distance=..2,team=yellow] add prowlermark
execute if entity @a[scores={char=23,CC_silence=0},team=purple] at @e[tag=prowler_tail] if entity @p[distance=..2,team=yellow] run kill @e[tag=tail_things]

execute if entity @a[scores={char=23,CC_silence=0},team=yellow] at @e[tag=prowler_tail] if entity @p[distance=..2,team=purple] run playsound minecraft:entity.bee.sting master @a[distance=..12] ~ ~ ~ 1 0.4 1
execute if entity @a[scores={char=23,CC_silence=0},team=yellow] at @e[tag=prowler_tail] if entity @p[distance=..2,team=purple] run effect give @p[distance=..2,team=purple] minecraft:poison 4
execute if entity @a[scores={char=23,CC_silence=0},team=yellow] at @e[tag=prowler_tail] if entity @p[distance=..2,team=purple] run scoreboard players set @p[distance=..2,team=purple] stab_timer 100
execute if entity @a[scores={char=23,CC_silence=0},team=yellow] at @e[tag=prowler_tail] if entity @p[distance=..2,team=purple] run scoreboard players set @p[distance=..2,team=purple] detonatemark 1
execute if entity @a[scores={char=23,CC_silence=0},team=yellow] at @e[tag=prowler_tail] if entity @p[distance=..2,team=purple] run tag @p[distance=..2,team=purple] add prowlermark
execute if entity @a[scores={char=23,CC_silence=0},team=yellow] at @e[tag=prowler_tail] if entity @p[distance=..2,team=purple] run kill @e[tag=tail_things]

scoreboard players remove @a[scores={stab_timer=1..}] stab_timer 1
scoreboard players set @a[scores={stab_timer=1..2}] detonatemark 0
tag @a[scores={stab_timer=1..2}] remove prowlermark

execute at @a[scores={char=23,universal_hit=20..}] run scoreboard players add @p[distance=..4,scores={detonatemark=1..3}] detonatemark 1

scoreboard players set @a[scores={detonatemark=4}] detonatemark 5
scoreboard players add @a[scores={detonatemark=5..}] detonatemark 1

execute at @a[scores={detonatemark=20..}] run particle minecraft:block{block_state:{Name:"minecraft:cactus"}} ~ ~0.6 ~ 0.6 0.8 0.6 1 20
execute at @a[scores={detonatemark=20..}] run playsound minecraft:entity.player.attack.sweep master @a[distance=..12] ~ ~ ~ 1 2 1
execute at @a[scores={detonatemark=20..}] run playsound minecraft:entity.bee.sting master @a[distance=..12] ~ ~ ~ 1 1.2 1
damage @p[scores={detonatemark=20..}] 6 generic by @p[scores={char=23}] from @p[scores={char=23}] 
scoreboard players set @a[scores={detonatemark=20..}] stab_timer 2
tag @a[scores={detonatemark=20..}] remove prowlermark
scoreboard players set @a[scores={detonatemark=20..}] detonatemark 0


execute at @a[tag=prowlermark] positioned ~ ~2.9 ~ unless entity @e[distance=..1,tag=display_khaakraff] run summon minecraft:armor_stand ~ ~ ~ {Tags:["display_khaakraff"],Marker:1b,Invisible:1b,CustomName:{text:"Stabbed",color:"gray",bold:1b},CustomNameVisible:1b}
execute at @a[tag=prowlermark] positioned ~ ~2.9 ~ run tp @e[distance=..1,tag=display_khaakraff] ~ ~ ~
execute as @e[tag=display_khaakraff] at @s positioned ~ ~-2.9 ~ unless entity @a[distance=..1,tag=prowlermark] run kill @s


#sand barrier

execute at @a[tag=sand_barrier,scores={char=23}] run particle dust{color:[0.91,0.92,0.58],scale:1} ~ ~ ~ 0.3 0.1 0.3 5 5 force

scoreboard players set @a[scores={char=23,universal_death=1..}] passive_prow 180
scoreboard players set @a[scores={char=23,universal_damagetaken=1..}] passive_prow 1
scoreboard players set @a[scores={char=23,universal_damagetaken_shield=1..}] passive_prow 1

scoreboard players add @a[scores={char=23,passive_prow=1..}] passive_prow 1
effect give @a[scores={char=23,passive_prow=199..}] minecraft:absorption infinite 5 true
tag @a[scores={char=23,passive_prow=199..}] add sand_barrier
scoreboard players set @a[scores={char=23,passive_prow=200..}] passive_prow 0

tag @a[tag=sand_barrier,scores={char=23,CC_stun=1..}] add sand_barrier_break
tag @a[tag=sand_barrier,scores={char=23,CC_root=1..}] add sand_barrier_break
tag @a[tag=sand_barrier,scores={char=23,CC_grounded=1..}] add sand_barrier_break
tag @a[tag=sand_barrier,scores={char=23,CC_knockup=1..}] add sand_barrier_break
tag @a[tag=sand_barrier,scores={char=23,universal_damagetaken_shield=1..}] add sand_barrier_break

execute at @a[scores={char=23},tag=sand_barrier_break] run playsound minecraft:block.gravel.break master @a[distance=..15] ~ ~ ~ 1 0.5 1
execute at @a[scores={char=23},tag=sand_barrier_break] run particle falling_dust{block_state:{Name:"minecraft:sandstone"}} ~ ~1 ~ 1 1 1 5 70 force
execute at @a[scores={char=23},tag=sand_barrier_break] run particle dust{color:[0.91,0.92,0.58],scale:1} ~ ~1 ~ 1 1 1 5 50 force
tag @a[scores={char=23},tag=sand_barrier_break] remove sand_barrier
scoreboard players set @a[scores={char=23},tag=sand_barrier_break] passive_prow 1

effect clear @a[scores={char=23},tag=sand_barrier_break] minecraft:absorption
effect clear @a[scores={char=23},tag=sand_barrier_break] minecraft:slowness
effect clear @a[scores={char=23},tag=sand_barrier_break] minecraft:weakness
effect clear @a[scores={char=23},tag=sand_barrier_break] minecraft:jump_boost

scoreboard players set @a[scores={char=23},tag=sand_barrier_break] CC_stun 0
scoreboard players set @a[scores={char=23},tag=sand_barrier_break] CC_root 0
scoreboard players set @a[scores={char=23},tag=sand_barrier_break] CC_grounded 0
scoreboard players set @a[scores={char=23},tag=sand_barrier_break] CC_knockup 0

tag @a remove sand_barrier_break




# prowler

scoreboard players add @a[scores={spell_prow_1=1..}] spell_prow_1_1 1
item replace entity @a[scores={char=23,spell_prow_1_1=240..}] hotbar.1 with minecraft:golden_carrot[minecraft:custom_name={bold:1b,color:"dark_aqua",text:"Eviscerate"},minecraft:enchantments={"minecraft:sharpness":1},minecraft:food={nutrition:0,saturation:0,can_always_eat:0b}] 1
scoreboard players set @a[scores={spell_prow_1_1=241..}] spell_prow_1 0
scoreboard players set @a[scores={spell_prow_1_1=241..}] spell_prow_1_1 0
scoreboard players set @a[scores={spell_prow_1_1=1}] spellCD1 240

scoreboard players add @a[scores={spell_prow_2=1..}] spell_prow_2_1 1
item replace entity @a[scores={char=23,spell_prow_2_1=260..}] hotbar.2 with minecraft:glistering_melon_slice[minecraft:custom_name={text:"Scornful Stab",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:sweeping_edge":1}] 1
scoreboard players set @a[scores={spell_prow_2_1=261..}] spell_prow_2 0
scoreboard players set @a[scores={spell_prow_2_1=261..}] spell_prow_2_1 0
scoreboard players set @a[scores={spell_prow_2_1=1}] spellCD2 260

execute as @a[scores={char=23}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:golden_sword",Slot:0b}]}] run clear @a[scores={char=23}] minecraft:golden_sword
item replace entity @a[scores={char=23}] hotbar.0 with minecraft:golden_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Claws"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.5d,operation:"add_multiplied_base",slot:"mainhand"}]] 1


execute as @a[scores={char=23,spell_prow_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:golden_carrot",Slot:1b}]}] run clear @a[scores={char=23}] minecraft:golden_carrot
item replace entity @a[scores={char=23,spell_prow_1=0}] hotbar.1 with minecraft:golden_carrot[minecraft:custom_name={text:"Eviscerate",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:sharpness":1},minecraft:food={nutrition:0,saturation:0,can_always_eat:0b}] 1

execute as @a[scores={char=23,spell_prow_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:glistering_melon_slice",Slot:2b}]}] run clear @a[scores={char=23}] minecraft:glistering_melon_slice
item replace entity @a[scores={char=23,spell_prow_2=0}] hotbar.2 with minecraft:glistering_melon_slice[minecraft:custom_name={text:"Scornful Stab",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:sweeping_edge":1}] 1

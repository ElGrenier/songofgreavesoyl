kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_sword",count:1}}]


#eviscerate

scoreboard players set @a[scores={char=23,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=23,s1_timer=1,CC_silence=1..}] s1_timer 220

execute at @a[scores={char=23,death_dash_reset=1..}] run kill @e[tag=prowler_dash]
execute at @a[scores={char=23,universal_death=1..}] run kill @e[tag=prowler_dash]
execute at @a[scores={char=23,CC_grounded=1..}] run kill @e[tag=prowler_dash]
execute at @a[scores={char=23,CC_root=1..}] run kill @e[tag=prowler_dash]
execute at @a[scores={char=23,CC_stun=1..}] run kill @e[tag=prowler_dash]
execute at @a[scores={char=23,CC_silence=1..}] run kill @e[tag=prowler_dash]


execute at @a[scores={char=23,s1_timer=2,CC_silence=0}] run playsound entity.player.attack.sweep master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=23,s1_timer=2,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["prowler_dash","entities_prowler"]}
tp @e[tag=prowler_dash,limit=1] @a[scores={char=23,s1_timer=2},limit=1]
execute at @a[scores={char=23,s1_timer=2},limit=1] run tp @e[tag=prowler_dash,limit=1] ~ ~0.5 ~

execute as @e[tag=prowler_dash] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=prowler_dash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=prowler_dash] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=prowler_dash] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=prowler_dash] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=prowler_dash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute as @e[tag=prowler_dash] at @s run tp @s ^ ^ ^1.5
execute at @e[tag=prowler_dash] run particle falling_dust{block_state:{Name:"minecraft:sandstone"}} ~ ~1 ~ 0.3 0.3 0.3 0.00001 3 normal
execute at @e[tag=prowler_dash] run particle sweep_attack ~ ~1 ~ 0.8 0.5 0.8 0.1 1 normal

tp @a[scores={char=23,s1_timer=2..9,death_dash_reset=0}] @e[tag=prowler_dash,limit=1]


execute at @a[scores={char=23,s1_timer=10}] run kill @e[tag=prowler_dash]
execute as @a[scores={char=23,s1_timer=10}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~

scoreboard players set @a[scores={char=23,universal_kill=1..,s1_timer=1..,CC_silence=0}] s1_timer 238
scoreboard players set @a[scores={char=23,universal_kill=1..,s1_timer=1..,CC_silence=0}] spellCD1 2


execute at @a[scores={char=23,s1_timer=2..10,CC_silence=0}] as @a[tag=valid_spell_target,distance=..2,scores={HP=..5}] unless score @s Team = @p[scores={char=23}] Team run tag @s add prowler_execute


damage @a[tag=prowler_execute,limit=1] 100 generic by @p[scores={char=23}] from @p[scores={char=23}]
tag @a remove prowler_execute

execute at @a[scores={char=23,s1_timer=2..10,CC_silence=0}] as @e[tag=valid_spell_target,distance=..2] unless score @s Team = @p[scores={char=23}] Team run effect give @s poison 3 2

execute at @a[scores={char=23}] as @a[tag=valid_spell_target,distance=..15,scores={HP=..5}] at @s unless score @s Team = @p[scores={char=23}] Team positioned ~ ~2.7 ~ unless entity @e[distance=..1,tag=display_eviscerate] run summon armor_stand ~ ~ ~ {Tags:["display_eviscerate","entities_prowler"],Marker:1b,Invisible:1b,CustomName:{text:">EVISCERATE<",color:"dark_red",bold:1b},CustomNameVisible:1b}
execute at @a[scores={char=23}] as @a[tag=valid_spell_target,distance=..15,scores={HP=..5}] at @s unless score @s Team = @p[scores={char=23}] Team positioned ~ ~2.7 ~ run tp @e[distance=..1,tag=display_eviscerate] ~ ~ ~
execute as @e[tag=display_eviscerate] at @s positioned ~ ~-2.7 ~ unless entity @a[distance=..1,scores={HP=..5}] run kill @s




#scornful stab (formerly mark of Khaak Raff)

scoreboard players set @a[scores={char=23,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=23,s2_timer=1,CC_silence=1..}] s2_timer 240

execute at @a[scores={char=23,s2_timer=1,CC_silence=0}] run playsound minecraft:entity.iron_golem.attack master @a[distance=..12] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=23,s2_timer=1,CC_silence=0}] run playsound minecraft:item.armor.equip_leather master @a[distance=..12] ~ ~ ~ 1 1.8 1
execute at @a[scores={char=23,s2_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["prowler_tail","projectile","tail_things"]}
execute at @a[scores={char=23,s2_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["prowler_tail_visual_core","tail_things"]}
scoreboard players operation @e[tag=projectile,tag=prowler_tail] Team = @p[scores={char=23}] Team
tp @e[tag=prowler_tail,limit=1] @a[scores={char=23,s2_timer=1},limit=1]
execute at @a[scores={char=23,s2_timer=1,CC_silence=0}] as @e[tag=prowler_tail,limit=1] at @s run tp @s ~ ~1 ~ 
execute at @e[tag=prowler_tail] run particle dust{color:[0.91,0.92,0.58],scale:1} ~ ~ ~ 0.2 0.2 0.2 5 5 force

execute as @e[tag=prowler_tail] at @s run tp @s ^ ^ ^0.5

execute store result entity @e[tag=prowler_tail,limit=1] Rotation[1] float 1 run clear
execute as @e[tag=prowler_tail] at @s unless block ^ ^ ^0.5 #minecraft:dash run kill @s
execute as @e[tag=prowler_tail] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute as @e[tag=prowler_tail] at @s run tp @e[tag=prowler_tail_visual_core] ~ ~ ~ facing entity @p[scores={char=23}]
execute store result entity @e[tag=prowler_tail_visual_core,limit=1] Rotation[1] float 1 run clear

execute as @e[tag=prowler_tail_visual_core] at @s unless entity @a[scores={char=23},distance=..0.5] unless entity @e[tag=tail0] at @s positioned ^ ^ ^ run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["tail0","tail_visuals","tail_things","entities_prowler"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.6f],scale:[0.5f,0.5f,1.2f]},block_state:{Name:"minecraft:granite_wall"}}
execute as @e[tag=prowler_tail_visual_core] at @s unless entity @a[scores={char=23},distance=..1] unless entity @e[tag=tail1] at @s positioned ^ ^ ^1 run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["tail1","tail_visuals","tail_things","entities_prowler"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3,-0.3,-0.5f],scale:[0.6f,0.6f,1f]},block_state:{Name:"minecraft:brown_terracotta"}}
execute as @e[tag=prowler_tail_visual_core] at @s unless entity @a[scores={char=23},distance=..2] unless entity @e[tag=tail2] at @s positioned ^ ^ ^2 run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["tail2","tail_visuals","tail_things","entities_prowler"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.5f],scale:[0.5f,0.5f,1f]},block_state:{Name:"minecraft:brown_terracotta"}}
execute as @e[tag=prowler_tail_visual_core] at @s unless entity @a[scores={char=23},distance=..3] unless entity @e[tag=tail3] at @s positioned ^ ^ ^3 run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["tail3","tail_visuals","tail_things","entities_prowler"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3,-0.3,-0.5f],scale:[0.6f,0.6f,1.f]},block_state:{Name:"minecraft:brown_terracotta"}}
execute as @e[tag=prowler_tail_visual_core] at @s unless entity @a[scores={char=23},distance=..4] unless entity @e[tag=tail4] at @s positioned ^ ^ ^4 run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["tail4","tail_visuals","tail_things","entities_prowler"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.5f],scale:[0.5f,0.5f,1f]},block_state:{Name:"minecraft:brown_terracotta"}}
execute as @e[tag=prowler_tail_visual_core] at @s unless entity @a[scores={char=23},distance=..5] unless entity @e[tag=tail5] at @s positioned ^ ^ ^5 run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["tail4","tail_visuals","tail_things","entities_prowler"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3,-0.3,-0.5f],scale:[0.6f,0.6f,1.f]},block_state:{Name:"minecraft:brown_terracotta"}}
execute as @e[tag=prowler_tail_visual_core] at @s unless entity @a[scores={char=23},distance=..4] unless entity @e[tag=tail6] at @s positioned ^ ^ ^6 run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["tail4","tail_visuals","tail_things","entities_prowler"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.5f],scale:[0.5f,0.5f,1f]},block_state:{Name:"minecraft:brown_terracotta"}}
execute as @e[tag=prowler_tail_visual_core] at @s unless entity @a[scores={char=23},distance=..5] unless entity @e[tag=tail7] at @s positioned ^ ^ ^7 run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["tail4","tail_visuals","tail_things","entities_prowler"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3,-0.3,-0.5f],scale:[0.6f,0.6f,1.f]},block_state:{Name:"minecraft:brown_terracotta"}}

execute as @e[tag=prowler_tail_visual_core] at @s positioned ^ ^ ^7 run tp @e[tag=tail7] ~ ~ ~
execute as @e[tag=prowler_tail_visual_core] at @s positioned ^ ^ ^6 run tp @e[tag=tail6] ~ ~ ~
execute as @e[tag=prowler_tail_visual_core] at @s positioned ^ ^ ^5 run tp @e[tag=tail5] ~ ~ ~
execute as @e[tag=prowler_tail_visual_core] at @s positioned ^ ^ ^4 run tp @e[tag=tail4] ~ ~ ~
execute as @e[tag=prowler_tail_visual_core] at @s positioned ^ ^ ^3 run tp @e[tag=tail3] ~ ~ ~
execute as @e[tag=prowler_tail_visual_core] at @s positioned ^ ^ ^2 run tp @e[tag=tail2] ~ ~ ~
execute as @e[tag=prowler_tail_visual_core] at @s positioned ^ ^ ^1 run tp @e[tag=tail1] ~ ~ ~
execute as @e[tag=prowler_tail_visual_core] at @s positioned ^ ^ ^ run tp @e[tag=tail0] ~ ~ ~

execute as @e[tag=tail_visuals] at @s run rotate @s facing entity @e[tag=prowler_tail_visual_core,limit=1]


execute at @a[scores={char=23,s2_timer=12..20}] run kill @e[tag=tail_things]

execute at @e[tag=prowler_tail] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=23}] Team run tag @s add prowler_marked

execute at @a[tag=prowler_marked] run kill @e[tag=prowler_tail]
execute at @a[tag=prowler_marked] run playsound entity.bee.sting master @a[distance=..12] ~ ~ ~ 1 0.4 1
effect give @a[tag=prowler_marked] poison 4
scoreboard players set @a[tag=prowler_marked] stab_timer 100
scoreboard players set @a[tag=prowler_marked] detonatemark 1
tag @a[tag=prowler_marked] add prowler_scorn_mark
tag @a remove prowler_marked


scoreboard players remove @a[scores={stab_timer=1..}] stab_timer 1
scoreboard players set @a[scores={stab_timer=1..2}] detonatemark 0
tag @a[scores={stab_timer=1..2}] remove prowler_scorn_mark


execute at @a[scores={char=23,universal_hit=20..}] as @a[advancements={chars:prowler_hit=true},tag=valid_spell_target,scores={detonatemark=1..3}] unless score @s Team = @p[scores={char=23}] Team run scoreboard players add @s detonatemark 1
advancement revoke @a[advancements={chars:prowler_hit=true}] only chars:prowler_hit

scoreboard players set @a[scores={detonatemark=4}] detonatemark 5
scoreboard players add @a[scores={detonatemark=5..}] detonatemark 1

execute at @a[scores={detonatemark=20..}] run particle block{block_state:{Name:"minecraft:cactus"}} ~ ~0.6 ~ 0.6 0.8 0.6 1 20
execute at @a[scores={detonatemark=20..}] run playsound entity.player.attack.sweep master @a[distance=..12] ~ ~ ~ 1 2 1
execute at @a[scores={detonatemark=20..}] run playsound entity.bee.sting master @a[distance=..12] ~ ~ ~ 1 1.2 1
damage @p[scores={detonatemark=20..}] 6 generic by @p[scores={char=23}] from @p[scores={char=23}] 
scoreboard players set @a[scores={detonatemark=20..}] stab_timer 2
tag @a[scores={detonatemark=20..}] remove prowler_scorn_mark
scoreboard players set @a[scores={detonatemark=20..}] detonatemark 0


execute at @a[tag=prowler_scorn_mark] positioned ~ ~2.9 ~ unless entity @e[distance=..1,tag=display_khaakraff] run summon minecraft:armor_stand ~ ~ ~ {Tags:["display_khaakraff","entities_prowler"],Marker:1b,Invisible:1b,CustomName:{text:"Stabbed",color:"gray",bold:1b},CustomNameVisible:1b}
execute at @a[tag=prowler_scorn_mark] positioned ~ ~2.9 ~ run tp @e[distance=..1,tag=display_khaakraff] ~ ~ ~
execute as @e[tag=display_khaakraff] at @s positioned ~ ~-2.9 ~ unless entity @a[distance=..1,tag=prowler_scorn_mark] run kill @s


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

effect clear @a[scores={char=23},tag=sand_barrier_break] absorption
effect clear @a[scores={char=23},tag=sand_barrier_break] slowness
effect clear @a[scores={char=23},tag=sand_barrier_break] weakness
effect clear @a[scores={char=23},tag=sand_barrier_break] jump_boost

scoreboard players set @a[scores={char=23},tag=sand_barrier_break] CC_stun 0
scoreboard players set @a[scores={char=23},tag=sand_barrier_break] CC_root 0
scoreboard players set @a[scores={char=23},tag=sand_barrier_break] CC_grounded 0
scoreboard players set @a[scores={char=23},tag=sand_barrier_break] CC_knockup 0

tag @a remove sand_barrier_break

title @a[scores={char=23,passive_prow=0}] actionbar [{text:"[",bold:1b,color:"gold",type:"text"},{text:" Sand Barrier is ready ",color:"yellow",bold:0b,type:"text"},{text:"]",bold:1b,color:"gold",type:"text"}]

title @a[scores={char=23,passive_prow=1..20}] actionbar [{text:"[",bold:1b,color:"gold",type:"text"},{text:"=",color:"gray",type:"text"},{text:"=========",color:"dark_gray",type:"text"},{text:"]",bold:1b,color:"gold",type:"text"}]
title @a[scores={char=23,passive_prow=21..40}] actionbar [{text:"[",bold:1b,color:"gold",type:"text"},{text:"==",color:"gray",type:"text"},{text:"========",color:"dark_gray",type:"text"},{text:"]",bold:1b,color:"gold",type:"text"}]
title @a[scores={char=23,passive_prow=41..60}] actionbar [{text:"[",bold:1b,color:"gold",type:"text"},{text:"===",color:"gray",type:"text"},{text:"=======",color:"dark_gray",type:"text"},{text:"]",bold:1b,color:"gold",type:"text"}]
title @a[scores={char=23,passive_prow=61..80}] actionbar [{text:"[",bold:1b,color:"gold",type:"text"},{text:"====",color:"gray",type:"text"},{text:"======",color:"dark_gray",type:"text"},{text:"]",bold:1b,color:"gold",type:"text"}]
title @a[scores={char=23,passive_prow=81..100}] actionbar [{text:"[",bold:1b,color:"gold",type:"text"},{text:"=====",color:"gray",type:"text"},{text:"=====",color:"dark_gray",type:"text"},{text:"]",bold:1b,color:"gold",type:"text"}]
title @a[scores={char=23,passive_prow=101..120}] actionbar [{text:"[",bold:1b,color:"gold",type:"text"},{text:"======",color:"gray",type:"text"},{text:"====",color:"dark_gray",type:"text"},{text:"]",bold:1b,color:"gold",type:"text"}]
title @a[scores={char=23,passive_prow=121..140}] actionbar [{text:"[",bold:1b,color:"gold",type:"text"},{text:"=======",color:"gray",type:"text"},{text:"===",color:"dark_gray",type:"text"},{text:"]",bold:1b,color:"gold",type:"text"}]
title @a[scores={char=23,passive_prow=141..160}] actionbar [{text:"[",bold:1b,color:"gold",type:"text"},{text:"========",color:"gray",type:"text"},{text:"==",color:"dark_gray",type:"text"},{text:"]",bold:1b,color:"gold",type:"text"}]
title @a[scores={char=23,passive_prow=161..180}] actionbar [{text:"[",bold:1b,color:"gold",type:"text"},{text:"=========",color:"gray",type:"text"},{text:"=",color:"dark_gray",type:"text"},{text:"]",bold:1b,color:"gold",type:"text"}]
title @a[scores={char=23,passive_prow=181..200}] actionbar [{text:"[",bold:1b,color:"gold",type:"text"},{text:"==========",color:"gray",type:"text"},{text:"",color:"dark_gray",type:"text"},{text:"]",bold:1b,color:"gold",type:"text"}]



# prowler

scoreboard players set @a[scores={char=23}] MaxHP 16

scoreboard players set @a[scores={s1_timer=1,char=23}] spellCD1 240
scoreboard players add @a[scores={s1_timer=1..,char=23}] s1_timer 1
scoreboard players set @a[scores={s1_timer=241..,char=23}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=23}] spellCD2 260
scoreboard players add @a[scores={s2_timer=1..,char=23}] s2_timer 1
scoreboard players set @a[scores={s2_timer=261..,char=23}] s2_timer 0

execute as @a[scores={char=23}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:golden_sword",Slot:0b}]}] run clear @a[scores={char=23}] golden_sword
item replace entity @a[scores={char=23}] hotbar.0 with golden_sword[custom_data={prowler:1},minecraft:custom_name={bold:1b,color:"gray",text:"Claws"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.5d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=23,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=23}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=23,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:golden_carrot",minecraft:custom_name={text:"Eviscerate",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=23,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=23}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=23,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:glistering_melon_slice",minecraft:custom_name={text:"Scornful Stab",color:"dark_aqua",bold:1b}] 1
